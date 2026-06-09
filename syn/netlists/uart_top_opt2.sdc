###################################################################

# Created by write_sdc on Tue Jun  2 20:06:33 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions ss0p75v125c -library saed32rvt_ss0p75v125c
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
wb_clk_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
wb_rst_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_adr_i[4]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_adr_i[3]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_adr_i[2]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_adr_i[1]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_adr_i[0]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[31]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[30]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[29]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[28]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[27]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[26]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[25]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[24]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[23]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[22]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[21]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[20]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[19]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[18]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[17]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[16]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[15]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[14]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[13]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[12]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[11]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[10]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[9]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[8]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[7]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[6]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[5]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[4]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[3]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[2]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[1]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_dat_i[0]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
wb_we_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
wb_stb_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
wb_cyc_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_sel_i[3]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_sel_i[2]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_sel_i[1]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
{wb_sel_i[0]}]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
srx_pad_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
cts_pad_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
dsr_pad_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
ri_pad_i]
set_driving_cell -lib_cell INVX1_RVT -library saed32rvt_ss0p75v125c [get_ports \
dcd_pad_i]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[31]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[30]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[29]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[28]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[27]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[26]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[25]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[24]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[23]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[22]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[21]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[20]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[19]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[18]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[17]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[16]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[15]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[14]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[13]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[12]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[11]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[10]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[9]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[8]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[7]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[6]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[5]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[4]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[3]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[2]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[1]}]
set_load -pin_load 0.621474 [get_ports {wb_dat_o[0]}]
set_load -pin_load 0.621474 [get_ports wb_ack_o]
set_load -pin_load 0.621474 [get_ports int_o]
set_load -pin_load 0.621474 [get_ports stx_pad_o]
set_load -pin_load 0.621474 [get_ports rts_pad_o]
set_load -pin_load 0.621474 [get_ports dtr_pad_o]
create_clock [get_ports wb_clk_i]  -name wb_clk  -period 9.01562  -waveform {0 4.50781}
set_clock_uncertainty 0.15  [get_clocks wb_clk]
set_clock_transition -max -rise 0.1 [get_clocks wb_clk]
set_clock_transition -max -fall 0.1 [get_clocks wb_clk]
set_clock_transition -min -rise 0.1 [get_clocks wb_clk]
set_clock_transition -min -fall 0.1 [get_clocks wb_clk]
