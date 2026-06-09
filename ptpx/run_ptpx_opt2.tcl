# Opt 2 (8-deep FIFO) PrimeTime PX
# Usage: pt_shell -f run_ptpx_opt2.tcl | tee reports/ptpx_opt2_run.log

set LIB_PATH   "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm"
set LIB_PATH_L "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_lvt/db_nldm"
set LIB_PATH_H "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_hvt/db_nldm"

set DESIGN_NAME "uart_top_opt2"
set NET_DIR     "../syn/netlists"
set RPT_DIR     "./reports"
set ACT_DIR     "./activity"

file mkdir $RPT_DIR
file mkdir $ACT_DIR

set_app_var sh_enable_page_mode false
set_app_var target_library [list \
    "${LIB_PATH}/saed32rvt_ss0p75v125c.db"   \
    "${LIB_PATH_L}/saed32lvt_ss0p75v125c.db" \
    "${LIB_PATH_H}/saed32hvt_ss0p75v125c.db" \
]
set_app_var link_library "* $target_library"

read_verilog ${NET_DIR}/uart_top_opt2_netlist.v
current_design $DESIGN_NAME
link_design

read_sdc ${NET_DIR}/uart_top_opt2.sdc
read_sdf -load_delay cell ${NET_DIR}/uart_top_opt2.sdf
check_timing
update_timing -full

set_operating_conditions -library saed32rvt_ss0p75v125c "ss0p75v125c"
set_app_var power_enable_analysis true

set VCD_FILE "${ACT_DIR}/uart_opt2.vcd"
if {[file exists $VCD_FILE]} {
    puts "INFO: Reading Opt2 activity from: ${VCD_FILE}"
    read_vcd -strip_path "uart_cs220_opt2_tb/dut" ${VCD_FILE}
} else {
    puts "WARNING: VCD not found — using default toggle rate."
    set_switching_activity -static_probability 0.5 -toggle_rate 0.2 -base_clock wb_clk
}

update_power

report_power -hierarchy          > ${RPT_DIR}/power_avg_opt2.rpt
report_power -cell -significant_digits 4 > ${RPT_DIR}/power_cell_opt2.rpt
report_power -nosplit            > ${RPT_DIR}/power_total_opt2.rpt
report_power -nosplit

puts "INFO: Opt2 PTPX complete. Reports: ${RPT_DIR}/"
exit
