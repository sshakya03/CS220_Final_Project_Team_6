# =============================================================================
# UART 16550 Synthesis
# UART 16550 Design Compiler Synthesis Script
#
# USAGE (from the syn/ directory on the school server):
#   dc_shell -f run_synth.tcl | tee reports/dc_run.log
#
# FLOW SUMMARY
# ------------
#   1. Set up SAED32 worst-case corner libraries (ss0p75v125c)
#   2. Read and elaborate RTL (Verilog)
#   3. Apply design constraints (clock, I/O)
#   4. Compile with compile_ultra (top-down)
#   5. Binary-search for maximum frequency (no negative slack)
#   6. Write out final netlist, SDF, and reports
#
# WORST-CASE CORNERS (as required by project spec)
#   saed32rvt_ss0p75v125c.db
#   saed32lvt_ss0p75v125c.db
#   saed32hvt_ss0p75v125c.db
# =============================================================================

# ---------------------------------------------------------------------------
# 0. Environment – adjust LIB_PATH to point to your SAED32 installation
# ---------------------------------------------------------------------------
set LIB_PATH   "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm"
set LIB_PATH_L "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_lvt/db_nldm"
set LIB_PATH_H "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_hvt/db_nldm"

set DESIGN_NAME "uart_top"
set RTL_DIR     "../rtl"
set RPT_DIR     "./reports"
set NET_DIR     "./netlists"

file mkdir $RPT_DIR
file mkdir $NET_DIR

# ---------------------------------------------------------------------------
# 1. Library setup
#    All three VT flavors are provided so DC can choose the best cell
#    for each path while meeting worst-case timing.
# ---------------------------------------------------------------------------
# Fallback: use generic RVT + synthetic library
set_app_var target_library [list \
    "${LIB_PATH}/saed32rvt_ss0p75v125c.db" \
    "${LIB_PATH_L}/saed32lvt_ss0p75v125c.db" \
    "${LIB_PATH_H}/saed32hvt_ss0p75v125c.db" \
]

set_app_var link_library   "* $target_library dw_foundation.sldb"
set_app_var synthetic_library "dw_foundation.sldb"

# ---------------------------------------------------------------------------
# 2. Read RTL
#    Include all RTL source files.  uart_defines.v is automatically
#    pulled in via `include statements in each module.
# ---------------------------------------------------------------------------
define_design_lib WORK -path "./work"

analyze -format verilog -lib WORK [list \
    ${RTL_DIR}/timescale.v       \
    ${RTL_DIR}/uart_defines.v    \
    ${RTL_DIR}/raminfr.v         \
    ${RTL_DIR}/uart_sync_flops.v \
    ${RTL_DIR}/uart_tfifo.v      \
    ${RTL_DIR}/uart_rfifo.v      \
    ${RTL_DIR}/uart_transmitter.v\
    ${RTL_DIR}/uart_receiver.v   \
    ${RTL_DIR}/uart_regs.v       \
    ${RTL_DIR}/uart_debug_if.v   \
    ${RTL_DIR}/uart_wb.v         \
    ${RTL_DIR}/uart_top.v        \
]

elaborate $DESIGN_NAME -lib WORK
current_design $DESIGN_NAME
link

check_design > ${RPT_DIR}/check_design.rpt

# ---------------------------------------------------------------------------
# 3. Design constraints
# ---------------------------------------------------------------------------

# --- Clock ---
# Start with a 10 ns clock (100 MHz) as the first attempt.
# The frequency search loop below will tighten this until slack < 0.
set CLK_PERIOD 10.0    ;# nanoseconds

create_clock -period $CLK_PERIOD -name wb_clk [get_ports wb_clk_i]
set_clock_uncertainty 0.15 [get_clocks wb_clk]
set_clock_transition  0.10 [get_clocks wb_clk]

# --- I/O delays ---
# Assume inputs arrive 20% of clock period after launch edge,
# and outputs must be captured with 20% setup margin.
set IO_DELAY [expr {$CLK_PERIOD * 0.20}]
set_input_delay  $IO_DELAY -clock wb_clk [remove_from_collection [all_inputs]  [get_ports wb_clk_i]]
set_output_delay $IO_DELAY -clock wb_clk [all_outputs]

# --- Drive / load ---
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [all_inputs]
set_load [load_of saed32rvt_ss0p75v125c/INVX1_RVT/A] [all_outputs]

