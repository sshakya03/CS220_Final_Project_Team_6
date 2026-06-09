# Opt 3 (pipelined baud enable) synthesis
# Usage: dc_shell -f run_synth_opt3.tcl | tee reports/dc_opt3_run.log

set LIB_PATH   "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm"
set LIB_PATH_L "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_lvt/db_nldm"
set LIB_PATH_H "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_hvt/db_nldm"

set DESIGN_NAME "uart_top_pipe"
set RTL_DIR     "../rtl"
set RPT_DIR     "./reports"
set NET_DIR     "./netlists"

file mkdir $RPT_DIR
file mkdir $NET_DIR

set_app_var target_library [list \
    "${LIB_PATH}/saed32rvt_ss0p75v125c.db" \
    "${LIB_PATH_L}/saed32lvt_ss0p75v125c.db" \
    "${LIB_PATH_H}/saed32hvt_ss0p75v125c.db" \
]
set_app_var link_library   "* $target_library dw_foundation.sldb"
set_app_var synthetic_library "dw_foundation.sldb"

define_design_lib WORK -path "./work_opt3"

# RTL file list for Opt 3: pipelined regs + pipe top; all other files unchanged
analyze -format verilog -lib WORK [list \
    ${RTL_DIR}/timescale.v        \
    ${RTL_DIR}/uart_defines.v     \
    ${RTL_DIR}/raminfr.v          \
    ${RTL_DIR}/uart_sync_flops.v  \
    ${RTL_DIR}/uart_tfifo.v       \
    ${RTL_DIR}/uart_rfifo.v       \
    ${RTL_DIR}/uart_transmitter.v \
    ${RTL_DIR}/uart_receiver.v    \
    ${RTL_DIR}/uart_regs_pipe.v   \
    ${RTL_DIR}/uart_debug_if.v    \
    ${RTL_DIR}/uart_wb.v          \
    ${RTL_DIR}/uart_top_pipe.v    \
]

elaborate $DESIGN_NAME -lib WORK
current_design $DESIGN_NAME
link

check_design > ${RPT_DIR}/check_design_opt3.rpt

set CLK_PERIOD 10.0
create_clock -period $CLK_PERIOD -name wb_clk [get_ports wb_clk_i]
set_clock_uncertainty 0.15 [get_clocks wb_clk]
set_clock_transition  0.10 [get_clocks wb_clk]

set IO_DELAY [expr {$CLK_PERIOD * 0.20}]
set_input_delay  $IO_DELAY -clock wb_clk [remove_from_collection [all_inputs] [get_ports wb_clk_i]]
set_output_delay $IO_DELAY -clock wb_clk [all_outputs]

set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [all_inputs]
set_load [load_of saed32rvt_ss0p75v125c/INVX1_RVT/A] [all_outputs]
set_operating_conditions -library saed32rvt_ss0p75v125c "ss0p75v125c"

puts "INFO: Compiling Opt3 (pipelined enable) at ${CLK_PERIOD}ns..."
compile_ultra -no_autoungroup

proc get_wns {} {
    set paths [get_timing_paths -delay_type max -max_paths 1]
    if {$paths == ""} { return 0 }
    return [get_attribute $paths slack]
}

set BEST_PERIOD $CLK_PERIOD
set BEST_WNS    [get_wns]

for {set step 0.5} {$step >= 0.01} {set step [expr {$step / 2.0}]} {
    set TRY [expr {$BEST_PERIOD - $step}]
    if {$TRY < 1.0} { break }
    remove_clock [get_clocks wb_clk]
    create_clock -period $TRY -name wb_clk [get_ports wb_clk_i]
    set_clock_uncertainty 0.15 [get_clocks wb_clk]
    set_clock_transition  0.10 [get_clocks wb_clk]
    compile_ultra -incremental
    set wns [get_wns]
    puts "INFO: Trying period=${TRY}ns → WNS=${wns}ns"
    if {$wns >= 0} {
        set BEST_PERIOD $TRY; set BEST_WNS $wns
        puts "INFO: Timing CLOSED at ${TRY}ns"
    } else {
        puts "INFO: Timing FAILED at ${TRY}ns — keeping ${BEST_PERIOD}ns"
        remove_clock [get_clocks wb_clk]
        create_clock -period $BEST_PERIOD -name wb_clk [get_ports wb_clk_i]
        set_clock_uncertainty 0.15 [get_clocks wb_clk]
        set_clock_transition  0.10 [get_clocks wb_clk]
        compile_ultra -incremental
    }
}

set FMAX_MHZ [expr {1000.0 / $BEST_PERIOD}]
puts "INFO: Opt3 Fmax = ${FMAX_MHZ} MHz (period = ${BEST_PERIOD} ns, WNS = ${BEST_WNS} ns)"

report_timing  -path_type full -delay_type max -max_paths 10 -significant_digits 3 \
    > ${RPT_DIR}/timing_setup_opt3.rpt
report_timing  -path_type full -delay_type min -max_paths 10 -significant_digits 3 \
    > ${RPT_DIR}/timing_hold_opt3.rpt
report_area    -hierarchy   > ${RPT_DIR}/area_opt3.rpt
report_power   -hierarchy -analysis_effort high > ${RPT_DIR}/power_dc_opt3.rpt
report_qor                  > ${RPT_DIR}/qor_opt3.rpt
report_constraint -all_violators > ${RPT_DIR}/constraint_violations_opt3.rpt

change_names -rules verilog -hierarchy

write -format verilog -hierarchy -output ${NET_DIR}/uart_top_pipe_netlist.v
write_sdf -version 2.1 -context verilog -load_delay cell ${NET_DIR}/uart_top_pipe.sdf
write_sdc ${NET_DIR}/uart_top_pipe.sdc

puts "INFO: Opt3 synthesis complete. Netlist: ${NET_DIR}/uart_top_pipe_netlist.v"
exit
