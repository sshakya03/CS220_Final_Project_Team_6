# =============================================================================
# CS220 Spring 2026 – Team 6
# UART 16550 PrimeTime PX (PTPX) Power Analysis Script
#
# USAGE (from ptpx/ directory on the school server):
#   pt_shell -f run_ptpx.tcl | tee reports/ptpx_run.log
#
# PREREQUISITES
# -------------
#   1. Synthesis must have been run first (syn/run_synth.tcl).
#      This script reads the gate-level netlist and SDF produced by DC.
#   2. A VCD activity file must exist at ptpx/activity/uart_activity.vcd.
#      Generate it from RTL simulation by adding $dumpfile/$dumpvars to the
#      testbench (see instructions below).
#
# GENERATING THE VCD ACTIVITY FILE
# ---------------------------------
#   Add the following to uart_cs220_testbench.v initial block:
#
#     $dumpfile("../ptpx/activity/uart_activity.vcd");
#     $dumpvars(0, uart_cs220_testbench);
#
#   Then re-run:   bash sim/run_iverilog.sh
#   The VCD will capture toggle activity over the full 20-testcase sequence,
#   which represents a representative real workload (mixed TX/RX, config
#   writes, FIFO fills, parity-checked transfers).
#
# METHODOLOGY
# -----------
#   - Power = dynamic switching power + static leakage power
#   - Activity is sourced from the RTL VCD, which covers all 20 testcases
#     (~3 ms simulated time at 625 kbaud, representative workload)
#   - The netlist SDC from synthesis is used for timing constraints
#   - Three VT flavors (RVT/LVT/HVT) are provided; PTPX uses the ones
#     present in the netlist
# =============================================================================

# ---------------------------------------------------------------------------
# 0. Paths – adjust to match your school-server installation
# ---------------------------------------------------------------------------
set LIB_PATH   "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm"
set LIB_PATH_L "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_lvt/db_nldm"
set LIB_PATH_H "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_hvt/db_nldm"

set DESIGN_NAME "uart_top"
set NET_DIR     "../syn/netlists"
set RPT_DIR     "./reports"
set ACT_DIR     "./activity"

file mkdir $RPT_DIR
file mkdir $ACT_DIR

# ---------------------------------------------------------------------------
# 1. Library setup (same corners as synthesis)
# ---------------------------------------------------------------------------
set_app_var sh_enable_page_mode false

set_app_var target_library [list \
    "${LIB_PATH}/saed32rvt_ss0p75v125c.db"  \
    "${LIB_PATH_L}/saed32lvt_ss0p75v125c.db"\
    "${LIB_PATH_H}/saed32hvt_ss0p75v125c.db"\
]

set_app_var link_library "* $target_library"

# ---------------------------------------------------------------------------
# 2. Read gate-level netlist
# ---------------------------------------------------------------------------
read_verilog ${NET_DIR}/uart_top_netlist.v
current_design $DESIGN_NAME
link_design

# ---------------------------------------------------------------------------
# 3. Apply timing constraints from synthesis SDC
# ---------------------------------------------------------------------------
read_sdc ${NET_DIR}/uart_top.sdc

# ---------------------------------------------------------------------------
# 4. Back-annotate SDF (for accurate cell delays in power calc)
# ---------------------------------------------------------------------------
read_sdf -load_delay cell ${NET_DIR}/uart_top.sdf

# Propagate clocks and check timing
check_timing
update_timing -full

# ---------------------------------------------------------------------------
# 5. Power analysis
# ---------------------------------------------------------------------------

# --- 5a. Set operating conditions (worst-case for max power bound) ---
set_operating_conditions -library saed32rvt_ss0p75v125c "ss0p75v125c"

# --- 5b. Read VCD toggle activity ---
# The VCD captures testbench activity strip-pathed to the DUT instance.
# If the VCD was generated from uart_cs220_testbench, the DUT hierarchy
# is: uart_cs220_testbench/dut/...
set_app_var power_enable_analysis true

set VCD_FILE "${ACT_DIR}/uart_activity.vcd"

if {[file exists $VCD_FILE]} {
    puts "INFO: Reading activity from VCD: ${VCD_FILE}"
    read_vcd \
        -strip_path "uart_cs220_testbench/dut" \
        ${VCD_FILE}
} else {
    puts "WARNING: VCD file not found: ${VCD_FILE}"
    puts "WARNING: Falling back to default toggle-rate estimation (0.2)."
    set_switching_activity -static_probability 0.5 -toggle_rate 0.2 -base_clock wb_clk
}

# --- 5c. Update power ---
update_power

# ---------------------------------------------------------------------------
# 6. Reports
# ---------------------------------------------------------------------------

# Average power (representative workload)
report_power -hierarchy \
    > ${RPT_DIR}/power_avg.rpt

# Per-cell power breakdown
report_power -cell \
    -significant_digits 4 \
    > ${RPT_DIR}/power_cell.rpt

# Global totals
report_power -nosplit \
    > ${RPT_DIR}/power_total.rpt

# Optional: estimate peak power by asserting maximum toggle on all inputs
# Uncomment to generate peak power estimate:
# set_switching_activity -static_probability 0.5 -toggle_rate 1.0 -base_clock wb_clk
# update_power
# report_power -nosplit > ${RPT_DIR}/power_peak.rpt
# puts "\n[INFO] Peak power report: ${RPT_DIR}/power_peak.rpt"

# ---------------------------------------------------------------------------
# 7. Summary to console
# ---------------------------------------------------------------------------
report_power -nosplit

puts "INFO: ====================================================="
puts "INFO:  PTPX Power Analysis Complete"
puts "INFO:  Reports written to: ${RPT_DIR}/"
puts "INFO: ====================================================="

exit