# --- Operating conditions ---
set_operating_conditions -library saed32rvt_ss0p75v125c "ss0p75v125c"

# --- Dont-touch / false paths (optional) ---
# set_false_path -from [get_ports wb_rst_i]  ;# async reset

# ---------------------------------------------------------------------------
# 4. Compile (first pass with initial frequency)
# ---------------------------------------------------------------------------
puts "INFO: Compiling at ${CLK_PERIOD} ns ([expr {1000.0/$CLK_PERIOD}] MHz)..."

compile_ultra -no_autoungroup

# ---------------------------------------------------------------------------
# 5. Maximum-frequency binary search
#    Tighten the clock until the design fails timing (WNS < 0),
#    then back off by one step.  The last frequency with WNS >= 0 is Fmax.
#
#    Strategy:
#      - Start at 100 MHz (10 ns), step = 1 ns
#      - Binary search between [current - step] and [current] once failure found
# ---------------------------------------------------------------------------
proc get_wns {} {
    set paths [get_timing_paths -delay_type max -max_paths 1]
    if {$paths == ""} {
        return 0
    }
    set slack [get_attribute $paths slack]
    return $slack
}

set BEST_PERIOD $CLK_PERIOD
set BEST_WNS    [get_wns]

# Tighten in 0.5 ns steps until timing fails
for {set step 0.5} {$step >= 0.01} {set step [expr {$step / 2.0}]} {
    set TRY [expr {$BEST_PERIOD - $step}]
    if {$TRY < 1.0} { break }

    remove_clock [get_clocks wb_clk]
    create_clock -period $TRY -name wb_clk [get_ports wb_clk_i]
    set_clock_uncertainty 0.15 [get_clocks wb_clk]   ;# was present
    set_clock_transition  0.10 [get_clocks wb_clk]   ;# ADD THIS

    compile_ultra -incremental

    set wns [get_wns]
    puts "INFO: Trying period=${TRY}ns → WNS=${wns}ns"

    if {$wns >= 0} {
        set BEST_PERIOD $TRY
        set BEST_WNS    $wns
        puts "INFO: Timing CLOSED at ${TRY}ns (WNS=${wns}ns)"
    } else {
        puts "INFO: Timing FAILED at ${TRY}ns — keeping ${BEST_PERIOD}ns"
        remove_clock [get_clocks wb_clk]
        create_clock -period $BEST_PERIOD -name wb_clk [get_ports wb_clk_i]
        set_clock_uncertainty 0.15 [get_clocks wb_clk]   ;# ADD THIS
        set_clock_transition  0.10 [get_clocks wb_clk]   ;# ADD THIS
        compile_ultra -incremental
    }
}

set FMAX_MHZ [expr {1000.0 / $BEST_PERIOD}]
puts "INFO: ====================================================="
puts "INFO:  Maximum Frequency: ${FMAX_MHZ} MHz (period = ${BEST_PERIOD} ns)"
puts "INFO:  Worst Negative Slack: ${BEST_WNS} ns"
puts "INFO: ====================================================="

# ---------------------------------------------------------------------------
# 6. Reports
# ---------------------------------------------------------------------------
report_timing -path_type full -delay_type max -max_paths 10 \
    -significant_digits 3 \
    > ${RPT_DIR}/timing_setup.rpt

report_timing -path_type full -delay_type min -max_paths 10 \
    -significant_digits 3 \
    > ${RPT_DIR}/timing_hold.rpt

report_area -hierarchy \
    > ${RPT_DIR}/area.rpt

report_power -hierarchy -analysis_effort high \
    > ${RPT_DIR}/power_dc.rpt

report_qor \
    > ${RPT_DIR}/qor.rpt

report_constraint -all_violators \
    > ${RPT_DIR}/constraint_violations.rpt


change_names -rules verilog -hierarchy


# ---------------------------------------------------------------------------
# 7. Write netlist and SDF
# ---------------------------------------------------------------------------
write -format verilog -hierarchy -output ${NET_DIR}/uart_top_netlist.v

write_sdf -version 2.1 \
    -context verilog \
    -load_delay cell \
    ${NET_DIR}/uart_top.sdf

write_sdc ${NET_DIR}/uart_top.sdc

puts "INFO: Synthesis complete."
puts "INFO:   Netlist : ${NET_DIR}/uart_top_netlist.v"
puts "INFO:   Reports : ${RPT_DIR}/"
puts "INFO:   Fmax    : ${FMAX_MHZ} MHz"

exit

