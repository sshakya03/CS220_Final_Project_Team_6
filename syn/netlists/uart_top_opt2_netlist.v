/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09-SP5-4
// Date      : Tue Jun  2 20:06:33 2026
/////////////////////////////////////////////////////////////


module uart_wb ( clk, wb_rst_i, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, 
        wb_adr_i, wb_adr_int, wb_dat_i, wb_dat_o, wb_dat8_i, wb_dat8_o, 
        wb_dat32_o, wb_sel_i, we_o, re_o_BAR );
  input [4:0] wb_adr_i;
  output [4:0] wb_adr_int;
  input [31:0] wb_dat_i;
  output [31:0] wb_dat_o;
  output [7:0] wb_dat8_i;
  input [7:0] wb_dat8_o;
  input [31:0] wb_dat32_o;
  input [3:0] wb_sel_i;
  input clk, wb_rst_i, wb_we_i, wb_stb_i, wb_cyc_i;
  output wb_ack_o, we_o, re_o_BAR;
  wire   wbstate_1_, wre, N27, wb_we_is, n70, n72, n74, n78, n82, n84, n86,
         n88, n90, n92, n94, n96, n98, n100, n102, n106, n108, n110, n112,
         n118, n122, n124, n128, n130, n179, n180, n2, n3, n4, n5, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n21, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n54, n55, n56, n57,
         n59, n60, n66, n81, n83, n85, n87, n101, n103, n115, n116, n117, n119,
         n127, n132, n133, n134, n140, n143, n144, n146, n147, n148;
  wire   [31:0] wb_dat_is;
  wire   [3:0] wb_sel_is;
  tri   clk;
  tri   wb_rst_i;
  tri   [7:0] wb_dat8_i;

  DFFARX1_HVT wb_dat_is_reg_31_ ( .D(wb_dat_i[31]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[31]) );
  DFFARX1_HVT wb_dat_is_reg_30_ ( .D(wb_dat_i[30]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[30]) );
  DFFARX1_HVT wb_dat_is_reg_29_ ( .D(wb_dat_i[29]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[29]) );
  DFFARX1_HVT wb_dat_is_reg_28_ ( .D(wb_dat_i[28]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[28]) );
  DFFARX1_HVT wb_dat_is_reg_27_ ( .D(wb_dat_i[27]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[27]) );
  DFFARX1_HVT wb_dat_is_reg_26_ ( .D(wb_dat_i[26]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[26]) );
  DFFARX1_HVT wb_dat_is_reg_25_ ( .D(wb_dat_i[25]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[25]) );
  DFFARX1_HVT wb_dat_is_reg_24_ ( .D(wb_dat_i[24]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[24]) );
  DFFARX1_HVT wb_dat_is_reg_23_ ( .D(wb_dat_i[23]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[23]) );
  DFFARX1_HVT wb_dat_is_reg_22_ ( .D(wb_dat_i[22]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[22]) );
  DFFARX1_HVT wb_dat_is_reg_21_ ( .D(wb_dat_i[21]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[21]) );
  DFFARX1_HVT wb_dat_is_reg_20_ ( .D(wb_dat_i[20]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[20]) );
  DFFARX1_HVT wb_dat_is_reg_19_ ( .D(wb_dat_i[19]), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_is[19]) );
  DFFARX1_HVT wb_dat_is_reg_18_ ( .D(wb_dat_i[18]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[18]) );
  DFFARX1_HVT wb_dat_is_reg_17_ ( .D(wb_dat_i[17]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[17]) );
  DFFARX1_HVT wb_dat_is_reg_16_ ( .D(wb_dat_i[16]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[16]) );
  DFFARX1_HVT wb_dat_is_reg_15_ ( .D(wb_dat_i[15]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[15]) );
  DFFARX1_HVT wb_dat_is_reg_14_ ( .D(wb_dat_i[14]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[14]) );
  DFFARX1_HVT wb_dat_is_reg_13_ ( .D(wb_dat_i[13]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[13]) );
  DFFARX1_HVT wb_dat_is_reg_12_ ( .D(wb_dat_i[12]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[12]) );
  DFFARX1_HVT wb_dat_is_reg_11_ ( .D(wb_dat_i[11]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[11]) );
  DFFARX1_HVT wb_dat_is_reg_10_ ( .D(wb_dat_i[10]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[10]) );
  DFFARX1_HVT wb_dat_is_reg_9_ ( .D(wb_dat_i[9]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[9]) );
  DFFARX1_HVT wb_dat_is_reg_8_ ( .D(wb_dat_i[8]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[8]) );
  DFFARX1_HVT wb_dat_is_reg_7_ ( .D(wb_dat_i[7]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[7]) );
  DFFARX1_HVT wb_dat_is_reg_6_ ( .D(wb_dat_i[6]), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_is[6]) );
  DFFARX1_HVT wb_dat_is_reg_2_ ( .D(wb_dat_i[2]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[2]) );
  DFFARX1_HVT wb_dat_is_reg_1_ ( .D(wb_dat_i[1]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[1]) );
  DFFARX1_HVT wb_dat_is_reg_0_ ( .D(wb_dat_i[0]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[0]) );
  DFFARX1_HVT wb_sel_is_reg_3_ ( .D(wb_sel_i[3]), .CLK(clk), .RSTB(n10), .Q(
        wb_sel_is[3]), .QN(n56) );
  DFFARX1_HVT wb_sel_is_reg_2_ ( .D(wb_sel_i[2]), .CLK(clk), .RSTB(n10), .Q(
        wb_sel_is[2]) );
  DFFARX1_HVT wb_sel_is_reg_1_ ( .D(wb_sel_i[1]), .CLK(clk), .RSTB(n10), .Q(
        wb_sel_is[1]), .QN(n51) );
  DFFARX1_HVT wb_sel_is_reg_0_ ( .D(wb_sel_i[0]), .CLK(clk), .RSTB(n10), .Q(
        wb_sel_is[0]), .QN(n132) );
  DFFARX1_HVT wb_adr_is_reg_4_ ( .D(wb_adr_i[4]), .CLK(clk), .RSTB(n10), .Q(
        wb_adr_int[4]) );
  DFFARX1_HVT wb_adr_is_reg_3_ ( .D(wb_adr_i[3]), .CLK(clk), .RSTB(n10), .Q(
        wb_adr_int[3]) );
  DFFARX1_HVT wb_adr_is_reg_2_ ( .D(wb_adr_i[2]), .CLK(clk), .RSTB(n10), .Q(
        wb_adr_int[2]) );
  DFFARX1_HVT wb_we_is_reg ( .D(wb_we_i), .CLK(clk), .RSTB(n10), .Q(wb_we_is)
         );
  DFFARX1_HVT wb_cyc_is_reg ( .D(wb_cyc_i), .CLK(clk), .RSTB(n11), .QN(n50) );
  DFFARX1_HVT wb_stb_is_reg ( .D(wb_stb_i), .CLK(clk), .RSTB(n10), .QN(n55) );
  DFFARX1_HVT wbstate_reg_1_ ( .D(n180), .CLK(clk), .RSTB(n10), .Q(wbstate_1_), 
        .QN(n57) );
  DFFARX1_RVT wb_dat_o_reg_30_ ( .D(n130), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_o[30]) );
  DFFARX1_RVT wb_dat_o_reg_29_ ( .D(n128), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_o[29]) );
  DFFARX1_RVT wb_dat_o_reg_21_ ( .D(n112), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_o[21]) );
  DFFARX1_RVT wb_dat_o_reg_19_ ( .D(n108), .CLK(clk), .RSTB(n59), .Q(
        wb_dat_o[19]) );
  DFFARX1_RVT wb_dat_o_reg_14_ ( .D(n98), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[14]) );
  DFFARX1_RVT wb_dat_o_reg_13_ ( .D(n96), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[13]) );
  DFFARX1_RVT wb_dat_o_reg_12_ ( .D(n94), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[12]) );
  DFFARX1_RVT wb_dat_o_reg_10_ ( .D(n90), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[10]) );
  DFFARX1_RVT wb_dat_o_reg_7_ ( .D(n84), .CLK(clk), .RSTB(n11), .Q(wb_dat_o[7]) );
  DFFARX1_RVT wb_dat_o_reg_6_ ( .D(n82), .CLK(clk), .RSTB(n11), .Q(wb_dat_o[6]) );
  DFFARX1_HVT wb_dat_o_reg_17_ ( .D(n103), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_o[17]) );
  DFFARX1_HVT wb_dat_o_reg_2_ ( .D(n74), .CLK(clk), .RSTB(n10), .Q(wb_dat_o[2]) );
  DFFARX1_HVT wb_dat_o_reg_22_ ( .D(n101), .CLK(clk), .RSTB(n60), .Q(
        wb_dat_o[22]) );
  DFFARX1_HVT wb_dat_o_reg_23_ ( .D(n144), .CLK(clk), .RSTB(n60), .Q(
        wb_dat_o[23]) );
  DFFARX1_HVT wb_dat_o_reg_24_ ( .D(n118), .CLK(clk), .RSTB(n60), .Q(
        wb_dat_o[24]) );
  DFFARX1_HVT wb_dat_o_reg_25_ ( .D(n143), .CLK(clk), .RSTB(n60), .Q(
        wb_dat_o[25]) );
  DFFARX1_HVT wb_dat_o_reg_26_ ( .D(n122), .CLK(clk), .RSTB(n60), .Q(
        wb_dat_o[26]) );
  DFFARX1_HVT wb_dat_is_reg_3_ ( .D(wb_dat_i[3]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[3]) );
  DFFARX1_HVT wb_dat_o_reg_31_ ( .D(n134), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_o[31]) );
  DFFARX1_HVT wb_dat_o_reg_9_ ( .D(n88), .CLK(clk), .RSTB(n11), .Q(wb_dat_o[9]) );
  DFFARX1_HVT wb_dat_o_reg_0_ ( .D(n70), .CLK(clk), .RSTB(n10), .Q(wb_dat_o[0]) );
  NBUFFX2_HVT U13 ( .A(n60), .Y(n59) );
  NBUFFX4_HVT U15 ( .A(n60), .Y(n10) );
  NBUFFX4_HVT U18 ( .A(n60), .Y(n11) );
  AND2X1_RVT U94 ( .A1(n45), .A2(wb_dat_is[15]), .Y(n48) );
  AND2X1_RVT U90 ( .A1(n45), .A2(wb_dat_is[14]), .Y(n41) );
  AO21X1_RVT U87 ( .A1(n45), .A2(wb_dat_is[13]), .A3(n38), .Y(n39) );
  AO22X1_HVT U86 ( .A1(n44), .A2(wb_dat_is[29]), .A3(n43), .A4(wb_dat_is[21]), 
        .Y(n38) );
  AO21X1_RVT U84 ( .A1(n45), .A2(wb_dat_is[12]), .A3(n36), .Y(n37) );
  AO22X1_HVT U83 ( .A1(n44), .A2(wb_dat_is[28]), .A3(n43), .A4(wb_dat_is[20]), 
        .Y(n36) );
  AO21X1_RVT U81 ( .A1(n45), .A2(wb_dat_is[11]), .A3(n34), .Y(n35) );
  AO22X1_HVT U80 ( .A1(n44), .A2(wb_dat_is[27]), .A3(n43), .A4(wb_dat_is[19]), 
        .Y(n34) );
  AND2X1_RVT U77 ( .A1(n45), .A2(wb_dat_is[10]), .Y(n32) );
  AND2X1_RVT U70 ( .A1(n45), .A2(wb_dat_is[8]), .Y(n26) );
  AND2X1_HVT U31 ( .A1(wb_ack_o), .A2(n57), .Y(n180) );
  NOR2X0_HVT U28 ( .A1(wb_ack_o), .A2(wbstate_1_), .Y(n13) );
  DFFASRX1_HVT wb_ack_o_reg ( .D(n179), .CLK(clk), .RSTB(n10), .SETB(1'b1), 
        .Q(wb_ack_o) );
  DFFASRX1_HVT wb_dat_o_reg_27_ ( .D(n124), .CLK(clk), .RSTB(n60), .SETB(1'b1), 
        .Q(wb_dat_o[27]) );
  DFFASX1_HVT wre_reg ( .D(N27), .CLK(clk), .SETB(n10), .Q(wre), .QN(n54) );
  DFFARX1_HVT wb_dat_is_reg_4_ ( .D(wb_dat_i[4]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[4]) );
  DFFARX1_HVT wb_dat_o_reg_28_ ( .D(n133), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_o[28]) );
  DFFARX1_HVT wb_dat_o_reg_5_ ( .D(n115), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[5]) );
  OR2X1_HVT U12 ( .A1(n50), .A2(n55), .Y(n14) );
  DFFARX1_HVT wb_dat_is_reg_5_ ( .D(wb_dat_i[5]), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_is[5]) );
  DFFARX1_HVT wb_dat_o_reg_20_ ( .D(n110), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[20]) );
  OR3X1_HVT U16 ( .A1(n54), .A2(n14), .A3(wb_we_is), .Y(re_o_BAR) );
  DFFASRX1_HVT wb_dat_o_reg_3_ ( .D(n116), .CLK(clk), .RSTB(n11), .SETB(1'b1), 
        .Q(wb_dat_o[3]) );
  DFFARX1_HVT wb_dat_o_reg_18_ ( .D(n106), .CLK(clk), .RSTB(n10), .Q(
        wb_dat_o[18]) );
  DFFARX1_HVT wb_dat_o_reg_1_ ( .D(n72), .CLK(clk), .RSTB(n10), .Q(wb_dat_o[1]) );
  AO222X1_HVT U65 ( .A1(n83), .A2(wb_dat_o[14]), .A3(n5), .A4(wb_dat32_o[14]), 
        .A5(n23), .A6(wb_dat8_o[6]), .Y(n98) );
  AO222X1_HVT U52 ( .A1(n87), .A2(wb_dat_o[6]), .A3(n3), .A4(wb_dat32_o[6]), 
        .A5(n21), .A6(wb_dat8_o[6]), .Y(n82) );
  AND2X1_HVT U44 ( .A1(n81), .A2(n45), .Y(n23) );
  DFFARX1_HVT wb_dat_o_reg_16_ ( .D(n102), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[16]) );
  DFFARX1_HVT wb_dat_o_reg_4_ ( .D(n78), .CLK(clk), .RSTB(n11), .Q(wb_dat_o[4]) );
  AO222X1_RVT U42 ( .A1(n83), .A2(wb_dat_o[7]), .A3(n5), .A4(wb_dat32_o[7]), 
        .A5(n21), .A6(wb_dat8_o[7]), .Y(n84) );
  NOR3X0_HVT U33 ( .A1(n15), .A2(wb_sel_is[2]), .A3(n56), .Y(n44) );
  AND2X1_HVT U4 ( .A1(n81), .A2(n19), .Y(n21) );
  AO222X1_HVT U20 ( .A1(n87), .A2(wb_dat_o[12]), .A3(n4), .A4(wb_dat32_o[12]), 
        .A5(n23), .A6(wb_dat8_o[4]), .Y(n94) );
  AO222X1_HVT U58 ( .A1(n87), .A2(wb_dat_o[20]), .A3(n3), .A4(wb_dat32_o[20]), 
        .A5(n24), .A6(wb_dat8_o[4]), .Y(n110) );
  AO222X1_HVT U56 ( .A1(n83), .A2(wb_dat_o[4]), .A3(n4), .A4(wb_dat32_o[4]), 
        .A5(n21), .A6(wb_dat8_o[4]), .Y(n78) );
  AND2X1_HVT U46 ( .A1(n81), .A2(n43), .Y(n24) );
  NOR3X0_HVT U19 ( .A1(n45), .A2(n44), .A3(n43), .Y(n46) );
  AO222X1_RVT U48 ( .A1(n85), .A2(wb_dat_o[15]), .A3(n4), .A4(wb_dat32_o[15]), 
        .A5(n23), .A6(wb_dat8_o[7]), .Y(n100) );
  DFFASRX1_HVT wb_dat_o_reg_11_ ( .D(n92), .CLK(clk), .RSTB(n11), .SETB(1'b1), 
        .Q(wb_dat_o[11]) );
  AO22X1_HVT U10 ( .A1(n44), .A2(wb_dat_is[25]), .A3(n43), .A4(wb_dat_is[17]), 
        .Y(n30) );
  INVX0_LVT U36 ( .A(n66), .Y(n4) );
  AO222X1_RVT U47 ( .A1(n85), .A2(wb_dat_o[31]), .A3(n17), .A4(wb_dat8_o[7]), 
        .A5(wb_dat32_o[31]), .A6(n3), .Y(n134) );
  AO222X1_HVT U45 ( .A1(n87), .A2(wb_dat_o[28]), .A3(n17), .A4(wb_dat8_o[4]), 
        .A5(wb_dat32_o[28]), .A6(n2), .Y(n133) );
  AND2X1_HVT U95 ( .A1(n46), .A2(wb_dat_is[7]), .Y(n47) );
  AND2X1_HVT U91 ( .A1(n46), .A2(wb_dat_is[6]), .Y(n40) );
  AND2X1_HVT U74 ( .A1(n46), .A2(wb_dat_is[1]), .Y(n28) );
  AND2X1_HVT U71 ( .A1(n46), .A2(wb_dat_is[0]), .Y(n25) );
  INVX1_RVT U53 ( .A(re_o_BAR), .Y(n81) );
  INVX1_LVT U55 ( .A(n81), .Y(n83) );
  AO222X1_RVT U14 ( .A1(n87), .A2(wb_dat_o[8]), .A3(wb_dat8_o[0]), .A4(n23), 
        .A5(wb_dat32_o[8]), .A6(n4), .Y(n86) );
  INVX0_RVT U39 ( .A(n81), .Y(n85) );
  AO222X1_RVT U37 ( .A1(n83), .A2(wb_dat_o[26]), .A3(n17), .A4(wb_dat8_o[2]), 
        .A5(wb_dat32_o[26]), .A6(n5), .Y(n122) );
  AO222X1_RVT U35 ( .A1(n83), .A2(wb_dat_o[27]), .A3(n17), .A4(wb_dat8_o[3]), 
        .A5(wb_dat32_o[27]), .A6(n4), .Y(n124) );
  OR2X1_RVT U23 ( .A1(n83), .A2(n16), .Y(n66) );
  AO222X1_RVT U51 ( .A1(n85), .A2(wb_dat_o[2]), .A3(n2), .A4(wb_dat32_o[2]), 
        .A5(n21), .A6(wb_dat8_o[2]), .Y(n74) );
  AO222X1_RVT U62 ( .A1(n85), .A2(wb_dat_o[9]), .A3(n3), .A4(wb_dat32_o[9]), 
        .A5(n23), .A6(wb_dat8_o[1]), .Y(n88) );
  INVX0_RVT U27 ( .A(wb_rst_i), .Y(n60) );
  AO222X1_RVT U40 ( .A1(n83), .A2(wb_dat_o[30]), .A3(n17), .A4(wb_dat8_o[6]), 
        .A5(wb_dat32_o[30]), .A6(n3), .Y(n130) );
  AO222X1_HVT U41 ( .A1(n87), .A2(wb_dat_o[24]), .A3(n3), .A4(wb_dat32_o[24]), 
        .A5(wb_dat8_o[0]), .A6(n17), .Y(n118) );
  AO222X1_HVT U43 ( .A1(n83), .A2(wb_dat_o[0]), .A3(wb_dat8_o[0]), .A4(n21), 
        .A5(wb_dat32_o[0]), .A6(n4), .Y(n70) );
  AO21X1_RVT U82 ( .A1(n46), .A2(wb_dat_is[3]), .A3(n35), .Y(wb_dat8_i[3]) );
  AO21X1_RVT U85 ( .A1(n46), .A2(wb_dat_is[4]), .A3(n37), .Y(wb_dat8_i[4]) );
  AO21X1_RVT U88 ( .A1(n46), .A2(wb_dat_is[5]), .A3(n39), .Y(wb_dat8_i[5]) );
  INVX0_LVT U11 ( .A(n66), .Y(n5) );
  INVX0_LVT U9 ( .A(n66), .Y(n3) );
  INVX0_LVT U8 ( .A(n66), .Y(n2) );
  INVX1_LVT U64 ( .A(n81), .Y(n87) );
  AO222X1_RVT U26 ( .A1(n85), .A2(wb_dat_o[29]), .A3(n17), .A4(wb_dat8_o[5]), 
        .A5(wb_dat32_o[29]), .A6(n5), .Y(n128) );
  AO222X1_RVT U21 ( .A1(n85), .A2(wb_dat_o[1]), .A3(n5), .A4(wb_dat32_o[1]), 
        .A5(n21), .A6(wb_dat8_o[1]), .Y(n72) );
  AO222X1_HVT U7 ( .A1(n87), .A2(wb_dat_o[16]), .A3(wb_dat8_o[0]), .A4(n24), 
        .A5(wb_dat32_o[16]), .A6(n5), .Y(n102) );
  OR3X1_RVT U79 ( .A1(n33), .A2(n32), .A3(n31), .Y(wb_dat8_i[2]) );
  OR3X1_RVT U72 ( .A1(n27), .A2(n26), .A3(n25), .Y(wb_dat8_i[0]) );
  INVX0_LVT U29 ( .A(n14), .Y(n18) );
  AO222X1_RVT U54 ( .A1(n87), .A2(wb_dat_o[19]), .A3(n2), .A4(wb_dat32_o[19]), 
        .A5(n24), .A6(wb_dat8_o[3]), .Y(n108) );
  AO222X1_RVT U61 ( .A1(n83), .A2(wb_dat_o[10]), .A3(n3), .A4(wb_dat32_o[10]), 
        .A5(n23), .A6(wb_dat8_o[2]), .Y(n90) );
  AO222X1_RVT U63 ( .A1(n85), .A2(wb_dat_o[11]), .A3(n4), .A4(wb_dat32_o[11]), 
        .A5(n23), .A6(wb_dat8_o[3]), .Y(n92) );
  AO222X1_HVT U49 ( .A1(n87), .A2(wb_dat_o[5]), .A3(n2), .A4(wb_dat32_o[5]), 
        .A5(n21), .A6(wb_dat8_o[5]), .Y(n115) );
  AO222X1_RVT U50 ( .A1(n85), .A2(wb_dat_o[3]), .A3(n2), .A4(wb_dat32_o[3]), 
        .A5(n21), .A6(wb_dat8_o[3]), .Y(n116) );
  AO21X1_RVT U68 ( .A1(wb_dat8_o[2]), .A2(n24), .A3(n117), .Y(n106) );
  AO22X1_RVT U78 ( .A1(wb_dat_o[18]), .A2(n83), .A3(wb_dat32_o[18]), .A4(n3), 
        .Y(n117) );
  AO21X1_RVT U97 ( .A1(wb_dat32_o[17]), .A2(n4), .A3(n119), .Y(n103) );
  AO22X1_RVT U98 ( .A1(wb_dat_o[17]), .A2(n83), .A3(wb_dat8_o[1]), .A4(n24), 
        .Y(n119) );
  AND2X1_RVT U30 ( .A1(n13), .A2(n18), .Y(n179) );
  AND2X1_HVT U5 ( .A1(wb_dat_is[2]), .A2(n46), .Y(n31) );
  AND3X1_RVT U22 ( .A1(n18), .A2(wb_we_is), .A3(wre), .Y(we_o) );
  AO222X1_HVT U38 ( .A1(n85), .A2(wb_dat_o[13]), .A3(n5), .A4(wb_dat32_o[13]), 
        .A5(n23), .A6(wb_dat8_o[5]), .Y(n96) );
  AO222X1_HVT U67 ( .A1(n87), .A2(wb_dat_o[21]), .A3(n2), .A4(wb_dat32_o[21]), 
        .A5(n24), .A6(wb_dat8_o[5]), .Y(n112) );
  AO22X1_HVT U69 ( .A1(n44), .A2(wb_dat_is[24]), .A3(n43), .A4(wb_dat_is[16]), 
        .Y(n27) );
  AO22X1_HVT U76 ( .A1(n44), .A2(wb_dat_is[26]), .A3(n43), .A4(wb_dat_is[18]), 
        .Y(n33) );
  AO22X1_HVT U89 ( .A1(n44), .A2(wb_dat_is[30]), .A3(n43), .A4(wb_dat_is[22]), 
        .Y(n42) );
  AO22X1_HVT U93 ( .A1(n44), .A2(wb_dat_is[31]), .A3(n43), .A4(wb_dat_is[23]), 
        .Y(n49) );
  DFFASRX1_HVT wb_dat_o_reg_8_ ( .D(n86), .CLK(clk), .RSTB(n11), .SETB(1'b1), 
        .Q(wb_dat_o[8]) );
  DFFARX1_HVT wb_dat_o_reg_15_ ( .D(n100), .CLK(clk), .RSTB(n11), .Q(
        wb_dat_o[15]) );
  NAND4X0_RVT U17 ( .A1(wb_sel_is[0]), .A2(wb_sel_is[2]), .A3(wb_sel_is[3]), 
        .A4(wb_sel_is[1]), .Y(n16) );
  OR3X1_HVT U92 ( .A1(n42), .A2(n41), .A3(n40), .Y(wb_dat8_i[6]) );
  OR3X1_HVT U96 ( .A1(n49), .A2(n48), .A3(n47), .Y(wb_dat8_i[7]) );
  OR3X1_HVT U75 ( .A1(n30), .A2(n29), .A3(n28), .Y(wb_dat8_i[1]) );
  AND2X1_HVT U3 ( .A1(n81), .A2(n44), .Y(n17) );
  INVX0_HVT U6 ( .A(n132), .Y(n146) );
  AND2X1_HVT U32 ( .A1(n45), .A2(wb_dat_is[9]), .Y(n29) );
  AND2X1_HVT U34 ( .A1(n14), .A2(n13), .Y(N27) );
  INVX0_HVT U59 ( .A(n148), .Y(n101) );
  AO222X1_HVT U60 ( .A1(n85), .A2(wb_dat_o[25]), .A3(n17), .A4(wb_dat8_o[1]), 
        .A5(wb_dat32_o[25]), .A6(n2), .Y(n143) );
  AO222X1_HVT U73 ( .A1(n87), .A2(wb_dat_o[23]), .A3(n5), .A4(wb_dat32_o[23]), 
        .A5(n24), .A6(wb_dat8_o[7]), .Y(n144) );
  INVX1_LVT U100 ( .A(n15), .Y(n140) );
  OR2X1_LVT U101 ( .A1(wb_sel_is[0]), .A2(wb_sel_is[1]), .Y(n15) );
  NOR2X1_RVT U102 ( .A1(n146), .A2(n51), .Y(n127) );
  OR2X1_LVT U103 ( .A1(n19), .A2(n45), .Y(wb_adr_int[1]) );
  AND2X1_LVT U104 ( .A1(n127), .A2(n147), .Y(n45) );
  INVX1_LVT U105 ( .A(n12), .Y(n147) );
  OR2X1_LVT U106 ( .A1(wb_sel_is[2]), .A2(wb_sel_is[3]), .Y(n12) );
  AOI222X1_RVT U107 ( .A1(n85), .A2(wb_dat_o[22]), .A3(n2), .A4(wb_dat32_o[22]), .A5(n24), .A6(wb_dat8_o[6]), .Y(n148) );
  AND3X1_LVT U108 ( .A1(n140), .A2(wb_sel_is[2]), .A3(n56), .Y(n43) );
  AND3X1_LVT U109 ( .A1(n147), .A2(wb_sel_is[0]), .A3(n51), .Y(n19) );
  OR2X1_RVT U110 ( .A1(n19), .A2(n43), .Y(wb_adr_int[0]) );
endmodule


module uart_transmitter_opt2 ( clk, wb_rst_i, lcr, tf_push, wb_dat_i, enable, 
        stx_pad_o, tstate, tf_count, tx_reset, lsr_mask );
  input [7:0] lcr;
  input [7:0] wb_dat_i;
  output [2:0] tstate;
  output [4:0] tf_count;
  input clk, wb_rst_i, tf_push, enable, tx_reset, lsr_mask;
  output stx_pad_o;
  wire   parity_xor, bit_out, N186, n1, n2, n12, n16, n26, n34, n42, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n67, n70, n71, n72, n73, n74,
         n75, n76, n77, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n3, n4, n5, n8, n13, n14, n15, n18, n19, n23, n24, n25, n27, n28,
         n29, n30, n31, n32, n35, n37, n38, n39, n40, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n65, n68, n69, n92, n93, n94, n95,
         n96, n97, n105, n106, n107, n108, n112, n113, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n132, n133, n134, n135,
         n136, n137, n138, n140, n141, n144, n145, n146, n147;
  wire   [4:0] counter;
  wire   [2:0] bit_counter;
  wire   [6:0] shift_out;
  tri   clk;
  tri   wb_rst_i;
  tri   tf_push;
  tri   [7:0] wb_dat_i;
  tri   [4:0] tf_count;
  tri   tx_reset;
  tri   lsr_mask;
  tri   [7:0] tf_data_out;
  tri   tf_pop;

  DFFARX1_HVT bit_counter_reg_0_ ( .D(n74), .CLK(clk), .RSTB(n97), .Q(
        bit_counter[0]), .QN(n93) );
  DFFARX1_HVT tstate_reg_2_ ( .D(n76), .CLK(clk), .RSTB(n97), .Q(tstate[2]), 
        .QN(n105) );
  DFFARX1_HVT counter_reg_1_ ( .D(n70), .CLK(clk), .RSTB(n97), .Q(counter[1])
         );
  DFFARX1_HVT counter_reg_3_ ( .D(n87), .CLK(clk), .RSTB(n97), .Q(counter[3])
         );
  DFFARX1_HVT counter_reg_2_ ( .D(n86), .CLK(clk), .RSTB(n97), .Q(counter[2]), 
        .QN(n96) );
  DFFARX1_HVT counter_reg_0_ ( .D(n71), .CLK(clk), .RSTB(n97), .Q(counter[0])
         );
  DFFARX1_HVT shift_out_reg_6_ ( .D(n85), .CLK(clk), .RSTB(n97), .Q(
        shift_out[6]), .QN(n133) );
  DFFARX1_HVT counter_reg_4_ ( .D(n88), .CLK(clk), .RSTB(n97), .Q(counter[4])
         );
  DFFARX1_HVT bit_counter_reg_1_ ( .D(n75), .CLK(clk), .RSTB(n97), .Q(
        bit_counter[1]), .QN(n95) );
  DFFARX1_HVT bit_counter_reg_2_ ( .D(n89), .CLK(clk), .RSTB(n97), .Q(
        bit_counter[2]) );
  DFFARX1_HVT shift_out_reg_5_ ( .D(n84), .CLK(clk), .RSTB(n97), .Q(
        shift_out[5]) );
  DFFARX1_HVT shift_out_reg_4_ ( .D(n83), .CLK(clk), .RSTB(n97), .Q(
        shift_out[4]) );
  DFFARX1_HVT shift_out_reg_3_ ( .D(n82), .CLK(clk), .RSTB(n97), .Q(
        shift_out[3]) );
  DFFARX1_HVT shift_out_reg_2_ ( .D(n81), .CLK(clk), .RSTB(n97), .Q(
        shift_out[2]) );
  DFFARX1_HVT shift_out_reg_1_ ( .D(n80), .CLK(clk), .RSTB(n97), .Q(
        shift_out[1]) );
  DFFARX1_HVT shift_out_reg_0_ ( .D(n79), .CLK(clk), .RSTB(n97), .Q(
        shift_out[0]) );
  DFFARX1_HVT parity_xor_reg ( .D(n90), .CLK(clk), .RSTB(n97), .Q(parity_xor)
         );
  DFFARX1_HVT bit_out_reg ( .D(n73), .CLK(clk), .RSTB(n97), .Q(bit_out) );
  DFFARX1_HVT tstate_reg_1_ ( .D(n77), .CLK(clk), .RSTB(n97), .Q(tstate[1]), 
        .QN(n92) );
  INVX0_HVT U86 ( .A(tf_data_out[6]), .Y(n56) );
  HADDX1_HVT U90 ( .A0(tf_data_out[2]), .B0(tf_data_out[4]), .SO(n60) );
  FADDX1_HVT U91 ( .A(tf_data_out[1]), .B(tf_data_out[3]), .CI(n60), .S(n61)
         );
  FADDX1_HVT U92 ( .A(n62), .B(tf_data_out[0]), .CI(n61), .S(n64) );
  DFFARX1_HVT tf_pop_reg ( .D(n2), .CLK(clk), .RSTB(n97), .Q(tf_pop) );
  DFFARX1_HVT tstate_reg_0_ ( .D(n121), .CLK(clk), .RSTB(n97), .Q(tstate[0]), 
        .QN(n94) );
  OR3X1_HVT U9 ( .A1(tf_count[1]), .A2(tf_count[4]), .A3(tf_count[2]), .Y(n26)
         );
  INVX0_HVT U19 ( .A(lcr[3]), .Y(n30) );
  INVX0_HVT U25 ( .A(N186), .Y(n1) );
  INVX0_HVT U26 ( .A(n55), .Y(n57) );
  INVX1_HVT U33 ( .A(n8), .Y(n49) );
  INVX0_HVT U56 ( .A(n39), .Y(n53) );
  INVX0_HVT U75 ( .A(lcr[5]), .Y(n40) );
  HADDX1_HVT U77 ( .A0(lcr[4]), .B0(n43), .SO(n45) );
  INVX0_HVT U82 ( .A(lcr[1]), .Y(n52) );
  INVX0_HVT U83 ( .A(lcr[0]), .Y(n51) );
  NAND2X0_HVT U85 ( .A1(n53), .A2(n96), .Y(n54) );
  NAND2X0_HVT U94 ( .A1(lcr[0]), .A2(tf_data_out[7]), .Y(n55) );
  NAND2X0_HVT U76 ( .A1(n40), .A2(parity_xor), .Y(n43) );
  AO22X1_HVT U66 ( .A1(n134), .A2(n64), .A3(n63), .A4(parity_xor), .Y(n90) );
  AO22X1_HVT U64 ( .A1(n34), .A2(n32), .A3(n31), .A4(n105), .Y(n35) );
  AO22X1_HVT U60 ( .A1(counter[1]), .A2(n47), .A3(n105), .A4(n68), .Y(n29) );
  AND2X1_HVT U58 ( .A1(n53), .A2(n132), .Y(n38) );
  AO22X1_HVT U73 ( .A1(n134), .A2(tf_data_out[7]), .A3(n63), .A4(shift_out[6]), 
        .Y(n85) );
  AO22X1_HVT U37 ( .A1(n107), .A2(tf_data_out[0]), .A3(n34), .A4(n12), .Y(n16)
         );
  INVX4_HVT U10 ( .A(wb_rst_i), .Y(n97) );
  AO221X1_HVT U18 ( .A1(n92), .A2(tstate[0]), .A3(n92), .A4(n67), .A5(n120), 
        .Y(N186) );
  OA221X1_HVT U87 ( .A1(tf_data_out[6]), .A2(n57), .A3(n56), .A4(n55), .A5(
        lcr[1]), .Y(n59) );
  AO222X1_HVT U70 ( .A1(n134), .A2(tf_data_out[4]), .A3(n42), .A4(shift_out[4]), .A5(shift_out[3]), .A6(n144), .Y(n82) );
  AO222X1_HVT U69 ( .A1(n134), .A2(tf_data_out[3]), .A3(n42), .A4(shift_out[3]), .A5(shift_out[2]), .A6(n144), .Y(n81) );
  AO222X1_HVT U67 ( .A1(n134), .A2(tf_data_out[1]), .A3(n42), .A4(shift_out[1]), .A5(shift_out[0]), .A6(n144), .Y(n79) );
  AO222X1_HVT U68 ( .A1(n134), .A2(tf_data_out[2]), .A3(n42), .A4(shift_out[2]), .A5(shift_out[1]), .A6(n144), .Y(n80) );
  AO222X1_HVT U71 ( .A1(n134), .A2(tf_data_out[5]), .A3(n42), .A4(shift_out[5]), .A5(shift_out[4]), .A6(n144), .Y(n83) );
  AO22X1_RVT U5 ( .A1(n46), .A2(n45), .A3(n44), .A4(shift_out[0]), .Y(n12) );
  OA21X1_HVT U20 ( .A1(n4), .A2(n30), .A3(n144), .Y(n5) );
  AND2X1_HVT U41 ( .A1(n105), .A2(enable), .Y(n14) );
  AND2X1_HVT U42 ( .A1(tstate[1]), .A2(n105), .Y(n19) );
  OA221X1_HVT U48 ( .A1(tstate[0]), .A2(n46), .A3(tstate[0]), .A4(n30), .A5(
        n19), .Y(n23) );
  AO22X1_HVT U52 ( .A1(n134), .A2(lcr[0]), .A3(bit_counter[0]), .A4(n144), .Y(
        n24) );
  AO21X1_HVT U53 ( .A1(n42), .A2(n93), .A3(n24), .Y(n74) );
  AND2X1_RVT U63 ( .A1(tstate[0]), .A2(n92), .Y(n31) );
  AO22X1_HVT U65 ( .A1(n37), .A2(n35), .A3(n130), .A4(tstate[1]), .Y(n77) );
  AND4X1_HVT U97 ( .A1(n46), .A2(n34), .A3(lcr[3]), .A4(n37), .Y(n106) );
  AND3X1_HVT U50 ( .A1(tstate[1]), .A2(n105), .A3(n94), .Y(n34) );
  OR2X1_HVT U22 ( .A1(counter[1]), .A2(n47), .Y(n39) );
  AND2X1_RVT U31 ( .A1(tstate[0]), .A2(n130), .Y(n112) );
  INVX0_HVT U38 ( .A(enable), .Y(n120) );
  OR2X1_HVT U54 ( .A1(tstate[0]), .A2(tstate[1]), .Y(n8) );
  AO222X1_HVT U95 ( .A1(n105), .A2(tf_count[3]), .A3(n105), .A4(tf_count[0]), 
        .A5(n105), .A6(n26), .Y(n67) );
  AOI21X1_HVT U100 ( .A1(n134), .A2(lcr[1]), .A3(n124), .Y(n108) );
  NAND2X0_HVT U11 ( .A1(n46), .A2(n30), .Y(n32) );
  AND2X1_RVT U59 ( .A1(n28), .A2(n27), .Y(n68) );
  AND2X1_HVT U32 ( .A1(counter[0]), .A2(enable), .Y(n113) );
  OR2X1_RVT U6 ( .A1(counter[0]), .A2(n18), .Y(n47) );
  NAND2X0_HVT U17 ( .A1(n28), .A2(counter[0]), .Y(n122) );
  AND2X1_RVT U96 ( .A1(n130), .A2(tstate[2]), .Y(n129) );
  OA22X1_HVT U57 ( .A1(n105), .A2(n8), .A3(tstate[2]), .A4(n49), .Y(n15) );
  AND2X1_RVT U49 ( .A1(n122), .A2(n127), .Y(n126) );
  NAND2X0_HVT U30 ( .A1(enable), .A2(n107), .Y(n63) );
  INVX0_RVT U12 ( .A(n44), .Y(n46) );
  OR2X1_HVT U45 ( .A1(n15), .A2(n120), .Y(n18) );
  AND2X1_HVT U34 ( .A1(n144), .A2(shift_out[5]), .Y(n135) );
  OR3X1_RVT U36 ( .A1(n137), .A2(n136), .A3(n135), .Y(n84) );
  AND2X1_HVT U40 ( .A1(enable), .A2(n107), .Y(n134) );
  INVX0_HVT U72 ( .A(n132), .Y(n28) );
  INVX0_HVT U102 ( .A(n42), .Y(n138) );
  uart_tfifo_opt2 fifo_tx ( .clk(clk), .wb_rst_i(wb_rst_i), .data_in(wb_dat_i), 
        .data_out(tf_data_out), .push(tf_push), .pop(tf_pop), .count(tf_count), 
        .fifo_reset(tx_reset), .reset_status(lsr_mask) );
  INVX0_RVT U105 ( .A(n44), .Y(n140) );
  NOR2X1_RVT U101 ( .A1(n133), .A2(n138), .Y(n137) );
  AND2X1_RVT U84 ( .A1(n134), .A2(tf_data_out[6]), .Y(n136) );
  OR2X1_HVT U27 ( .A1(n132), .A2(n141), .Y(n4) );
  INVX0_RVT U23 ( .A(n15), .Y(n127) );
  INVX0_RVT U99 ( .A(n108), .Y(n75) );
  AO21X1_RVT U29 ( .A1(n34), .A2(bit_counter[0]), .A3(n144), .Y(n25) );
  INVX0_RVT U47 ( .A(n47), .Y(n27) );
  MUX21X1_RVT U21 ( .A1(n16), .A2(bit_out), .S0(n5), .Y(n73) );
  OR2X1_RVT U61 ( .A1(n38), .A2(n29), .Y(n70) );
  AO221X1_RVT U74 ( .A1(counter[2]), .A2(n39), .A3(n96), .A4(n38), .A5(n68), 
        .Y(n86) );
  AO222X1_RVT U89 ( .A1(n69), .A2(n68), .A3(n132), .A4(n65), .A5(n54), .A6(
        counter[3]), .Y(n87) );
  OA221X1_RVT U93 ( .A1(lcr[1]), .A2(lcr[0]), .A3(n59), .A4(tf_data_out[5]), 
        .A5(n58), .Y(n62) );
  AO22X1_RVT U4 ( .A1(N186), .A2(n134), .A3(n1), .A4(tf_pop), .Y(n2) );
  NAND2X0_RVT U88 ( .A1(n59), .A2(tf_data_out[5]), .Y(n58) );
  OR4X1_RVT U14 ( .A1(n107), .A2(n123), .A3(n112), .A4(n106), .Y(n121) );
  OR2X1_RVT U62 ( .A1(n129), .A2(n128), .Y(n76) );
  AO21X1_RVT U78 ( .A1(n37), .A2(n23), .A3(n123), .Y(n128) );
  INVX0_RVT U98 ( .A(n37), .Y(n130) );
  AND3X1_RVT U24 ( .A1(n49), .A2(n67), .A3(n37), .Y(n123) );
  NOR2X1_RVT U15 ( .A1(n120), .A2(n126), .Y(n37) );
  AO21X1_RVT U3 ( .A1(counter[0]), .A2(n18), .A3(n27), .Y(n71) );
  INVX0_RVT U79 ( .A(n65), .Y(n50) );
  AO22X1_RVT U81 ( .A1(counter[4]), .A2(n50), .A3(n49), .A4(n48), .Y(n88) );
  AOI21X1_RVT U43 ( .A1(n19), .A2(bit_out), .A3(n49), .Y(n13) );
  DFFASX1_RVT stx_o_tmp_reg ( .D(n72), .CLK(clk), .SETB(n97), .QN(n3) );
  OR4X1_RVT U16 ( .A1(counter[1]), .A2(counter[3]), .A3(counter[4]), .A4(
        counter[2]), .Y(n132) );
  OR3X1_HVT U7 ( .A1(bit_counter[2]), .A2(bit_counter[1]), .A3(bit_counter[0]), 
        .Y(n44) );
  INVX0_HVT U8 ( .A(n34), .Y(n145) );
  NOR4X1_HVT U13 ( .A1(counter[1]), .A2(counter[3]), .A3(counter[2]), .A4(n47), 
        .Y(n65) );
  NOR2X1_RVT U28 ( .A1(n3), .A2(lcr[6]), .Y(stx_pad_o) );
  OAI22X1_HVT U35 ( .A1(n14), .A2(n3), .A3(n120), .A4(n13), .Y(n72) );
  AO221X1_HVT U39 ( .A1(bit_counter[2]), .A2(bit_counter[1]), .A3(
        bit_counter[2]), .A4(n25), .A5(n134), .Y(n89) );
  AOI21X1_RVT U44 ( .A1(n125), .A2(n147), .A3(n146), .Y(n144) );
  INVX0_HVT U46 ( .A(n4), .Y(n125) );
  INVX0_HVT U51 ( .A(n63), .Y(n146) );
  AND2X1_HVT U55 ( .A1(n68), .A2(lcr[2]), .Y(n48) );
  NAND4X1_HVT U80 ( .A1(lcr[2]), .A2(n52), .A3(n51), .A4(tstate[2]), .Y(n69)
         );
  NOR2X0_LVT U103 ( .A1(n145), .A2(n144), .Y(n42) );
  AND3X1_LVT U104 ( .A1(tstate[2]), .A2(tstate[0]), .A3(n92), .Y(n107) );
  INVX0_RVT U106 ( .A(n140), .Y(n147) );
  NAND2X0_LVT U107 ( .A1(n113), .A2(n34), .Y(n141) );
  OA222X1_RVT U108 ( .A1(bit_counter[1]), .A2(n42), .A3(bit_counter[1]), .A4(
        n93), .A5(n95), .A6(n25), .Y(n124) );
endmodule


module uart_sync_flops_1_1 ( rst_i, clk_i, stage1_rst_i, stage1_clk_en_i, 
        async_dat_i, sync_dat_o );
  input [0:0] async_dat_i;
  output [0:0] sync_dat_o;
  input rst_i, clk_i, stage1_rst_i, stage1_clk_en_i;
  wire   flop_0_0_, n1;
  tri   rst_i;
  tri   clk_i;

  DFFASX1_HVT flop_0_reg_0_ ( .D(async_dat_i[0]), .CLK(clk_i), .SETB(n1), .Q(
        flop_0_0_) );
  INVX0_HVT U3 ( .A(rst_i), .Y(n1) );
  DFFASRX1_HVT sync_dat_o_reg_0_ ( .D(flop_0_0_), .CLK(clk_i), .RSTB(1'b1), 
        .SETB(n1), .Q(sync_dat_o[0]) );
endmodule


module uart_receiver_opt2 ( clk, wb_rst_i, lcr, rf_pop, srx_pad_i, enable, 
        counter_t, rf_count, rf_data_out, rf_error_bit, rf_overrun, rx_reset, 
        lsr_mask, rstate, rf_push_pulse );
  input [7:0] lcr;
  output [9:0] counter_t;
  output [4:0] rf_count;
  output [10:0] rf_data_out;
  output [3:0] rstate;
  input clk, wb_rst_i, rf_pop, srx_pad_i, enable, rx_reset, lsr_mask;
  output rf_error_bit, rf_overrun, rf_push_pulse;
  wire   rparity, rparity_xor, rframing_error, rparity_error, rf_push, N169,
         N170, N172, N173, N174, N175, N176, N177, N178, rf_push_q, n1, n3, n4,
         n5, n6, n7, n8, n9, n10, n12, n13, n154, n155, n156, n157, n158, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n180, n181, n183, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n11, n14, n15,
         n16, n19, n20, n21, n22, n23, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n59, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n85, n86, n87, n89, n91, n92, n93, n94, n95, n97, n98, n99, n100,
         n101, n102, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n117, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n135, n136, n137,
         n142, n145, n146, n147, n148, n149, n150, n151, n152, n153, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n205, n206, n207,
         n208, n209, n210, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n250, n251, n252, n253,
         n254, n255, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n267, n268, n269, n270, n271, n272, n273, n276, n277, n278, n279,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n316, n317, n318, n324, n329, n333, n335, n347, n352, n353, n354,
         n355, n356, n357, n358, n360, n361, n362, n363, n364, n367, n368,
         n369, n370, n371, n372, n373, n374, n376, n377, n378, n379, n380,
         n381, n382, n383, n387, n388, n390, n391, n392, n393, n394, n396,
         n397, n399, n400, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412;
  wire   [7:0] counter_b;
  wire   [3:0] rcounter16;
  wire   [7:0] rshift;
  wire   [2:0] rbit_counter;
  tri   clk;
  tri   wb_rst_i;
  tri   rf_pop;
  tri   [4:0] rf_count;
  tri   [10:0] rf_data_out;
  tri   rf_error_bit;
  tri   rf_overrun;
  tri   rx_reset;
  tri   lsr_mask;
  tri   rf_push_pulse;
  tri   [10:0] rf_data_in;

  DFFASX1_HVT counter_b_reg_2_ ( .D(n164), .CLK(clk), .SETB(n21), .Q(
        counter_b[2]) );
  DFFASX1_HVT counter_b_reg_1_ ( .D(n193), .CLK(clk), .SETB(n318), .Q(
        counter_b[1]) );
  DFFASX1_HVT counter_t_reg_0_ ( .D(n163), .CLK(clk), .SETB(n21), .Q(
        counter_t[0]) );
  DFFASX1_HVT counter_t_reg_9_ ( .D(n162), .CLK(clk), .SETB(n21), .Q(
        counter_t[9]) );
  DFFARX1_HVT rcounter16_reg_0_ ( .D(n192), .CLK(clk), .RSTB(n21), .Q(
        rcounter16[0]), .QN(n285) );
  DFFARX1_HVT rframing_error_reg ( .D(n189), .CLK(clk), .RSTB(n21), .Q(
        rframing_error), .QN(n288) );
  DFFARX1_HVT rstate_reg_1_ ( .D(n383), .CLK(clk), .RSTB(n21), .Q(rstate[1]), 
        .QN(n347) );
  DFFARX1_HVT rcounter16_reg_2_ ( .D(n180), .CLK(clk), .RSTB(n21), .Q(
        rcounter16[2]), .QN(n278) );
  DFFARX1_HVT rstate_reg_2_ ( .D(n393), .CLK(clk), .RSTB(n21), .Q(rstate[2]), 
        .QN(n284) );
  DFFARX1_HVT rcounter16_reg_1_ ( .D(n181), .CLK(clk), .RSTB(n21), .Q(
        rcounter16[1]), .QN(n279) );
  DFFARX1_HVT rparity_reg ( .D(n190), .CLK(clk), .RSTB(n21), .Q(rparity) );
  DFFARX1_HVT rbit_counter_reg_1_ ( .D(n186), .CLK(clk), .RSTB(n21), .Q(
        rbit_counter[1]) );
  DFFARX1_HVT rbit_counter_reg_0_ ( .D(n187), .CLK(clk), .RSTB(n21), .Q(
        rbit_counter[0]), .QN(n286) );
  DFFARX1_HVT rbit_counter_reg_2_ ( .D(n185), .CLK(clk), .RSTB(n21), .Q(
        rbit_counter[2]) );
  DFFARX1_HVT rcounter16_reg_3_ ( .D(n191), .CLK(clk), .RSTB(n21), .Q(
        rcounter16[3]), .QN(n297) );
  DFFARX1_HVT rshift_reg_7_ ( .D(n171), .CLK(clk), .RSTB(n21), .Q(rshift[7]), 
        .QN(n312) );
  DFFARX1_HVT rshift_reg_6_ ( .D(n172), .CLK(clk), .RSTB(n21), .Q(rshift[6]), 
        .QN(n308) );
  DFFARX1_HVT rshift_reg_5_ ( .D(n173), .CLK(clk), .RSTB(n21), .Q(rshift[5]), 
        .QN(n302) );
  DFFARX1_HVT rshift_reg_4_ ( .D(n174), .CLK(clk), .RSTB(n21), .Q(rshift[4]), 
        .QN(n305) );
  DFFARX1_HVT rshift_reg_3_ ( .D(n175), .CLK(clk), .RSTB(n21), .Q(rshift[3]), 
        .QN(n282) );
  DFFARX1_HVT rshift_reg_2_ ( .D(n176), .CLK(clk), .RSTB(n21), .Q(rshift[2]), 
        .QN(n304) );
  DFFARX1_HVT rshift_reg_1_ ( .D(n177), .CLK(clk), .RSTB(n21), .Q(rshift[1]), 
        .QN(n283) );
  DFFARX1_HVT rshift_reg_0_ ( .D(n178), .CLK(clk), .RSTB(n21), .Q(rshift[0]), 
        .QN(n303) );
  DFFARX1_HVT rparity_xor_reg ( .D(n170), .CLK(clk), .RSTB(n21), .Q(
        rparity_xor), .QN(n307) );
  DFFARX1_HVT rparity_error_reg ( .D(n169), .CLK(clk), .RSTB(n21), .Q(
        rparity_error), .QN(n300) );
  DFFARX1_HVT counter_b_reg_6_ ( .D(n168), .CLK(clk), .RSTB(n21), .Q(
        counter_b[6]), .QN(n299) );
  DFFARX1_HVT counter_b_reg_5_ ( .D(n167), .CLK(clk), .RSTB(n21), .Q(
        counter_b[5]) );
  DFFARX1_HVT counter_t_reg_8_ ( .D(n161), .CLK(clk), .RSTB(n21), .Q(
        counter_t[8]), .QN(n298) );
  DFFARX1_HVT counter_t_reg_7_ ( .D(n160), .CLK(clk), .RSTB(n21), .Q(
        counter_t[7]), .QN(n309) );
  DFFARX1_RVT rf_data_in_reg_0_ ( .D(n12), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[0]) );
  DFFARX1_RVT rf_data_in_reg_10_ ( .D(n306), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[10]) );
  DFFARX1_RVT rf_data_in_reg_8_ ( .D(n9), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[8]) );
  DFFARX1_HVT rf_push_reg ( .D(n381), .CLK(clk), .RSTB(n21), .Q(rf_push), .QN(
        n311) );
  DFFARX1_HVT rstate_reg_3_ ( .D(n183), .CLK(clk), .RSTB(n21), .Q(rstate[3]), 
        .QN(n310) );
  DFFARX1_HVT rstate_reg_0_ ( .D(n188), .CLK(clk), .RSTB(n21), .Q(rstate[0]), 
        .QN(n287) );
  DFFARX1_HVT rf_data_in_reg_2_ ( .D(n392), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[2]) );
  DFFARX1_HVT rf_data_in_reg_9_ ( .D(n10), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[9]) );
  NOR3X0_HVT U27 ( .A1(lcr[3]), .A2(rbit_counter[2]), .A3(n213), .Y(n98) );
  OR3X1_HVT U34 ( .A1(n125), .A2(n137), .A3(n124), .Y(n152) );
  OR2X1_HVT U45 ( .A1(rbit_counter[0]), .A2(n287), .Y(n125) );
  NBUFFX8_HVT U49 ( .A(n318), .Y(n21) );
  INVX0_HVT U59 ( .A(n61), .Y(n11) );
  INVX1_RVT U72 ( .A(n22), .Y(n241) );
  INVX0_HVT U77 ( .A(srx_pad_i), .Y(n253) );
  INVX0_HVT U90 ( .A(n34), .Y(n36) );
  INVX0_HVT U107 ( .A(n107), .Y(n111) );
  INVX0_HVT U119 ( .A(lcr[0]), .Y(n64) );
  INVX0_HVT U141 ( .A(lcr[1]), .Y(n65) );
  INVX0_HVT U144 ( .A(n223), .Y(n67) );
  INVX0_HVT U146 ( .A(n70), .Y(n71) );
  INVX0_HVT U153 ( .A(counter_b[1]), .Y(n73) );
  NAND2X0_HVT U157 ( .A1(counter_b[3]), .A2(counter_b[4]), .Y(n75) );
  NAND2X0_HVT U158 ( .A1(n75), .A2(n104), .Y(n76) );
  INVX0_HVT U180 ( .A(n200), .Y(n94) );
  INVX0_HVT U192 ( .A(n104), .Y(n105) );
  INVX0_HVT U212 ( .A(lcr[3]), .Y(n133) );
  INVX0_HVT U216 ( .A(n153), .Y(n126) );
  INVX0_HVT U232 ( .A(lcr[5]), .Y(n149) );
  HADDX1_HVT U234 ( .A0(lcr[4]), .B0(n150), .SO(n151) );
  INVX0_HVT U241 ( .A(n199), .Y(n214) );
  INVX0_HVT U256 ( .A(n213), .Y(n215) );
  INVX0_HVT U260 ( .A(n221), .Y(n222) );
  INVX0_RVT U265 ( .A(n229), .Y(n232) );
  INVX0_HVT U270 ( .A(n238), .Y(n246) );
  INVX0_HVT U273 ( .A(n243), .Y(n244) );
  INVX0_HVT U297 ( .A(wb_rst_i), .Y(n318) );
  NOR3X0_HVT U295 ( .A1(n13), .A2(rf_count[4]), .A3(rf_count[1]), .Y(n313) );
  MUX21X1_HVT U277 ( .A1(n253), .A2(n302), .S0(n252), .Y(n255) );
  NOR2X0_HVT U264 ( .A1(n228), .A2(n253), .Y(n233) );
  AO21X1_HVT U250 ( .A1(lcr[1]), .A2(n308), .A3(n207), .Y(n208) );
  AO22X1_HVT U233 ( .A1(rparity_xor), .A2(n149), .A3(rparity), .A4(lcr[5]), 
        .Y(n150) );
  NOR2X0_HVT U223 ( .A1(rbit_counter[2]), .A2(n135), .Y(n136) );
  OR2X1_HVT U217 ( .A1(n127), .A2(n126), .Y(n130) );
  OR2X1_HVT U215 ( .A1(n287), .A2(n238), .Y(n153) );
  NOR2X0_HVT U214 ( .A1(n133), .A2(n152), .Y(n127) );
  OR2X1_HVT U213 ( .A1(rbit_counter[2]), .A2(rbit_counter[1]), .Y(n124) );
  OA21X1_HVT U209 ( .A1(srx_pad_i), .A2(n273), .A3(rstate[3]), .Y(n120) );
  OR2X1_HVT U182 ( .A1(n94), .A2(n135), .Y(n213) );
  OR2X1_HVT U181 ( .A1(rbit_counter[0]), .A2(rbit_counter[1]), .Y(n135) );
  OR2X1_HVT U177 ( .A1(n333), .A2(n228), .Y(n92) );
  AOI21X1_HVT U176 ( .A1(lcr[1]), .A2(n89), .A3(n107), .Y(n228) );
  OR2X1_HVT U143 ( .A1(n66), .A2(n252), .Y(n223) );
  NAND2X0_HVT U142 ( .A1(n65), .A2(n64), .Y(n252) );
  NOR2X1_HVT U106 ( .A1(lcr[1]), .A2(n89), .Y(n107) );
  XOR3X1_HVT U94 ( .A1(rshift[1]), .A2(rparity), .A3(n29), .Y(n30) );
  XOR3X1_HVT U93 ( .A1(rshift[0]), .A2(rshift[7]), .A3(rshift[6]), .Y(n29) );
  XNOR2X1_HVT U92 ( .A1(rshift[3]), .A2(rshift[2]), .Y(n31) );
  XOR2X1_HVT U91 ( .A1(rshift[4]), .A2(rshift[5]), .Y(n32) );
  OR2X1_HVT U89 ( .A1(n123), .A2(n28), .Y(n34) );
  MUX21X1_RVT U63 ( .A1(srx_pad_i), .A2(rparity), .S0(n14), .Y(n190) );
  NOR2X0_HVT U51 ( .A1(rf_push_q), .A2(n311), .Y(rf_push_pulse) );
  OR2X1_HVT U29 ( .A1(n110), .A2(n109), .Y(n229) );
  OR3X1_HVT U16 ( .A1(rf_count[3]), .A2(rf_count[0]), .A3(rf_count[2]), .Y(n13) );
  DFFARX1_HVT rf_data_in_reg_5_ ( .D(n6), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[5]) );
  DFFASX1_HVT counter_t_reg_2_ ( .D(n155), .CLK(clk), .SETB(n318), .Q(
        counter_t[2]), .QN(n295) );
  DFFASX1_HVT counter_b_reg_0_ ( .D(n281), .CLK(clk), .SETB(n21), .Q(
        counter_b[0]), .QN(n301) );
  OR2X1_HVT U53 ( .A1(n301), .A2(n218), .Y(n219) );
  AND2X1_RVT U113 ( .A1(n269), .A2(counter_t[0]), .Y(n270) );
  AO22X1_HVT U31 ( .A1(lcr[3]), .A2(lcr[2]), .A3(n41), .A4(lcr[0]), .Y(n89) );
  AND2X1_HVT U61 ( .A1(n203), .A2(enable), .Y(n50) );
  OR2X1_RVT U108 ( .A1(counter_t[7]), .A2(n42), .Y(n91) );
  AND2X1_HVT U147 ( .A1(n218), .A2(n71), .Y(n221) );
  OR2X1_RVT U155 ( .A1(srx_pad_i), .A2(n74), .Y(n193) );
  AO22X1_HVT U159 ( .A1(srx_pad_i), .A2(n263), .A3(n218), .A4(n76), .Y(n78) );
  NOR2X0_HVT U160 ( .A1(n296), .A2(n224), .Y(n77) );
  OR2X1_HVT U169 ( .A1(rcounter16[1]), .A2(n250), .Y(n234) );
  AND2X1_RVT U189 ( .A1(n240), .A2(n247), .Y(n100) );
  NOR2X0_RVT U249 ( .A1(srx_pad_i), .A2(lcr[1]), .Y(n207) );
  AND2X1_RVT U262 ( .A1(n223), .A2(srx_pad_i), .Y(n226) );
  NOR2X0_HVT U263 ( .A1(n293), .A2(n224), .Y(n225) );
  AND2X1_HVT U272 ( .A1(n242), .A2(rstate[3]), .Y(n245) );
  AND2X1_HVT U282 ( .A1(n263), .A2(n314), .Y(n267) );
  INVX0_RVT U279 ( .A(n257), .Y(n271) );
  INVX0_HVT U149 ( .A(n218), .Y(n109) );
  NOR2X0_HVT U30 ( .A1(n269), .A2(n291), .Y(n265) );
  OAI22X1_RVT U26 ( .A1(n64), .A2(rshift[7]), .A3(lcr[0]), .A4(srx_pad_i), .Y(
        n46) );
  NOR2X0_HVT U25 ( .A1(n295), .A2(n260), .Y(n261) );
  DFFASX1_HVT counter_t_reg_5_ ( .D(n158), .CLK(clk), .SETB(n21), .Q(
        counter_t[5]), .QN(n291) );
  DFFASRX1_HVT counter_t_reg_6_ ( .D(n352), .CLK(clk), .RSTB(1'b1), .SETB(n318), .Q(counter_t[6]) );
  DFFARX1_HVT rf_data_in_reg_3_ ( .D(n4), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[3]) );
  DFFASX1_HVT counter_b_reg_4_ ( .D(n166), .CLK(clk), .SETB(n21), .Q(
        counter_b[4]), .QN(n296) );
  DFFASX1_HVT counter_b_reg_3_ ( .D(n165), .CLK(clk), .SETB(n21), .Q(
        counter_b[3]), .QN(n293) );
  INVX0_RVT U98 ( .A(n114), .Y(n262) );
  AND2X1_HVT U248 ( .A1(n50), .A2(n202), .Y(n335) );
  INVX0_RVT U281 ( .A(n258), .Y(n260) );
  OR2X1_HVT U168 ( .A1(n248), .A2(rcounter16[0]), .Y(n250) );
  AND2X1_RVT U116 ( .A1(n99), .A2(n216), .Y(n205) );
  DFFARX1_HVT rf_data_in_reg_1_ ( .D(n3), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[1]) );
  DFFASX1_HVT counter_t_reg_4_ ( .D(n157), .CLK(clk), .SETB(n318), .Q(
        counter_t[4]), .QN(n294) );
  NOR2X0_RVT U54 ( .A1(counter_b[3]), .A2(n222), .Y(n227) );
  OR2X1_HVT U55 ( .A1(counter_b[0]), .A2(n109), .Y(n220) );
  INVX0_LVT U103 ( .A(n314), .Y(n333) );
  INVX0_HVT U132 ( .A(enable), .Y(n198) );
  INVX0_RVT U202 ( .A(n269), .Y(n358) );
  INVX0_RVT U204 ( .A(n264), .Y(n119) );
  NOR2X0_HVT U305 ( .A1(n294), .A2(n117), .Y(n373) );
  AND2X1_HVT U201 ( .A1(n358), .A2(counter_t[7]), .Y(n357) );
  INVX0_RVT U184 ( .A(n356), .Y(n372) );
  INVX0_RVT U188 ( .A(n99), .Y(n240) );
  OR2X1_HVT U171 ( .A1(n236), .A2(n391), .Y(n180) );
  NOR2X0_HVT U280 ( .A1(n292), .A2(n271), .Y(n259) );
  AND2X1_HVT U269 ( .A1(n250), .A2(rcounter16[1]), .Y(n235) );
  AO22X1_RVT U237 ( .A1(enable), .A2(n196), .A3(rparity_error), .A4(n195), .Y(
        n169) );
  OR3X1_HVT U52 ( .A1(n402), .A2(n362), .A3(n273), .Y(n276) );
  OR2X1_RVT U238 ( .A1(n198), .A2(n197), .Y(n199) );
  INVX0_HVT U268 ( .A(n234), .Y(n237) );
  INVX1_HVT U118 ( .A(n202), .Y(n210) );
  INVX0_HVT U80 ( .A(n50), .Y(n19) );
  DFFASX1_HVT counter_t_reg_1_ ( .D(n154), .CLK(clk), .SETB(n21), .Q(
        counter_t[1]), .QN(n292) );
  DFFASRX1_HVT rf_push_q_reg ( .D(rf_push), .CLK(clk), .RSTB(n21), .SETB(1'b1), 
        .Q(rf_push_q) );
  DFFARX1_HVT rf_data_in_reg_4_ ( .D(n5), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[4]) );
  OR3X1_HVT U38 ( .A1(counter_t[7]), .A2(counter_t[8]), .A3(counter_t[9]), .Y(
        n38) );
  OR3X1_RVT U121 ( .A1(n347), .A2(n137), .A3(n136), .Y(n197) );
  OR3X1_HVT U5 ( .A1(counter_t[5]), .A2(counter_t[6]), .A3(n63), .Y(n40) );
  OR3X1_HVT U28 ( .A1(counter_t[0]), .A2(counter_t[4]), .A3(n376), .Y(n63) );
  OR2X1_RVT U69 ( .A1(n347), .A2(n243), .Y(n61) );
  NOR3X0_RVT U84 ( .A1(n347), .A2(rstate[3]), .A3(rstate[0]), .Y(n247) );
  NOR2X1_RVT U86 ( .A1(n300), .A2(n276), .Y(N170) );
  OR3X1_RVT U117 ( .A1(n259), .A2(n314), .A3(n260), .Y(n154) );
  OR3X1_HVT U162 ( .A1(counter_t[3]), .A2(counter_t[1]), .A3(counter_t[2]), 
        .Y(n376) );
  NAND3X0_RVT U197 ( .A1(n367), .A2(n324), .A3(n382), .Y(n383) );
  NAND2X0_HVT U306 ( .A1(n380), .A2(n369), .Y(n368) );
  OR2X1_LVT U258 ( .A1(n239), .A2(n23), .Y(n388) );
  OR2X1_HVT U231 ( .A1(counter_b[5]), .A2(n104), .Y(n110) );
  OR2X1_RVT U178 ( .A1(n115), .A2(n314), .Y(n379) );
  NOR2X0_HVT U156 ( .A1(n38), .A2(n40), .Y(n374) );
  NOR2X0_RVT U66 ( .A1(n287), .A2(n128), .Y(n129) );
  OR2X1_RVT U220 ( .A1(n132), .A2(n131), .Y(n188) );
  AOI21X1_RVT U211 ( .A1(n123), .A2(n122), .A3(n142), .Y(n132) );
  AOI21X1_RVT U135 ( .A1(n238), .A2(n61), .A3(n142), .Y(n62) );
  AO21X1_RVT U136 ( .A1(n142), .A2(rstate[3]), .A3(n62), .Y(n183) );
  NOR2X0_RVT U286 ( .A1(n303), .A2(n276), .Y(N172) );
  NOR2X0_RVT U287 ( .A1(n283), .A2(n276), .Y(N173) );
  NOR2X0_RVT U288 ( .A1(n304), .A2(n276), .Y(N174) );
  NOR2X0_RVT U289 ( .A1(n282), .A2(n276), .Y(N175) );
  NOR2X0_RVT U290 ( .A1(n302), .A2(n276), .Y(N177) );
  NOR2X0_RVT U291 ( .A1(n308), .A2(n276), .Y(N178) );
  NOR2X0_RVT U22 ( .A1(n305), .A2(n276), .Y(N176) );
  OR3X1_HVT U102 ( .A1(n313), .A2(rf_pop), .A3(rf_push_pulse), .Y(n314) );
  NOR4X1_HVT U60 ( .A1(rcounter16[3]), .A2(n278), .A3(n279), .A4(n285), .Y(
        n203) );
  AND2X1_HVT U115 ( .A1(n247), .A2(n44), .Y(n216) );
  OR2X1_RVT U127 ( .A1(rstate[1]), .A2(n203), .Y(n53) );
  NOR3X0_RVT U183 ( .A1(rstate[1]), .A2(srx_pad_i), .A3(n243), .Y(n95) );
  OR2X1_RVT U79 ( .A1(rstate[1]), .A2(n137), .Y(n238) );
  OA21X1_RVT U129 ( .A1(rstate[1]), .A2(n99), .A3(rstate[3]), .Y(n55) );
  DFFASX1_HVT counter_t_reg_3_ ( .D(n156), .CLK(clk), .SETB(n21), .Q(
        counter_t[3]) );
  DFFARX1_HVT rf_data_in_reg_6_ ( .D(n7), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[6]) );
  OR3X1_RVT U3 ( .A1(n314), .A2(n262), .A3(n261), .Y(n155) );
  INVX0_RVT U40 ( .A(n364), .Y(n361) );
  AOI21X1_RVT U42 ( .A1(counter_b[5]), .A2(n218), .A3(n230), .Y(n108) );
  AND2X1_HVT U43 ( .A1(n218), .A2(n239), .Y(n370) );
  NOR2X1_RVT U83 ( .A1(counter_t[3]), .A2(n114), .Y(n117) );
  AOI21X1_RVT U99 ( .A1(n50), .A2(n49), .A3(n205), .Y(n52) );
  NOR2X1_RVT U104 ( .A1(n83), .A2(n248), .Y(n236) );
  OA21X1_HVT U123 ( .A1(counter_b[1]), .A2(n220), .A3(counter_b[2]), .Y(n72)
         );
  AO21X1_RVT U126 ( .A1(n264), .A2(counter_t[5]), .A3(n69), .Y(n158) );
  NAND3X0_RVT U133 ( .A1(n93), .A2(n92), .A3(n91), .Y(n160) );
  AO221X1_RVT U139 ( .A1(rbit_counter[2]), .A2(rbit_counter[1]), .A3(
        rbit_counter[2]), .A4(n217), .A5(n216), .Y(n185) );
  OR2X1_RVT U145 ( .A1(n224), .A2(n72), .Y(n164) );
  NOR2X1_RVT U150 ( .A1(n310), .A2(rstate[0]), .Y(n390) );
  AO21X1_HVT U152 ( .A1(rf_data_in[2]), .A2(n1), .A3(n354), .Y(n392) );
  AO22X1_RVT U167 ( .A1(n369), .A2(n102), .A3(rstate[2]), .A4(n101), .Y(n393)
         );
  OR3X1_HVT U170 ( .A1(n272), .A2(n347), .A3(n273), .Y(n394) );
  INVX0_LVT U221 ( .A(n272), .Y(n402) );
  INVX0_HVT U259 ( .A(n137), .Y(n397) );
  INVX0_HVT U307 ( .A(n387), .Y(n23) );
  uart_rfifo_opt2 fifo_rx ( .clk(clk), .wb_rst_i(wb_rst_i), .data_in(
        rf_data_in), .data_out(rf_data_out), .push(rf_push_pulse), .pop(rf_pop), .overrun(rf_overrun), .count(rf_count), .error_bit(rf_error_bit), 
        .fifo_reset(rx_reset), .reset_status(lsr_mask) );
  AO21X1_HVT U308 ( .A1(n403), .A2(n402), .A3(n362), .Y(n387) );
  INVX0_HVT U300 ( .A(enable), .Y(n399) );
  OR2X1_RVT U278 ( .A1(n370), .A2(n128), .Y(n369) );
  INVX0_RVT U275 ( .A(n369), .Y(n142) );
  NAND2X0_RVT U266 ( .A1(n397), .A2(n400), .Y(n324) );
  AND2X1_RVT U251 ( .A1(n390), .A2(n394), .Y(n396) );
  NOR4X1_HVT U240 ( .A1(rcounter16[2]), .A2(rcounter16[1]), .A3(rcounter16[3]), 
        .A4(rcounter16[0]), .Y(n99) );
  OR3X1_HVT U56 ( .A1(n198), .A2(n314), .A3(n374), .Y(n269) );
  OR3X1_RVT U101 ( .A1(n268), .A2(n267), .A3(n378), .Y(n352) );
  MUX21X1_RVT U47 ( .A1(rframing_error), .A2(n253), .S0(n20), .Y(n189) );
  OR2X1_HVT U78 ( .A1(n284), .A2(rstate[3]), .Y(n137) );
  AND2X1_HVT U111 ( .A1(n247), .A2(n284), .Y(n202) );
  OR2X1_RVT U173 ( .A1(n86), .A2(n85), .Y(n87) );
  AO22X1_RVT U174 ( .A1(n314), .A2(n111), .A3(n87), .A4(counter_t[9]), .Y(n162) );
  OR2X1_RVT U175 ( .A1(n309), .A2(n372), .Y(n93) );
  AO21X1_RVT U186 ( .A1(n241), .A2(rstate[3]), .A3(n380), .Y(n97) );
  OR2X1_RVT U208 ( .A1(n119), .A2(n373), .Y(n157) );
  AO21X1_RVT U271 ( .A1(n241), .A2(n240), .A3(n239), .Y(n242) );
  AO21X1_RVT U199 ( .A1(n85), .A2(counter_t[8]), .A3(n43), .Y(n161) );
  OAI22X1_RVT U21 ( .A1(n68), .A2(counter_t[5]), .A3(n333), .A4(n67), .Y(n69)
         );
  NOR2X0_HVT U235 ( .A1(n153), .A2(n151), .Y(n196) );
  OAI22X1_RVT U65 ( .A1(n333), .A2(n111), .A3(counter_t[8]), .A4(n91), .Y(n43)
         );
  NOR2X0_RVT U70 ( .A1(n302), .A2(n206), .Y(n212) );
  AO21X1_RVT U97 ( .A1(n48), .A2(rshift[6]), .A3(n47), .Y(n172) );
  AND2X1_RVT U299 ( .A1(n368), .A2(n197), .Y(n367) );
  AND2X1_LVT U194 ( .A1(n42), .A2(n333), .Y(n356) );
  OR2X1_RVT U191 ( .A1(n357), .A2(n356), .Y(n85) );
  OR2X1_RVT U131 ( .A1(n335), .A2(n205), .Y(n355) );
  OR2X1_RVT U218 ( .A1(n40), .A2(n269), .Y(n42) );
  AOI21X1_RVT U88 ( .A1(n50), .A2(n45), .A3(n205), .Y(n48) );
  OAI21X1_RVT U58 ( .A1(n36), .A2(n307), .A3(n35), .Y(n170) );
  OR2X1_RVT U68 ( .A1(counter_b[6]), .A2(counter_b[7]), .Y(n16) );
  OR2X1_RVT U71 ( .A1(rstate[1]), .A2(rstate[2]), .Y(n22) );
  OR2X1_RVT U96 ( .A1(n34), .A2(n33), .Y(n35) );
  AO21X1_RVT U125 ( .A1(n52), .A2(rshift[7]), .A3(n51), .Y(n171) );
  OR2X1_HVT U187 ( .A1(n98), .A2(n97), .Y(n102) );
  OR2X1_RVT U198 ( .A1(n113), .A2(n112), .Y(n168) );
  OR2X1_RVT U219 ( .A1(n130), .A2(n129), .Y(n131) );
  NOR2X0_HVT U230 ( .A1(rcounter16[2]), .A2(n234), .Y(n146) );
  AO221X1_RVT U236 ( .A1(n153), .A2(lcr[3]), .A3(n153), .A4(n152), .A5(n198), 
        .Y(n195) );
  AO222X1_RVT U257 ( .A1(n217), .A2(rbit_counter[1]), .A3(lcr[1]), .A4(n216), 
        .A5(n215), .A6(n214), .Y(n186) );
  OR3X1_RVT U267 ( .A1(n233), .A2(n232), .A3(n231), .Y(n167) );
  NOR4X1_RVT U274 ( .A1(n247), .A2(n246), .A3(n245), .A4(n244), .Y(n251) );
  NOR2X0_RVT U292 ( .A1(n288), .A2(n276), .Y(N169) );
  AND2X1_RVT U33 ( .A1(n239), .A2(n310), .Y(n80) );
  INVX0_LVT U247 ( .A(n209), .Y(n206) );
  NOR3X0_RVT U154 ( .A1(n210), .A2(n209), .A3(n208), .Y(n329) );
  NOR3X0_RVT U74 ( .A1(n347), .A2(n137), .A3(n287), .Y(n200) );
  NOR2X0_RVT U37 ( .A1(n121), .A2(rframing_error), .Y(n81) );
  OAI22X1_RVT U46 ( .A1(n355), .A2(n304), .A3(n282), .A4(n254), .Y(n176) );
  OAI22X1_RVT U255 ( .A1(n355), .A2(n283), .A3(n304), .A4(n254), .Y(n177) );
  OAI22X1_RVT U254 ( .A1(n355), .A2(n282), .A3(n305), .A4(n254), .Y(n175) );
  OAI22X1_RVT U253 ( .A1(n355), .A2(n303), .A3(n283), .A4(n254), .Y(n178) );
  OR2X1_RVT U252 ( .A1(n212), .A2(n329), .Y(n173) );
  OR2X1_RVT U164 ( .A1(n310), .A2(n241), .Y(n82) );
  OR2X1_RVT U161 ( .A1(n78), .A2(n77), .Y(n166) );
  AND3X1_RVT U122 ( .A1(n202), .A2(lcr[0]), .A3(lcr[1]), .Y(n49) );
  NOR3X0_RVT U81 ( .A1(rstate[0]), .A2(n238), .A3(n19), .Y(n20) );
  NOR2X0_HVT U24 ( .A1(n297), .A2(n146), .Y(n147) );
  OAI22X1_RVT U130 ( .A1(n305), .A2(n355), .A3(n255), .A4(n254), .Y(n174) );
  AND2X1_RVT U67 ( .A1(n230), .A2(counter_b[5]), .Y(n231) );
  AND2X1_RVT U44 ( .A1(n202), .A2(lcr[1]), .Y(n45) );
  NAND2X0_RVT U62 ( .A1(n11), .A2(n50), .Y(n14) );
  NOR3X0_RVT U120 ( .A1(n210), .A2(n46), .A3(n48), .Y(n47) );
  OA21X1_LVT U172 ( .A1(n265), .A2(n264), .A3(counter_t[6]), .Y(n378) );
  AND2X1_HVT U296 ( .A1(n377), .A2(n353), .Y(n364) );
  MUX21X1_HVT U298 ( .A1(rf_data_in[9]), .A2(N178), .S0(n317), .Y(n10) );
  OR2X1_LVT U304 ( .A1(counter_t[0]), .A2(n269), .Y(n257) );
  OR2X1_RVT U185 ( .A1(n363), .A2(n360), .Y(n381) );
  OR2X1_RVT U179 ( .A1(n202), .A2(n95), .Y(n380) );
  OR2X1_HVT U138 ( .A1(n148), .A2(n147), .Y(n191) );
  OAI22X1_RVT U124 ( .A1(n107), .A2(n253), .A3(n289), .A4(n106), .Y(n194) );
  XOR2X1_RVT U110 ( .A1(n220), .A2(n73), .Y(n74) );
  NOR3X0_RVT U109 ( .A1(n253), .A2(n210), .A3(n52), .Y(n51) );
  NOR2X1_RVT U100 ( .A1(n299), .A2(n108), .Y(n113) );
  OR2X1_RVT U64 ( .A1(rstate[0]), .A2(rstate[2]), .Y(n121) );
  INVX0_RVT U245 ( .A(n335), .Y(n254) );
  OAI22X1_HVT U276 ( .A1(n251), .A2(n250), .A3(n285), .A4(n371), .Y(n192) );
  NOR2X1_RVT U114 ( .A1(n284), .A2(n198), .Y(n44) );
  AND2X1_RVT U207 ( .A1(n68), .A2(n333), .Y(n264) );
  OR2X1_RVT U224 ( .A1(counter_t[1]), .A2(n257), .Y(n258) );
  NAND3X0_RVT U76 ( .A1(n220), .A2(n219), .A3(n253), .Y(n281) );
  OR2X1_RVT U73 ( .A1(n100), .A2(n142), .Y(n101) );
  NOR2X1_RVT U57 ( .A1(n362), .A2(n361), .Y(n360) );
  OR2X1_RVT U20 ( .A1(n347), .A2(n310), .Y(n15) );
  OR2X1_RVT U196 ( .A1(counter_t[2]), .A2(n258), .Y(n114) );
  AO22X1_HVT U4 ( .A1(n317), .A2(N169), .A3(n1), .A4(rf_data_in[0]), .Y(n12)
         );
  AO22X1_HVT U7 ( .A1(n317), .A2(N177), .A3(n1), .A4(rf_data_in[8]), .Y(n9) );
  AO22X1_HVT U8 ( .A1(n317), .A2(N176), .A3(n1), .A4(rf_data_in[7]), .Y(n8) );
  AO22X1_HVT U10 ( .A1(n317), .A2(N174), .A3(n1), .A4(rf_data_in[5]), .Y(n6)
         );
  AO22X1_HVT U11 ( .A1(n317), .A2(N173), .A3(n1), .A4(rf_data_in[4]), .Y(n5)
         );
  AO22X1_HVT U12 ( .A1(n317), .A2(N172), .A3(n1), .A4(rf_data_in[3]), .Y(n4)
         );
  AO22X1_HVT U13 ( .A1(n317), .A2(N170), .A3(n1), .A4(rf_data_in[1]), .Y(n3)
         );
  NOR2X0_RVT U294 ( .A1(n1), .A2(n277), .Y(n316) );
  OR2X1_RVT U206 ( .A1(n117), .A2(n379), .Y(n156) );
  OR2X1_RVT U137 ( .A1(n63), .A2(n269), .Y(n68) );
  AO21X1_RVT U17 ( .A1(rf_data_in[10]), .A2(n1), .A3(n316), .Y(n306) );
  AO22X1_HVT U128 ( .A1(n317), .A2(N175), .A3(n1), .A4(rf_data_in[6]), .Y(n7)
         );
  OR2X1_RVT U210 ( .A1(n121), .A2(n120), .Y(n122) );
  AO21X1_HVT U239 ( .A1(rbit_counter[0]), .A2(n200), .A3(n199), .Y(n217) );
  OA222X1_HVT U242 ( .A1(rbit_counter[0]), .A2(n200), .A3(rbit_counter[0]), 
        .A4(n214), .A5(n199), .A6(n286), .Y(n201) );
  INVX0_HVT U87 ( .A(n239), .Y(n123) );
  DFFARX1_HVT rf_data_in_reg_7_ ( .D(n8), .CLK(clk), .RSTB(n21), .Q(
        rf_data_in[7]) );
  DFFASX1_RVT counter_b_reg_7_ ( .D(n194), .CLK(clk), .SETB(n21), .Q(
        counter_b[7]), .QN(n289) );
  INVX1_RVT U134 ( .A(n371), .Y(n248) );
  OR3X1_HVT U35 ( .A1(rstate[3]), .A2(n287), .A3(rstate[2]), .Y(n243) );
  AOI21X1_RVT U193 ( .A1(n218), .A2(n105), .A3(srx_pad_i), .Y(n230) );
  INVX1_RVT U9 ( .A(n317), .Y(n1) );
  OR3X1_HVT U15 ( .A1(n237), .A2(n236), .A3(n235), .Y(n181) );
  OR3X1_HVT U14 ( .A1(n271), .A2(n314), .A3(n270), .Y(n163) );
  OR3X1_HVT U75 ( .A1(n227), .A2(n226), .A3(n225), .Y(n165) );
  NOR3X0_HVT U112 ( .A1(n403), .A2(n362), .A3(n1), .Y(n354) );
  INVX0_HVT U6 ( .A(lcr[2]), .Y(n66) );
  OR3X1_RVT U18 ( .A1(counter_b[3]), .A2(counter_b[4]), .A3(n70), .Y(n104) );
  AO21X1_HVT U19 ( .A1(n203), .A2(n310), .A3(rstate[2]), .Y(n54) );
  OR2X1_RVT U23 ( .A1(n288), .A2(srx_pad_i), .Y(n272) );
  AO22X1_HVT U32 ( .A1(n99), .A2(n247), .A3(n53), .A4(rstate[2]), .Y(n59) );
  OR2X1_HVT U36 ( .A1(lcr[3]), .A2(lcr[2]), .Y(n41) );
  OR2X1_HVT U39 ( .A1(n23), .A2(n241), .Y(n353) );
  OR2X1_HVT U41 ( .A1(n198), .A2(n310), .Y(n28) );
  NOR2X0_HVT U48 ( .A1(rstate[0]), .A2(n22), .Y(n239) );
  AND2X1_HVT U50 ( .A1(counter_t[3]), .A2(n114), .Y(n115) );
  OR2X1_HVT U82 ( .A1(n312), .A2(n276), .Y(n277) );
  XOR3X1_RVT U85 ( .A1(n32), .A2(n31), .A3(n30), .Y(n33) );
  NOR2X0_HVT U95 ( .A1(n240), .A2(n248), .Y(n145) );
  NOR3X0_HVT U105 ( .A1(n80), .A2(n79), .A3(n200), .Y(n83) );
  NOR2X0_HVT U140 ( .A1(n269), .A2(n298), .Y(n86) );
  OA21X1_HVT U148 ( .A1(n299), .A2(n109), .A3(n108), .Y(n106) );
  INVX0_HVT U151 ( .A(n42), .Y(n268) );
  NOR2X0_HVT U163 ( .A1(n311), .A2(n364), .Y(n363) );
  OAI22X1_HVT U166 ( .A1(n111), .A2(n253), .A3(counter_b[6]), .A4(n229), .Y(
        n112) );
  OR2X1_HVT U190 ( .A1(n145), .A2(n236), .Y(n148) );
  OR2X1_HVT U195 ( .A1(n347), .A2(n369), .Y(n382) );
  OR2X1_HVT U200 ( .A1(srx_pad_i), .A2(n221), .Y(n224) );
  AO21X1_HVT U203 ( .A1(lcr[0]), .A2(n216), .A3(n201), .Y(n187) );
  OA21X1_HVT U205 ( .A1(n55), .A2(n54), .A3(rstate[0]), .Y(n404) );
  NAND2X0_HVT U222 ( .A1(n387), .A2(rstate[3]), .Y(n405) );
  INVX0_HVT U226 ( .A(n403), .Y(n273) );
  OR2X1_RVT U227 ( .A1(n16), .A2(n110), .Y(n403) );
  NOR2X0_HVT U228 ( .A1(n121), .A2(n15), .Y(n79) );
  INVX0_HVT U229 ( .A(n79), .Y(n362) );
  OAI21X1_HVT U243 ( .A1(n252), .A2(n205), .A3(n355), .Y(n209) );
  XOR3X2_HVT U244 ( .A1(lcr[3]), .A2(lcr[2]), .A3(lcr[0]), .Y(n263) );
  INVX0_RVT U246 ( .A(n406), .Y(n391) );
  XOR2X1_RVT U261 ( .A1(n234), .A2(rcounter16[2]), .Y(n406) );
  AO22X1_LVT U283 ( .A1(n82), .A2(enable), .A3(n218), .A4(n81), .Y(n371) );
  AND3X1_LVT U284 ( .A1(n408), .A2(n403), .A3(n407), .Y(n218) );
  INVX0_LVT U285 ( .A(n198), .Y(n407) );
  INVX1_LVT U293 ( .A(srx_pad_i), .Y(n408) );
  OR3X1_LVT U301 ( .A1(counter_b[1]), .A2(counter_b[2]), .A3(counter_b[0]), 
        .Y(n70) );
  AND2X1_LVT U302 ( .A1(n377), .A2(n388), .Y(n317) );
  AND2X1_LVT U303 ( .A1(n405), .A2(n409), .Y(n377) );
  INVX0_LVT U309 ( .A(n198), .Y(n409) );
  INVX0_HVT U310 ( .A(n410), .Y(n400) );
  AOI22X1_RVT U311 ( .A1(n287), .A2(n369), .A3(lcr[3]), .A4(rstate[1]), .Y(
        n410) );
  OA21X1_RVT U312 ( .A1(n396), .A2(n412), .A3(n411), .Y(n128) );
  INVX0_HVT U313 ( .A(n399), .Y(n411) );
  OR2X1_RVT U314 ( .A1(n59), .A2(n404), .Y(n412) );
endmodule


module uart_regs_opt2 ( clk, wb_rst_i, wb_addr_i, wb_dat_i, wb_dat_o, wb_we_i, 
        modem_inputs, stx_pad_o, srx_pad_i, ier, iir, fcr, mcr, lcr, msr, lsr, 
        rf_count, tf_count, tstate, rstate, rts_pad_o, dtr_pad_o, int_o, 
        wb_re_i_BAR );
  input [4:0] wb_addr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input [3:0] modem_inputs;
  output [3:0] ier;
  output [3:0] iir;
  output [1:0] fcr;
  output [4:0] mcr;
  output [7:0] lcr;
  output [7:0] msr;
  output [7:0] lsr;
  output [4:0] rf_count;
  output [4:0] tf_count;
  output [2:0] tstate;
  output [3:0] rstate;
  input clk, wb_rst_i, wb_we_i, srx_pad_i, wb_re_i_BAR;
  output stx_pad_o, rts_pad_o, dtr_pad_o, int_o;
  wire   n432, dcd_c, ri_c, dsr_c, cts_c, enable, serial_out, srx_pad,
         msi_reset, N129, N130, start_dlc, N138, N152, N153, N154, N155, lsr0,
         lsr6, lsr7, N159, lsr1_d, N163, lsr2_d, N167, lsr3_d, N171, lsr4_d,
         N175, lsr5_d, N178, N180, N184, N221, N222, N223, N224, N225, N226,
         N227, N228, N229, N230, N231, N232, N236, N237, rls_int, rda_int,
         thre_int, ms_int, ti_int, rda_int_d, rls_int_pnd, N355, rda_int_pnd,
         N364, thre_int_pnd, N371, ms_int_pnd, N377, ti_int_pnd, N383, N396,
         N409, N410, N411, N412, n2, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n197, n198, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n226, n227,
         n228, n229, n4, n5, n9, n10, n12, n14, n15, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n70,
         n73, n74, n75, n76, n78, n79, n80, n81, n82, n84, n85, n86, n87, n89,
         n90, n92, n93, n94, n95, n96, n97, n98, n99, n103, n104, n106, n108,
         n109, n110, n113, n114, n115, n117, n118, n119, n120, n121, n122,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n152, n153, n154, n155, n156, n157, n158,
         n159, n161, n162, n163, n164, n165, n166, n170, n224, n225, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n272, n274, n275, n277, n279, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n324, n325, n326, n327, n328, n329, n330, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n344, n345,
         n346, n347, n348, n349, n350, n351, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n426, n427, n428, n429, n430, n431, n435, n437, n441, n443,
         n444, n445, n446, n447, n448, n449, n453, n456, n457, n465, n466,
         n469, n470, n471, n473, n474, n475, n479, n482, n490, n500, n503,
         n504, n508, n524, n527, n530, n531, n535, n537, n540, n542, n544,
         n549, n550, n557, n558, n566, n570, n571, n576, n579, n580, n581,
         n584, n588, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3;
  wire   [9:0] counter_t;
  wire   [15:0] dl;
  wire   [7:2] scratch;
  wire   [3:0] delayed_modem_signals;
  wire   [14:0] dlc;
  wire   [7:0] block_cnt;
  tri   clk;
  tri   wb_rst_i;
  tri   [7:0] wb_dat_i;
  tri   [4:0] rf_count;
  tri   [4:0] tf_count;
  tri   tf_push;
  tri   tx_reset;
  tri   lsr_mask;
  tri   rf_pop;
  tri   [10:0] rf_data_out;
  tri   rf_error_bit;
  tri   rf_overrun;
  tri   rx_reset;
  tri   rf_push_pulse;
  assign rts_pad_o = mcr[1];
  assign dtr_pad_o = mcr[0];

  DFFARX1_HVT scratch_reg_7_ ( .D(n182), .CLK(clk), .RSTB(n10), .Q(scratch[7]), 
        .QN(n374) );
  DFFARX1_HVT scratch_reg_6_ ( .D(n181), .CLK(clk), .RSTB(n427), .Q(scratch[6]), .QN(n373) );
  DFFARX1_HVT scratch_reg_5_ ( .D(n180), .CLK(clk), .RSTB(n449), .Q(scratch[5]), .QN(n372) );
  DFFARX1_HVT scratch_reg_4_ ( .D(n179), .CLK(clk), .RSTB(n427), .QN(n371) );
  DFFARX1_HVT scratch_reg_3_ ( .D(n178), .CLK(clk), .RSTB(n426), .QN(n368) );
  DFFARX1_HVT scratch_reg_2_ ( .D(n177), .CLK(clk), .RSTB(n10), .Q(scratch[2]), 
        .QN(n370) );
  DFFARX1_HVT scratch_reg_1_ ( .D(n176), .CLK(clk), .RSTB(n10), .QN(n369) );
  DFFARX1_HVT scratch_reg_0_ ( .D(n175), .CLK(clk), .RSTB(n449), .QN(n417) );
  DFFARX1_HVT dl_reg_15_ ( .D(n222), .CLK(clk), .RSTB(n426), .Q(dl[15]), .QN(
        n402) );
  DFFARX1_HVT dl_reg_14_ ( .D(n221), .CLK(clk), .RSTB(n448), .Q(dl[14]), .QN(
        n396) );
  DFFARX1_HVT dl_reg_13_ ( .D(n220), .CLK(clk), .RSTB(n426), .Q(dl[13]), .QN(
        n395) );
  DFFARX1_HVT dl_reg_12_ ( .D(n219), .CLK(clk), .RSTB(n426), .Q(dl[12]), .QN(
        n394) );
  DFFARX1_HVT dl_reg_11_ ( .D(n218), .CLK(clk), .RSTB(n426), .Q(dl[11]), .QN(
        n393) );
  DFFARX1_HVT dl_reg_10_ ( .D(n217), .CLK(clk), .RSTB(n426), .Q(dl[10]), .QN(
        n392) );
  DFFARX1_HVT dl_reg_9_ ( .D(n216), .CLK(clk), .RSTB(n426), .Q(dl[9]), .QN(
        n390) );
  DFFARX1_HVT dl_reg_8_ ( .D(n215), .CLK(clk), .RSTB(n426), .Q(dl[8]), .QN(
        n386) );
  DFFARX1_HVT dl_reg_7_ ( .D(n210), .CLK(clk), .RSTB(n426), .Q(dl[7]), .QN(
        n391) );
  DFFARX1_HVT dl_reg_6_ ( .D(n209), .CLK(clk), .RSTB(n447), .Q(dl[6]), .QN(
        n388) );
  DFFARX1_HVT dl_reg_5_ ( .D(n208), .CLK(clk), .RSTB(n448), .Q(dl[5]), .QN(
        n384) );
  DFFARX1_HVT dl_reg_4_ ( .D(n207), .CLK(clk), .RSTB(n10), .Q(dl[4]), .QN(n383) );
  DFFARX1_HVT dl_reg_3_ ( .D(n206), .CLK(clk), .RSTB(n426), .Q(dl[3]), .QN(
        n382) );
  DFFARX1_HVT dl_reg_2_ ( .D(n205), .CLK(clk), .RSTB(n427), .Q(dl[2]), .QN(
        n381) );
  DFFARX1_HVT dl_reg_1_ ( .D(n204), .CLK(clk), .RSTB(n427), .Q(dl[1]), .QN(
        n375) );
  DFFARX1_HVT dl_reg_0_ ( .D(n203), .CLK(clk), .RSTB(n427), .Q(dl[0]), .QN(
        n380) );
  DFFARX1_HVT start_dlc_reg ( .D(N138), .CLK(clk), .RSTB(n448), .Q(start_dlc)
         );
  DFFARX1_HVT delayed_modem_signals_reg_3_ ( .D(n229), .CLK(clk), .RSTB(n447), 
        .Q(delayed_modem_signals[3]), .QN(n379) );
  DFFARX1_HVT delayed_modem_signals_reg_2_ ( .D(n228), .CLK(clk), .RSTB(n427), 
        .Q(delayed_modem_signals[2]), .QN(n378) );
  DFFARX1_HVT delayed_modem_signals_reg_1_ ( .D(n227), .CLK(clk), .RSTB(n427), 
        .Q(delayed_modem_signals[1]), .QN(n377) );
  DFFARX1_HVT delayed_modem_signals_reg_0_ ( .D(n226), .CLK(clk), .RSTB(n10), 
        .Q(delayed_modem_signals[0]), .QN(n376) );
  DFFARX1_HVT msr_reg_7_ ( .D(dcd_c), .CLK(clk), .RSTB(n449), .Q(msr[7]) );
  DFFARX1_HVT msr_reg_6_ ( .D(ri_c), .CLK(clk), .RSTB(n448), .Q(msr[6]) );
  DFFARX1_HVT msr_reg_5_ ( .D(dsr_c), .CLK(clk), .RSTB(n449), .Q(msr[5]) );
  DFFARX1_HVT msr_reg_4_ ( .D(cts_c), .CLK(clk), .RSTB(n447), .Q(msr[4]), .QN(
        n594) );
  DFFARX1_HVT msr_reg_3_ ( .D(N155), .CLK(clk), .RSTB(n10), .Q(msr[3]) );
  DFFARX1_HVT msr_reg_2_ ( .D(N154), .CLK(clk), .RSTB(n10), .Q(msr[2]) );
  DFFARX1_HVT msr_reg_1_ ( .D(N153), .CLK(clk), .RSTB(n10), .Q(msr[1]) );
  DFFARX1_HVT msr_reg_0_ ( .D(N152), .CLK(clk), .RSTB(n10), .Q(msr[0]) );
  DFFARX1_HVT dlc_reg_15_ ( .D(N236), .CLK(clk), .RSTB(n427), .QN(n403) );
  DFFARX1_HVT dlc_reg_14_ ( .D(n602), .CLK(clk), .RSTB(n426), .Q(dlc[14]) );
  DFFARX1_HVT dlc_reg_13_ ( .D(n604), .CLK(clk), .RSTB(n426), .Q(dlc[13]) );
  DFFARX1_HVT dlc_reg_12_ ( .D(n598), .CLK(clk), .RSTB(n426), .Q(dlc[12]) );
  DFFARX1_HVT dlc_reg_11_ ( .D(N232), .CLK(clk), .RSTB(n426), .Q(dlc[11]) );
  DFFARX1_HVT dlc_reg_10_ ( .D(N231), .CLK(clk), .RSTB(n426), .Q(dlc[10]) );
  DFFARX1_HVT dlc_reg_9_ ( .D(N230), .CLK(clk), .RSTB(n449), .Q(dlc[9]) );
  DFFARX1_HVT dlc_reg_8_ ( .D(N229), .CLK(clk), .RSTB(n447), .Q(dlc[8]) );
  DFFARX1_HVT dlc_reg_7_ ( .D(N228), .CLK(clk), .RSTB(n448), .Q(dlc[7]) );
  DFFARX1_HVT dlc_reg_6_ ( .D(N227), .CLK(clk), .RSTB(n10), .Q(dlc[6]) );
  DFFARX1_HVT dlc_reg_5_ ( .D(N226), .CLK(clk), .RSTB(n427), .Q(dlc[5]) );
  DFFARX1_HVT dlc_reg_4_ ( .D(N225), .CLK(clk), .RSTB(n449), .Q(dlc[4]) );
  DFFARX1_HVT dlc_reg_3_ ( .D(N224), .CLK(clk), .RSTB(n427), .Q(dlc[3]) );
  DFFARX1_HVT dlc_reg_2_ ( .D(N223), .CLK(clk), .RSTB(n427), .Q(dlc[2]) );
  DFFARX1_HVT dlc_reg_1_ ( .D(N222), .CLK(clk), .RSTB(n427), .Q(dlc[1]) );
  DFFARX1_HVT dlc_reg_0_ ( .D(N221), .CLK(clk), .RSTB(n427), .Q(dlc[0]) );
  DFFARX1_HVT enable_reg ( .D(N237), .CLK(clk), .RSTB(n427), .Q(enable), .QN(
        n385) );
  DFFARX1_HVT lsr1_d_reg ( .D(rf_overrun), .CLK(clk), .RSTB(n447), .Q(lsr1_d)
         );
  DFFARX1_HVT lsr1r_reg ( .D(N163), .CLK(clk), .RSTB(n10), .Q(lsr[1]) );
  DFFARX1_HVT lsr7_d_reg ( .D(lsr7), .CLK(clk), .RSTB(n427), .QN(n415) );
  DFFARX1_HVT lsr7r_reg ( .D(N184), .CLK(clk), .RSTB(n447), .Q(lsr[7]), .QN(
        n404) );
  DFFARX1_HVT lsr3_d_reg ( .D(rf_data_out[0]), .CLK(clk), .RSTB(n427), .Q(
        lsr3_d) );
  DFFARX1_HVT lsr2_d_reg ( .D(rf_data_out[1]), .CLK(clk), .RSTB(n427), .Q(
        lsr2_d) );
  DFFARX1_HVT lsr2r_reg ( .D(N167), .CLK(clk), .RSTB(n10), .Q(lsr[2]), .QN(
        n405) );
  DFFARX1_HVT lsr4_d_reg ( .D(rf_data_out[2]), .CLK(clk), .RSTB(n427), .Q(
        lsr4_d) );
  DFFARX1_HVT lsr4r_reg ( .D(N175), .CLK(clk), .RSTB(n10), .Q(lsr[4]) );
  DFFARX1_HVT lsr0_d_reg ( .D(lsr0), .CLK(clk), .RSTB(n427), .QN(n414) );
  DFFARX1_HVT block_cnt_reg_0_ ( .D(n202), .CLK(clk), .RSTB(n10), .Q(
        block_cnt[0]), .QN(n400) );
  DFFARX1_HVT block_cnt_reg_7_ ( .D(n201), .CLK(clk), .RSTB(n448), .Q(
        block_cnt[7]), .QN(n409) );
  DFFARX1_HVT block_cnt_reg_6_ ( .D(n527), .CLK(clk), .RSTB(n449), .Q(
        block_cnt[6]), .QN(n399) );
  DFFARX1_HVT block_cnt_reg_5_ ( .D(n524), .CLK(clk), .RSTB(n10), .Q(
        block_cnt[5]), .QN(n406) );
  DFFARX1_HVT block_cnt_reg_4_ ( .D(n198), .CLK(clk), .RSTB(n10), .Q(
        block_cnt[4]), .QN(n469) );
  DFFARX1_HVT block_cnt_reg_3_ ( .D(n197), .CLK(clk), .RSTB(n10), .Q(
        block_cnt[3]), .QN(n407) );
  DFFARX1_HVT block_cnt_reg_2_ ( .D(n504), .CLK(clk), .RSTB(n10), .Q(
        block_cnt[2]), .QN(n401) );
  DFFARX1_HVT block_cnt_reg_1_ ( .D(n194), .CLK(clk), .RSTB(n10), .Q(
        block_cnt[1]), .QN(n412) );
  DFFARX1_HVT rls_int_d_reg ( .D(rls_int), .CLK(clk), .RSTB(n427), .QN(n387)
         );
  DFFARX1_HVT rda_int_d_reg ( .D(rda_int), .CLK(clk), .RSTB(n427), .Q(
        rda_int_d) );
  DFFARX1_HVT thre_int_d_reg ( .D(thre_int), .CLK(clk), .RSTB(n427), .QN(n411)
         );
  DFFARX1_HVT ms_int_d_reg ( .D(ms_int), .CLK(clk), .RSTB(n427), .QN(n413) );
  DFFARX1_HVT ti_int_d_reg ( .D(ti_int), .CLK(clk), .RSTB(n427), .QN(n416) );
  DFFARX1_HVT rls_int_pnd_reg ( .D(N355), .CLK(clk), .RSTB(n427), .Q(
        rls_int_pnd), .QN(n12) );
  DFFARX1_HVT rda_int_pnd_reg ( .D(N364), .CLK(clk), .RSTB(n10), .Q(
        rda_int_pnd) );
  DFFARX1_HVT ti_int_pnd_reg ( .D(N383), .CLK(clk), .RSTB(n10), .Q(ti_int_pnd), 
        .QN(n389) );
  DFFARX1_HVT iir_reg_3_ ( .D(N412), .CLK(clk), .RSTB(n10), .Q(iir[3]), .QN(
        n365) );
  DFFARX1_HVT iir_reg_2_ ( .D(N411), .CLK(clk), .RSTB(n10), .Q(iir[2]), .QN(
        n367) );
  DFFARX1_HVT thre_int_pnd_reg ( .D(N371), .CLK(clk), .RSTB(n10), .Q(
        thre_int_pnd) );
  DFFARX1_HVT iir_reg_1_ ( .D(N410), .CLK(clk), .RSTB(n427), .Q(iir[1]) );
  DFFASX1_HVT msi_reset_reg ( .D(n223), .CLK(clk), .SETB(n446), .Q(msi_reset)
         );
  DFFASX1_HVT lsr6_d_reg ( .D(lsr6), .CLK(clk), .SETB(n447), .QN(n408) );
  DFFASX1_HVT lsr5r_reg ( .D(N178), .CLK(clk), .SETB(n446), .Q(lsr[5]), .QN(
        n398) );
  DFFASX1_HVT iir_reg_0_ ( .D(N409), .CLK(clk), .SETB(n446), .Q(iir[0]) );
  DFFASX1_HVT fcr_reg_0_ ( .D(n171), .CLK(clk), .SETB(n446), .Q(fcr[0]) );
  DFFARX1_HVT tx_reset_reg ( .D(N130), .CLK(clk), .RSTB(n426), .Q(tx_reset) );
  DFFARX1_HVT tf_push_reg ( .D(n428), .CLK(clk), .RSTB(n10), .Q(tf_push) );
  AND2X1_HVT C1452 ( .A1(n430), .A2(n420), .Y(lsr_mask) );
  DFFARX1_HVT lsr3r_reg ( .D(N171), .CLK(clk), .RSTB(n10), .Q(lsr[3]), .QN(
        n424) );
  DFFARX1_HVT lcr_reg_3_ ( .D(n189), .CLK(clk), .RSTB(n427), .Q(n432), .QN(
        n422) );
  DFFARX1_HVT lsr_mask_d_reg ( .D(n430), .CLK(clk), .RSTB(n10), .QN(n420) );
  DFFARX1_HVT ier_reg_0_ ( .D(n211), .CLK(clk), .RSTB(n10), .Q(ier[0]), .QN(
        n419) );
  DFFARX1_HVT lcr_reg_7_ ( .D(n193), .CLK(clk), .RSTB(n10), .Q(lcr[7]), .QN(
        n418) );
  DFFARX1_HVT mcr_reg_0_ ( .D(n183), .CLK(clk), .RSTB(n448), .Q(mcr[0]) );
  DFFARX1_HVT ier_reg_1_ ( .D(n212), .CLK(clk), .RSTB(n10), .Q(ier[1]) );
  DFFARX1_HVT int_o_reg ( .D(N396), .CLK(clk), .RSTB(n427), .Q(int_o) );
  OR2X1_HVT U9 ( .A1(serial_out), .A2(mcr[4]), .Y(stx_pad_o) );
  AND2X1_RVT U10 ( .A1(rda_int_pnd), .A2(ier[0]), .Y(n305) );
  OA21X1_HVT U14 ( .A1(lsr5_d), .A2(n161), .A3(n398), .Y(n152) );
  OR3X1_HVT U27 ( .A1(lcr[7]), .A2(wb_re_i_BAR), .A3(n283), .Y(n318) );
  OR4X1_HVT U35 ( .A1(dlc[8]), .A2(dlc[9]), .A3(dlc[10]), .A4(dlc[11]), .Y(n14) );
  INVX0_HVT U36 ( .A(n316), .Y(n4) );
  INVX0_HVT U37 ( .A(n316), .Y(n5) );
  AND2X1_HVT U45 ( .A1(n268), .A2(n266), .Y(N153) );
  NBUFFX4_HVT U50 ( .A(n449), .Y(n427) );
  NBUFFX4_HVT U51 ( .A(n448), .Y(n10) );
  NBUFFX4_HVT U54 ( .A(n447), .Y(n426) );
  INVX0_HVT U56 ( .A(n422), .Y(lcr[3]) );
  INVX0_HVT U126 ( .A(modem_inputs[1]), .Y(n228) );
  INVX0_HVT U127 ( .A(modem_inputs[3]), .Y(n226) );
  INVX0_HVT U128 ( .A(modem_inputs[2]), .Y(n227) );
  INVX0_HVT U129 ( .A(modem_inputs[0]), .Y(n229) );
  INVX0_HVT U205 ( .A(fcr[0]), .Y(n350) );
  INVX0_HVT U207 ( .A(rf_count[2]), .Y(n300) );
  NAND2X0_HVT U208 ( .A1(fcr[1]), .A2(n300), .Y(n125) );
  INVX0_HVT U212 ( .A(n269), .Y(n126) );
  INVX0_HVT U217 ( .A(wb_dat_i[5]), .Y(n251) );
  INVX0_HVT U219 ( .A(wb_dat_i[0]), .Y(n238) );
  INVX0_HVT U222 ( .A(wb_dat_i[1]), .Y(n247) );
  INVX0_HVT U225 ( .A(wb_dat_i[6]), .Y(n241) );
  INVX0_HVT U228 ( .A(wb_dat_i[2]), .Y(n232) );
  INVX0_HVT U231 ( .A(wb_dat_i[3]), .Y(n224) );
  INVX0_HVT U234 ( .A(wb_dat_i[7]), .Y(n244) );
  INVX0_HVT U239 ( .A(rf_count[0]), .Y(n287) );
  INVX0_HVT U242 ( .A(rx_reset), .Y(n138) );
  INVX0_HVT U255 ( .A(rf_data_out[2]), .Y(n147) );
  INVX0_HVT U258 ( .A(rf_overrun), .Y(n149) );
  INVX0_HVT U270 ( .A(n428), .Y(n162) );
  INVX0_HVT U291 ( .A(N138), .Y(n250) );
  INVX0_HVT U324 ( .A(msi_reset), .Y(n268) );
  NAND2X0_HVT U343 ( .A1(n288), .A2(n287), .Y(n289) );
  INVX0_HVT U356 ( .A(n298), .Y(n303) );
  INVX0_HVT U363 ( .A(n308), .Y(n309) );
  INVX0_HVT U382 ( .A(rf_data_out[1]), .Y(n319) );
  INVX0_HVT U385 ( .A(rf_data_out[0]), .Y(n321) );
  NOR2X1_HVT U410 ( .A1(n417), .A2(n444), .Y(n354) );
  NOR2X0_HVT U405 ( .A1(n410), .A2(n363), .Y(n349) );
  OR2X1_HVT U401 ( .A1(n409), .A2(n342), .Y(n346) );
  AND2X1_HVT U400 ( .A1(n342), .A2(n344), .Y(n340) );
  AND2X1_HVT U398 ( .A1(lcr[2]), .A2(lcr[3]), .Y(n339) );
  NOR2X0_HVT U396 ( .A1(n336), .A2(n335), .Y(n345) );
  AO21X1_HVT U391 ( .A1(n432), .A2(n421), .A3(n328), .Y(n329) );
  OA21X1_HVT U386 ( .A1(n321), .A2(lsr3_d), .A3(n424), .Y(n322) );
  OA21X1_HVT U383 ( .A1(n319), .A2(lsr2_d), .A3(n405), .Y(n320) );
  NOR2X0_HVT U380 ( .A1(n9), .A2(n5), .Y(n315) );
  OR2X1_HVT U365 ( .A1(wb_addr_i[0]), .A2(n544), .Y(n311) );
  OR2X1_HVT U358 ( .A1(n303), .A2(n302), .Y(n304) );
  AO221X1_HVT U357 ( .A1(fcr[1]), .A2(rf_count[0]), .A3(fcr[1]), .A4(n300), 
        .A5(n299), .Y(n301) );
  AO22X1_RVT U346 ( .A1(ier[0]), .A2(ti_int_pnd), .A3(ti_int), .A4(n416), .Y(
        n293) );
  AO22X1_HVT U339 ( .A1(rls_int_pnd), .A2(ier[2]), .A3(rls_int), .A4(n387), 
        .Y(n285) );
  AND2X1_HVT U330 ( .A1(n268), .A2(n267), .Y(N155) );
  AND2X1_HVT U328 ( .A1(n268), .A2(n265), .Y(N152) );
  AO221X1_RVT U327 ( .A1(modem_inputs[3]), .A2(delayed_modem_signals[0]), .A3(
        n226), .A4(n376), .A5(msr[0]), .Y(n265) );
  AND2X1_HVT U326 ( .A1(n268), .A2(n264), .Y(N154) );
  AO22X1_HVT U319 ( .A1(ms_int), .A2(n413), .A3(ier[3]), .A4(ms_int_pnd), .Y(
        n259) );
  OA21X1_RVT U318 ( .A1(msr[0]), .A2(n258), .A3(ier[3]), .Y(ms_int) );
  AND2X1_HVT U280 ( .A1(n428), .A2(lsr[5]), .Y(n342) );
  AO21X1_HVT U277 ( .A1(lsr6), .A2(n408), .A3(lsr[6]), .Y(n163) );
  OR2X1_HVT U262 ( .A1(n570), .A2(n318), .Y(n260) );
  NOR2X0_HVT U259 ( .A1(lsr1_d), .A2(n149), .Y(n150) );
  NOR2X0_HVT U256 ( .A1(lsr4_d), .A2(n147), .Y(n148) );
  AO21X1_HVT U252 ( .A1(n415), .A2(lsr7), .A3(lsr[7]), .Y(n146) );
  OR2X1_HVT U251 ( .A1(rf_overrun), .A2(rf_error_bit), .Y(lsr7) );
  AO21X1_RVT U241 ( .A1(n414), .A2(lsr0), .A3(lsr[0]), .Y(n139) );
  NOR4X0_HVT U238 ( .A1(rf_count[4]), .A2(rf_count[3]), .A3(rf_count[2]), .A4(
        rf_count[1]), .Y(n288) );
  OA221X1_HVT U209 ( .A1(n299), .A2(n298), .A3(n299), .A4(n125), .A5(ier[0]), 
        .Y(rda_int) );
  AO221X1_HVT U206 ( .A1(n350), .A2(fcr[1]), .A3(n350), .A4(rf_count[0]), .A5(
        rf_count[1]), .Y(n298) );
  AO22X1_HVT U199 ( .A1(n457), .A2(rf_data_out[9]), .A3(n118), .A4(scratch[6]), 
        .Y(n120) );
  AO22X1_HVT U198 ( .A1(n270), .A2(dl[6]), .A3(n269), .A4(dl[14]), .Y(n121) );
  AO22X1_HVT U186 ( .A1(n270), .A2(dl[7]), .A3(n269), .A4(dl[15]), .Y(n109) );
  AO22X1_HVT U161 ( .A1(n270), .A2(dl[1]), .A3(n269), .A4(dl[9]), .Y(n89) );
  AO22X1_HVT U148 ( .A1(n270), .A2(dl[2]), .A3(n269), .A4(dl[10]), .Y(n81) );
  AND2X1_RVT U100 ( .A1(n456), .A2(n270), .Y(N138) );
  AO21X1_RVT U92 ( .A1(n588), .A2(dlc[4]), .A3(n30), .Y(n32) );
  NOR2X0_RVT U87 ( .A1(n382), .A2(n588), .Y(n27) );
  NOR2X0_RVT U84 ( .A1(n381), .A2(n588), .Y(n24) );
  AO21X1_RVT U82 ( .A1(n588), .A2(dlc[1]), .A3(n21), .Y(n23) );
  NOR2X0_HVT U81 ( .A1(n375), .A2(n588), .Y(n21) );
  NOR3X0_HVT U79 ( .A1(n19), .A2(tf_count[4]), .A3(tf_count[2]), .Y(n20) );
  OR3X1_HVT U78 ( .A1(tf_count[3]), .A2(tf_count[1]), .A3(tf_count[0]), .Y(n19) );
  AO21X1_RVT U70 ( .A1(n588), .A2(dlc[0]), .A3(n557), .Y(n22) );
  OR4X1_HVT U65 ( .A1(dlc[4]), .A2(dlc[5]), .A3(dlc[6]), .A4(dlc[7]), .Y(n15)
         );
  NOR2X0_HVT U52 ( .A1(n318), .A2(n317), .Y(n430) );
  INVX0_HVT U3 ( .A(wb_rst_i), .Y(n431) );
  DFFARX1_HVT mcr_reg_4_ ( .D(n187), .CLK(clk), .RSTB(n427), .Q(mcr[4]), .QN(
        n479) );
  DFFARX1_HVT mcr_reg_1_ ( .D(n184), .CLK(clk), .RSTB(n448), .Q(mcr[1]) );
  DFFARX1_HVT ier_reg_2_ ( .D(n213), .CLK(clk), .RSTB(n10), .Q(ier[2]) );
  DFFARX1_HVT rx_reset_reg ( .D(N129), .CLK(clk), .RSTB(n10), .Q(rx_reset) );
  OR3X1_HVT U31 ( .A1(block_cnt[1]), .A2(block_cnt[2]), .A3(block_cnt[0]), .Y(
        n166) );
  DFFASX1_RVT lcr_reg_0_ ( .D(n173), .CLK(clk), .SETB(n446), .Q(lcr[0]), .QN(
        n421) );
  DFFASX1_RVT lcr_reg_1_ ( .D(n174), .CLK(clk), .SETB(n446), .Q(lcr[1]), .QN(
        n9) );
  OR3X1_HVT U17 ( .A1(msr[1]), .A2(msr[2]), .A3(msr[3]), .Y(n258) );
  DFFASX1_HVT lsr6r_reg ( .D(N180), .CLK(clk), .SETB(n448), .Q(lsr[6]), .QN(
        n397) );
  MUX21X1_HVT U67 ( .A1(modem_inputs[3]), .A2(mcr[1]), .S0(mcr[4]), .Y(cts_c)
         );
  NOR2X0_HVT U119 ( .A1(n397), .A2(n317), .Y(n117) );
  OR2X1_RVT U123 ( .A1(n136), .A2(rf_push_pulse), .Y(n137) );
  INVX0_HVT U133 ( .A(n362), .Y(n443) );
  INVX0_HVT U134 ( .A(n443), .Y(n444) );
  NOR2X0_HVT U152 ( .A1(n374), .A2(n444), .Y(n361) );
  NOR2X0_HVT U156 ( .A1(n368), .A2(n444), .Y(n357) );
  NOR2X0_HVT U158 ( .A1(n369), .A2(n444), .Y(n355) );
  NOR2X0_HVT U159 ( .A1(n373), .A2(n444), .Y(n360) );
  NOR2X0_HVT U165 ( .A1(n372), .A2(n444), .Y(n359) );
  NOR2X1_HVT U168 ( .A1(n371), .A2(n444), .Y(n358) );
  NOR2X0_HVT U176 ( .A1(n370), .A2(n362), .Y(n356) );
  INVX0_HVT U177 ( .A(n431), .Y(n445) );
  INVX1_HVT U189 ( .A(n445), .Y(n446) );
  INVX2_HVT U190 ( .A(n445), .Y(n447) );
  INVX2_HVT U196 ( .A(n445), .Y(n448) );
  INVX1_HVT U201 ( .A(n445), .Y(n449) );
  AND3X1_RVT U7 ( .A1(n156), .A2(n162), .A3(n155), .Y(N371) );
  MUX21X1_HVT U63 ( .A1(modem_inputs[2]), .A2(mcr[0]), .S0(mcr[4]), .Y(dsr_c)
         );
  AO21X1_RVT U103 ( .A1(n588), .A2(dlc[6]), .A3(n37), .Y(n39) );
  MUX21X1_HVT U236 ( .A1(modem_inputs[1]), .A2(mcr[2]), .S0(mcr[4]), .Y(ri_c)
         );
  MUX21X1_HVT U237 ( .A1(modem_inputs[0]), .A2(mcr[3]), .S0(mcr[4]), .Y(dcd_c)
         );
  NOR4X1_RVT U245 ( .A1(dl[0]), .A2(dl[1]), .A3(dl[2]), .A4(dl[3]), .Y(n143)
         );
  NOR4X1_RVT U247 ( .A1(dl[8]), .A2(dl[9]), .A3(dl[10]), .A4(dl[11]), .Y(n141)
         );
  AND2X1_HVT U266 ( .A1(lsr[5]), .A2(ier[1]), .Y(thre_int) );
  AO22X1_HVT U271 ( .A1(n411), .A2(thre_int), .A3(ier[1]), .A4(thre_int_pnd), 
        .Y(n155) );
  AND2X1_RVT U320 ( .A1(n260), .A2(n259), .Y(N377) );
  AO221X1_HVT U325 ( .A1(modem_inputs[1]), .A2(delayed_modem_signals[2]), .A3(
        n228), .A4(n378), .A5(msr[2]), .Y(n264) );
  AO221X1_HVT U329 ( .A1(modem_inputs[2]), .A2(delayed_modem_signals[1]), .A3(
        n227), .A4(n377), .A5(msr[1]), .Y(n266) );
  OA21X1_HVT U338 ( .A1(lsr[1]), .A2(n284), .A3(ier[2]), .Y(rls_int) );
  NOR2X0_HVT U378 ( .A1(n421), .A2(n4), .Y(n314) );
  MUX21X1_HVT U390 ( .A1(lcr[0]), .A2(n422), .S0(lcr[2]), .Y(n328) );
  AO221X1_HVT U11 ( .A1(modem_inputs[0]), .A2(delayed_modem_signals[3]), .A3(
        n229), .A4(n379), .A5(msr[3]), .Y(n267) );
  DFFARX1_HVT rf_pop_reg ( .D(n2), .CLK(clk), .RSTB(n426), .Q(rf_pop) );
  DFFASRX1_HVT lsr0r_reg ( .D(N159), .CLK(clk), .RSTB(n447), .SETB(1'b1), .Q(
        lsr[0]) );
  DFFARX1_HVT mcr_reg_2_ ( .D(n185), .CLK(clk), .RSTB(n447), .Q(mcr[2]) );
  DFFARX1_HVT ier_reg_3_ ( .D(n214), .CLK(clk), .RSTB(n10), .Q(ier[3]) );
  OR3X1_HVT U4 ( .A1(n342), .A2(n326), .A3(n325), .Y(n202) );
  INVX0_HVT U83 ( .A(lsr_mask), .Y(n286) );
  AO22X1_HVT U183 ( .A1(lsr[5]), .A2(n584), .A3(n277), .A4(lcr[5]), .Y(n471)
         );
  INVX0_HVT U193 ( .A(n342), .Y(n482) );
  INVX0_HVT U195 ( .A(n135), .Y(n474) );
  NOR2X0_HVT U269 ( .A1(n283), .A2(n601), .Y(wb_dat_o[6]) );
  AO21X1_RVT U273 ( .A1(n364), .A2(ti_int_pnd), .A3(rda_int_pnd), .Y(n158) );
  INVX0_RVT U388 ( .A(n324), .Y(n325) );
  DFFASRX1_HVT lsr5_d_reg ( .D(n429), .CLK(clk), .RSTB(1'b1), .SETB(n446), .Q(
        lsr5_d) );
  DFFARX1_HVT mcr_reg_3_ ( .D(n186), .CLK(clk), .RSTB(n449), .Q(mcr[3]) );
  OR3X1_HVT U101 ( .A1(wb_addr_i[1]), .A2(n311), .A3(n530), .Y(n312) );
  OR2X1_HVT U283 ( .A1(wb_addr_i[4]), .A2(wb_addr_i[3]), .Y(n283) );
  AND2X1_RVT U29 ( .A1(n270), .A2(dl[5]), .Y(n115) );
  MUX21X1_RVT U374 ( .A1(wb_dat_i[4]), .A2(mcr[4]), .S0(n312), .Y(n187) );
  DFFASRX1_HVT ms_int_pnd_reg ( .D(N377), .CLK(clk), .RSTB(n10), .SETB(1'b1), 
        .Q(ms_int_pnd) );
  DFFARX1_HVT lcr_reg_4_ ( .D(n190), .CLK(clk), .RSTB(n427), .Q(lcr[4]), .QN(
        n558) );
  OR3X1_HVT U20 ( .A1(n95), .A2(n94), .A3(n93), .Y(n96) );
  NOR3X0_RVT U60 ( .A1(iir[0]), .A2(n283), .A3(wb_re_i_BAR), .Y(n153) );
  INVX0_HVT U76 ( .A(wb_dat_i[4]), .Y(n235) );
  NOR2X0_RVT U113 ( .A1(n330), .A2(n482), .Y(n334) );
  NOR2X1_RVT U141 ( .A1(n241), .A2(n250), .Y(n243) );
  MUX21X1_RVT U167 ( .A1(wb_dat_i[3]), .A2(mcr[3]), .S0(n312), .Y(n186) );
  MUX21X1_RVT U169 ( .A1(wb_dat_i[1]), .A2(mcr[1]), .S0(n312), .Y(n184) );
  OR3X1_RVT U282 ( .A1(block_cnt[4]), .A2(block_cnt[3]), .A3(n166), .Y(n327)
         );
  INVX0_LVT U284 ( .A(wb_addr_i[2]), .Y(n544) );
  INVX0_LVT U413 ( .A(n283), .Y(n537) );
  NOR2X0_HVT U433 ( .A1(wb_addr_i[0]), .A2(n600), .Y(n272) );
  OR2X1_RVT U418 ( .A1(n109), .A2(n110), .Y(n540) );
  AO21X1_RVT U371 ( .A1(n588), .A2(dlc[3]), .A3(n27), .Y(n29) );
  AND2X1_LVT U355 ( .A1(n479), .A2(srx_pad), .Y(n535) );
  AND2X1_RVT U314 ( .A1(n537), .A2(wb_we_i), .Y(n456) );
  MUX21X1_RVT U367 ( .A1(wb_dat_i[0]), .A2(mcr[0]), .S0(n312), .Y(n183) );
  AO22X1_HVT U200 ( .A1(n272), .A2(msr[6]), .A3(n277), .A4(lcr[6]), .Y(n119)
         );
  AND2X1_RVT U175 ( .A1(n308), .A2(ier[3]), .Y(n93) );
  AND2X1_RVT U160 ( .A1(n308), .A2(ier[1]), .Y(n90) );
  AO22X1_HVT U147 ( .A1(n272), .A2(msr[2]), .A3(n347), .A4(iir[2]), .Y(n82) );
  NOR2X1_RVT U215 ( .A1(n235), .A2(n475), .Y(n127) );
  NOR2X1_RVT U223 ( .A1(n247), .A2(n475), .Y(n130) );
  NOR2X1_RVT U226 ( .A1(n241), .A2(n475), .Y(n131) );
  NOR2X1_RVT U229 ( .A1(n232), .A2(n475), .Y(n132) );
  NOR2X1_RVT U232 ( .A1(n224), .A2(n475), .Y(n133) );
  NOR2X1_RVT U235 ( .A1(n244), .A2(n475), .Y(n134) );
  AO21X1_RVT U381 ( .A1(n5), .A2(wb_dat_i[1]), .A3(n315), .Y(n174) );
  OR3X1_RVT U30 ( .A1(block_cnt[6]), .A2(block_cnt[5]), .A3(n327), .Y(n336) );
  NOR2X1_RVT U12 ( .A1(n251), .A2(n475), .Y(n128) );
  NOR3X0_HVT U416 ( .A1(wb_addr_i[2]), .A2(wb_addr_i[0]), .A3(n73), .Y(n347)
         );
  AO21X1_RVT U41 ( .A1(n588), .A2(dlc[10]), .A3(n49), .Y(n51) );
  AO21X1_RVT U136 ( .A1(n588), .A2(dlc[14]), .A3(n61), .Y(n63) );
  AO21X1_RVT U124 ( .A1(n588), .A2(dlc[12]), .A3(n55), .Y(n57) );
  OR2X1_RVT U139 ( .A1(n403), .A2(n64), .Y(n65) );
  NOR2X0_HVT U173 ( .A1(n422), .A2(n307), .Y(n95) );
  INVX0_RVT U120 ( .A(n22), .Y(N221) );
  NOR2X1_RVT U99 ( .A1(n238), .A2(n135), .Y(n129) );
  AO21X1_HVT U49 ( .A1(n308), .A2(ier[2]), .A3(n76), .Y(n80) );
  NOR2X0_HVT U32 ( .A1(n423), .A2(n307), .Y(n74) );
  AO21X1_RVT U110 ( .A1(n588), .A2(dlc[8]), .A3(n43), .Y(n45) );
  OR2X1_HVT U26 ( .A1(n307), .A2(n530), .Y(n316) );
  NOR2X1_RVT U15 ( .A1(n224), .A2(n250), .Y(n231) );
  NOR2X0_RVT U312 ( .A1(n384), .A2(N138), .Y(n252) );
  NOR2X1_RVT U311 ( .A1(n251), .A2(n250), .Y(n253) );
  NOR2X1_RVT U308 ( .A1(n247), .A2(n250), .Y(n249) );
  NOR2X0_RVT U306 ( .A1(n391), .A2(N138), .Y(n245) );
  NOR2X1_RVT U305 ( .A1(n244), .A2(n250), .Y(n246) );
  NOR2X1_RVT U299 ( .A1(n238), .A2(n250), .Y(n240) );
  NOR2X0_RVT U297 ( .A1(n383), .A2(N138), .Y(n236) );
  NOR2X1_RVT U296 ( .A1(n235), .A2(n250), .Y(n237) );
  NOR2X1_RVT U293 ( .A1(n232), .A2(n250), .Y(n234) );
  NOR2X0_RVT U292 ( .A1(n382), .A2(N138), .Y(n225) );
  OR2X1_HVT U154 ( .A1(n75), .A2(n74), .Y(n76) );
  NOR2X0_HVT U163 ( .A1(n369), .A2(n353), .Y(n85) );
  NOR2X0_HVT U171 ( .A1(n368), .A2(n353), .Y(n92) );
  AO22X1_RVT U187 ( .A1(n457), .A2(rf_data_out[10]), .A3(n118), .A4(scratch[7]), .Y(n108) );
  AO22X1_HVT U192 ( .A1(n272), .A2(msr[5]), .A3(n118), .A4(scratch[5]), .Y(
        n113) );
  NOR2X0_HVT U334 ( .A1(n417), .A2(n353), .Y(n274) );
  XOR2X1_RVT U392 ( .A1(n329), .A2(n9), .Y(n330) );
  AO21X1_RVT U406 ( .A1(n363), .A2(wb_dat_i[7]), .A3(n349), .Y(n172) );
  AO21X1_RVT U408 ( .A1(n363), .A2(wb_dat_i[6]), .A3(n351), .Y(n171) );
  AND2X1_RVT U427 ( .A1(wb_dat_i[1]), .A2(n363), .Y(N129) );
  DFFASRX1_HVT lcr_reg_6_ ( .D(n192), .CLK(clk), .RSTB(n427), .SETB(1'b1), .Q(
        lcr[6]) );
  DFFARX1_HVT lcr_reg_2_ ( .D(n188), .CLK(clk), .RSTB(n427), .Q(lcr[2]), .QN(
        n423) );
  DFFASX1_RVT fcr_reg_1_ ( .D(n172), .CLK(clk), .SETB(n446), .Q(fcr[1]), .QN(
        n410) );
  AO21X1_RVT U272 ( .A1(ms_int_pnd), .A2(n260), .A3(thre_int_pnd), .Y(n159) );
  OR3X1_HVT U16 ( .A1(lsr[2]), .A2(lsr[3]), .A3(lsr[4]), .Y(n284) );
  INVX0_RVT U69 ( .A(n118), .Y(n571) );
  AO22X1_RVT U74 ( .A1(n457), .A2(rf_data_out[5]), .A3(n118), .A4(scratch[2]), 
        .Y(n79) );
  NOR2X0_HVT U85 ( .A1(n335), .A2(n166), .Y(n254) );
  OR2X1_HVT U86 ( .A1(dlc[0]), .A2(dlc[1]), .Y(n576) );
  NOR2X0_RVT U94 ( .A1(n386), .A2(n588), .Y(n43) );
  NOR3X0_RVT U180 ( .A1(thre_int_pnd), .A2(ms_int_pnd), .A3(N411), .Y(N409) );
  AO21X1_RVT U191 ( .A1(n135), .A2(dl[13]), .A3(n128), .Y(n220) );
  NOR2X0_HVT U194 ( .A1(n380), .A2(n588), .Y(n557) );
  INVX0_HVT U274 ( .A(n584), .Y(n317) );
  INVX0_HVT U279 ( .A(n307), .Y(n277) );
  MUX21X1_RVT U351 ( .A1(lcr[3]), .A2(wb_dat_i[3]), .S0(n4), .Y(n189) );
  AO21X1_RVT U354 ( .A1(n4), .A2(wb_dat_i[0]), .A3(n314), .Y(n173) );
  INVX0_HVT U372 ( .A(lsr[4]), .Y(n566) );
  uart_transmitter_opt2 transmitter ( .clk(clk), .wb_rst_i(wb_rst_i), .lcr({
        SYNOPSYS_UNCONNECTED_1, lcr[6:0]}), .tf_push(tf_push), .wb_dat_i(
        wb_dat_i), .enable(enable), .stx_pad_o(serial_out), .tstate(tstate), 
        .tf_count(tf_count), .tx_reset(tx_reset), .lsr_mask(lsr_mask) );
  uart_sync_flops_1_1 i_uart_sync_flops ( .rst_i(wb_rst_i), .clk_i(clk), 
        .stage1_clk_en_i(1'b1), .async_dat_i(srx_pad_i), .sync_dat_o(srx_pad)
         );
  uart_receiver_opt2 receiver ( .clk(clk), .wb_rst_i(wb_rst_i), .lcr({
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, lcr[5:4], n432, 
        lcr[2:0]}), .rf_pop(rf_pop), .srx_pad_i(n366), .enable(enable), 
        .counter_t(counter_t), .rf_count(rf_count), .rf_data_out(rf_data_out), 
        .rf_error_bit(rf_error_bit), .rf_overrun(rf_overrun), .rx_reset(
        rx_reset), .lsr_mask(lsr_mask), .rstate(rstate), .rf_push_pulse(
        rf_push_pulse) );
  INVX0_RVT U462 ( .A(n62), .Y(n465) );
  INVX0_LVT U453 ( .A(n157), .Y(n457) );
  OR2X1_HVT U443 ( .A1(n600), .A2(n78), .Y(n353) );
  AO21X1_RVT U435 ( .A1(n588), .A2(dlc[2]), .A3(n24), .Y(n26) );
  INVX0_HVT U394 ( .A(n272), .Y(n570) );
  OA22X1_RVT U389 ( .A1(n371), .A2(n571), .A3(n570), .A4(n594), .Y(n579) );
  OA22X1_HVT U370 ( .A1(n566), .A2(n317), .A3(n307), .A4(n558), .Y(n580) );
  OR2X1_HVT U125 ( .A1(n531), .A2(n342), .Y(n335) );
  XNOR3X1_RVT U21 ( .A1(lcr[3]), .A2(lcr[2]), .A3(n421), .Y(n500) );
  OR3X1_HVT U286 ( .A1(n345), .A2(n341), .A3(n340), .Y(n527) );
  NOR3X0_HVT U395 ( .A1(n342), .A2(n406), .A3(n441), .Y(n333) );
  INVX0_LVT U210 ( .A(rda_int), .Y(n297) );
  AND2X1_RVT U426 ( .A1(wb_dat_i[2]), .A2(n363), .Y(N130) );
  AO21X1_RVT U172 ( .A1(n457), .A2(rf_data_out[6]), .A3(n92), .Y(n97) );
  AND2X1_RVT U162 ( .A1(n457), .A2(rf_data_out[4]), .Y(n86) );
  INVX0_LVT U361 ( .A(serial_out), .Y(n453) );
  AO21X1_RVT U107 ( .A1(n588), .A2(dlc[7]), .A3(n40), .Y(n42) );
  OR2X1_RVT U213 ( .A1(n126), .A2(n530), .Y(n135) );
  NOR2X0_RVT U294 ( .A1(n381), .A2(N138), .Y(n233) );
  NOR2X1_RVT U300 ( .A1(n380), .A2(N138), .Y(n239) );
  NOR2X1_RVT U309 ( .A1(n375), .A2(N138), .Y(n248) );
  NOR2X0_RVT U404 ( .A1(n530), .A2(n348), .Y(n363) );
  NOR2X0_RVT U43 ( .A1(n390), .A2(n588), .Y(n46) );
  NAND2X0_RVT U105 ( .A1(n294), .A2(n12), .Y(N410) );
  OAI222X1_HVT U336 ( .A1(n500), .A2(n482), .A3(n470), .A4(n335), .A5(n262), 
        .A6(n469), .Y(n198) );
  NOR2X0_RVT U117 ( .A1(n392), .A2(n588), .Y(n49) );
  AO21X1_RVT U114 ( .A1(n588), .A2(dlc[9]), .A3(n46), .Y(n48) );
  AND2X1_RVT U108 ( .A1(n165), .A2(n20), .Y(n429) );
  OR2X1_RVT U153 ( .A1(n249), .A2(n248), .Y(n204) );
  AO21X1_RVT U155 ( .A1(n135), .A2(dl[14]), .A3(n131), .Y(n221) );
  AO22X1_LVT U112 ( .A1(rls_int_pnd), .A2(n286), .A3(n12), .A4(n473), .Y(N396)
         );
  NOR2X0_RVT U90 ( .A1(rda_int_d), .A2(n297), .Y(n306) );
  XNOR2X1_RVT U62 ( .A1(n29), .A2(n28), .Y(N224) );
  OR2X1_RVT U68 ( .A1(n237), .A2(n236), .Y(n207) );
  AO21X1_RVT U137 ( .A1(n362), .A2(wb_dat_i[7]), .A3(n361), .Y(n182) );
  AO21X1_RVT U138 ( .A1(n362), .A2(wb_dat_i[6]), .A3(n360), .Y(n181) );
  AO21X1_RVT U140 ( .A1(n362), .A2(wb_dat_i[5]), .A3(n359), .Y(n180) );
  AO21X1_RVT U142 ( .A1(n362), .A2(wb_dat_i[4]), .A3(n358), .Y(n179) );
  AO21X1_RVT U143 ( .A1(n362), .A2(wb_dat_i[3]), .A3(n357), .Y(n178) );
  AO21X1_RVT U144 ( .A1(n362), .A2(wb_dat_i[2]), .A3(n356), .Y(n177) );
  AO21X1_RVT U145 ( .A1(n362), .A2(wb_dat_i[1]), .A3(n355), .Y(n176) );
  INVX0_RVT U437 ( .A(n63), .Y(n466) );
  XNOR2X1_RVT U61 ( .A1(n42), .A2(n41), .Y(N228) );
  XNOR2X1_RVT U93 ( .A1(n32), .A2(n31), .Y(N225) );
  XNOR2X1_RVT U97 ( .A1(n36), .A2(n35), .Y(N226) );
  XNOR2X1_RVT U104 ( .A1(n39), .A2(n38), .Y(N227) );
  XNOR2X1_RVT U111 ( .A1(n45), .A2(n44), .Y(N229) );
  XNOR2X1_RVT U115 ( .A1(n48), .A2(n47), .Y(N230) );
  XNOR2X1_RVT U118 ( .A1(n51), .A2(n50), .Y(N231) );
  AO21X1_RVT U121 ( .A1(n588), .A2(dlc[11]), .A3(n52), .Y(n54) );
  XNOR2X1_RVT U122 ( .A1(n53), .A2(n54), .Y(N232) );
  NOR2X0_RVT U131 ( .A1(n395), .A2(n588), .Y(n58) );
  NOR2X0_RVT U135 ( .A1(n396), .A2(n588), .Y(n61) );
  AND3X1_RVT U211 ( .A1(ti_int_pnd), .A2(n12), .A3(n297), .Y(N412) );
  NOR4X1_RVT U246 ( .A1(dl[4]), .A2(dl[5]), .A3(dl[6]), .A4(dl[7]), .Y(n142)
         );
  AND2X1_RVT U254 ( .A1(n146), .A2(n286), .Y(N184) );
  OA21X1_RVT U257 ( .A1(n148), .A2(lsr[4]), .A3(n286), .Y(N175) );
  OA21X1_RVT U260 ( .A1(n150), .A2(lsr[1]), .A3(n286), .Y(N163) );
  AND2X1_RVT U278 ( .A1(n163), .A2(n162), .Y(N180) );
  XNOR2X1_RVT U288 ( .A1(n324), .A2(n412), .Y(n170) );
  OR2X1_RVT U304 ( .A1(n243), .A2(n242), .Y(n209) );
  OR2X1_RVT U307 ( .A1(n246), .A2(n245), .Y(n210) );
  OR2X1_RVT U313 ( .A1(n253), .A2(n252), .Y(n208) );
  AND2X1_RVT U340 ( .A1(n286), .A2(n285), .Y(N355) );
  AND2X1_RVT U347 ( .A1(n293), .A2(n364), .Y(N383) );
  NAND3X0_RVT U353 ( .A1(n12), .A2(n389), .A3(n297), .Y(N411) );
  OA22X1_RVT U359 ( .A1(n306), .A2(n305), .A3(n364), .A4(n304), .Y(N364) );
  MUX21X1_RVT U362 ( .A1(lcr[7]), .A2(wb_dat_i[7]), .S0(n5), .Y(n193) );
  MUX21X1_RVT U364 ( .A1(ier[0]), .A2(wb_dat_i[0]), .S0(n313), .Y(n211) );
  MUX21X1_RVT U373 ( .A1(lcr[6]), .A2(wb_dat_i[6]), .S0(n5), .Y(n192) );
  MUX21X1_RVT U375 ( .A1(ier[1]), .A2(wb_dat_i[1]), .S0(n313), .Y(n212) );
  MUX21X1_RVT U376 ( .A1(ier[3]), .A2(wb_dat_i[3]), .S0(n313), .Y(n214) );
  NOR2X1_RVT U384 ( .A1(lsr_mask), .A2(n320), .Y(N167) );
  AOI22X1_RVT U399 ( .A1(lcr[0]), .A2(n339), .A3(lcr[1]), .A4(n338), .Y(n344)
         );
  OAI22X1_RVT U402 ( .A1(n346), .A2(n345), .A3(n344), .A4(n482), .Y(n201) );
  NOR2X1_RVT U428 ( .A1(rf_pop), .A2(n364), .Y(n2) );
  OR2X1_RVT U46 ( .A1(n231), .A2(n225), .Y(n206) );
  XNOR2X1_RVT U44 ( .A1(n26), .A2(n25), .Y(N223) );
  NOR2X1_RVT U42 ( .A1(lsr_mask), .A2(n322), .Y(N171) );
  NOR2X0_RVT U40 ( .A1(n394), .A2(n588), .Y(n55) );
  XNOR2X1_RVT U5 ( .A1(n23), .A2(n22), .Y(N222) );
  OR2X1_HVT U424 ( .A1(n87), .A2(n90), .Y(n490) );
  AO21X1_RVT U248 ( .A1(n135), .A2(dl[15]), .A3(n134), .Y(n222) );
  AO21X1_RVT U233 ( .A1(n135), .A2(dl[11]), .A3(n133), .Y(n218) );
  AO21X1_RVT U230 ( .A1(n135), .A2(dl[10]), .A3(n132), .Y(n217) );
  AO21X1_RVT U224 ( .A1(n135), .A2(dl[9]), .A3(n130), .Y(n216) );
  AO21X1_RVT U221 ( .A1(n135), .A2(dl[8]), .A3(n129), .Y(n215) );
  AO21X1_RVT U216 ( .A1(n135), .A2(dl[12]), .A3(n127), .Y(n219) );
  AOI21X1_RVT U182 ( .A1(block_cnt[3]), .A2(block_cnt[4]), .A3(n164), .Y(n470)
         );
  AO21X1_RVT U146 ( .A1(n362), .A2(wb_dat_i[0]), .A3(n354), .Y(n175) );
  OR2X1_RVT U130 ( .A1(n234), .A2(n233), .Y(n205) );
  AND3X1_RVT U240 ( .A1(n288), .A2(rf_push_pulse), .A3(n287), .Y(lsr0) );
  NOR2X1_RVT U263 ( .A1(msi_reset), .A2(n260), .Y(n223) );
  NOR2X1_RVT U59 ( .A1(n530), .A2(n309), .Y(n313) );
  NAND3X0_RVT U34 ( .A1(n297), .A2(thre_int_pnd), .A3(n389), .Y(n294) );
  NOR3X0_HVT U149 ( .A1(n78), .A2(n70), .A3(lcr[7]), .Y(n308) );
  MUX21X1_RVT U369 ( .A1(wb_dat_i[2]), .A2(mcr[2]), .S0(n312), .Y(n185) );
  NAND3X0_RVT U243 ( .A1(rf_count[0]), .A2(n288), .A3(rf_pop), .Y(n136) );
  OR2X1_RVT U71 ( .A1(n385), .A2(n165), .Y(n531) );
  AO21X1_RVT U88 ( .A1(n389), .A2(n159), .A3(n158), .Y(n473) );
  OR2X1_RVT U439 ( .A1(n79), .A2(n81), .Y(n549) );
  OR3X1_HVT U214 ( .A1(n337), .A2(n334), .A3(n333), .Y(n524) );
  NOR2X0_RVT U91 ( .A1(n350), .A2(n363), .Y(n351) );
  AO22X1_HVT U47 ( .A1(n272), .A2(msr[3]), .A3(n347), .A4(iir[3]), .Y(n99) );
  AO22X1_HVT U38 ( .A1(n269), .A2(dl[12]), .A3(n457), .A4(rf_data_out[7]), .Y(
        n103) );
  AND2X1_RVT U178 ( .A1(n270), .A2(dl[4]), .Y(n104) );
  NOR2X1_RVT U387 ( .A1(n400), .A2(n508), .Y(n326) );
  NOR2X0_RVT U316 ( .A1(n262), .A2(n407), .Y(n256) );
  OR2X1_RVT U268 ( .A1(n263), .A2(n262), .Y(n504) );
  NOR2X1_RVT U227 ( .A1(block_cnt[1]), .A2(n324), .Y(n503) );
  AO221X1_RVT U39 ( .A1(rf_count[1]), .A2(rf_count[0]), .A3(rf_count[1]), .A4(
        n350), .A5(n301), .Y(n302) );
  INVX1_HVT U264 ( .A(n429), .Y(n161) );
  NOR3X0_HVT U397 ( .A1(n342), .A2(n399), .A3(n337), .Y(n341) );
  AO22X1_HVT U315 ( .A1(n342), .A2(n255), .A3(n254), .A4(n407), .Y(n257) );
  NOR2X0_HVT U265 ( .A1(n428), .A2(n152), .Y(N178) );
  OR2X1_HVT U197 ( .A1(n117), .A2(n347), .Y(n122) );
  OR2X1_HVT U185 ( .A1(n106), .A2(n347), .Y(n110) );
  OR2X1_HVT U412 ( .A1(n342), .A2(n254), .Y(n262) );
  OR2X1_HVT U317 ( .A1(n257), .A2(n256), .Y(n197) );
  NOR2X1_RVT U322 ( .A1(n401), .A2(n503), .Y(n263) );
  NOR4X1_RVT U345 ( .A1(counter_t[9]), .A2(counter_t[0]), .A3(n419), .A4(n292), 
        .Y(ti_int) );
  NOR2X0_RVT U106 ( .A1(n391), .A2(n588), .Y(n40) );
  NOR2X0_RVT U102 ( .A1(n388), .A2(n588), .Y(n37) );
  AO21X1_RVT U96 ( .A1(n588), .A2(dlc[5]), .A3(n33), .Y(n36) );
  NOR2X0_RVT U95 ( .A1(n384), .A2(n588), .Y(n33) );
  NOR2X0_RVT U24 ( .A1(n383), .A2(n588), .Y(n30) );
  NOR2X1_RVT U150 ( .A1(n405), .A2(n317), .Y(n75) );
  AO22X1_HVT U170 ( .A1(n270), .A2(dl[3]), .A3(n269), .A4(dl[11]), .Y(n98) );
  NOR2X1_RVT U174 ( .A1(n424), .A2(n317), .Y(n94) );
  NOR2X1_RVT U184 ( .A1(n404), .A2(n317), .Y(n106) );
  AND3X1_RVT U244 ( .A1(n139), .A2(n138), .A3(n137), .Y(N159) );
  AND2X1_HVT U333 ( .A1(n457), .A2(rf_data_out[3]), .Y(n275) );
  INVX0_HVT U403 ( .A(n347), .Y(n348) );
  AO22X1_HVT U22 ( .A1(n269), .A2(dl[13]), .A3(n457), .A4(rf_data_out[8]), .Y(
        n114) );
  AO221X2_HVT U109 ( .A1(1'b1), .A2(rf_count[4]), .A3(rf_count[2]), .A4(n410), 
        .A5(rf_count[3]), .Y(n299) );
  DFFARX1_HVT lcr_reg_5_ ( .D(n191), .CLK(clk), .RSTB(n427), .Q(lcr[5]) );
  INVX0_RVT U331 ( .A(n335), .Y(n508) );
  INVX0_RVT U442 ( .A(n353), .Y(n118) );
  NOR2X1_RVT U151 ( .A1(n353), .A2(n530), .Y(n362) );
  OR3X1_HVT U23 ( .A1(n275), .A2(n274), .A3(n606), .Y(n279) );
  OR3X1_HVT U89 ( .A1(n86), .A2(n85), .A3(n84), .Y(n437) );
  OR3X1_HVT U19 ( .A1(wb_re_i_BAR), .A2(n283), .A3(n157), .Y(n364) );
  OR2X1_RVT U287 ( .A1(n335), .A2(block_cnt[0]), .Y(n324) );
  NAND3X0_RVT U55 ( .A1(n154), .A2(n347), .A3(n153), .Y(n156) );
  NAND4X0_RVT U249 ( .A1(n143), .A2(n142), .A3(n141), .A4(n140), .Y(n144) );
  XOR2X1_RVT U6 ( .A1(n634), .A2(n435), .Y(N236) );
  NAND3X0_HVT U8 ( .A1(lcr[2]), .A2(n421), .A3(n9), .Y(n255) );
  INVX0_HVT U13 ( .A(n283), .Y(n622) );
  OR3X1_HVT U18 ( .A1(lcr[3]), .A2(lcr[2]), .A3(lcr[0]), .Y(n338) );
  INVX0_HVT U25 ( .A(wb_addr_i[2]), .Y(n621) );
  OR3X1_RVT U28 ( .A1(lcr[7]), .A2(wb_addr_i[0]), .A3(n70), .Y(n157) );
  INVX0_HVT U33 ( .A(n550), .Y(n619) );
  INVX0_HVT U48 ( .A(n535), .Y(n627) );
  INVX0_HVT U53 ( .A(wb_addr_i[0]), .Y(n620) );
  INVX0_HVT U57 ( .A(n537), .Y(n581) );
  AND4X1_HVT U58 ( .A1(iir[1]), .A2(n367), .A3(n365), .A4(n418), .Y(n154) );
  INVX0_HVT U64 ( .A(n327), .Y(n164) );
  NOR4X1_HVT U66 ( .A1(dl[12]), .A2(dl[13]), .A3(dl[14]), .A4(dl[15]), .Y(n140) );
  NOR2X0_HVT U72 ( .A1(n393), .A2(n588), .Y(n52) );
  INVX0_HVT U73 ( .A(n474), .Y(n475) );
  AND3X1_RVT U75 ( .A1(n615), .A2(n608), .A3(n614), .Y(n613) );
  OR2X1_HVT U77 ( .A1(n99), .A2(n97), .Y(n624) );
  NOR2X1_RVT U80 ( .A1(block_cnt[7]), .A2(n336), .Y(n165) );
  INVX0_HVT U98 ( .A(n157), .Y(n610) );
  NOR3X0_RVT U116 ( .A1(n418), .A2(wb_addr_i[0]), .A3(n70), .Y(n270) );
  NOR2X0_HVT U132 ( .A1(n388), .A2(N138), .Y(n242) );
  MUX21X1_HVT U157 ( .A1(lcr[4]), .A2(wb_dat_i[4]), .S0(n4), .Y(n190) );
  MUX21X1_HVT U164 ( .A1(ier[2]), .A2(wb_dat_i[2]), .S0(n313), .Y(n213) );
  NOR4X1_HVT U166 ( .A1(tstate[0]), .A2(tstate[1]), .A3(tstate[2]), .A4(n161), 
        .Y(lsr6) );
  NAND2X0_HVT U179 ( .A1(n170), .A2(n482), .Y(n194) );
  AND2X1_HVT U181 ( .A1(n144), .A2(n145), .Y(N237) );
  OR2X1_HVT U188 ( .A1(n240), .A2(n239), .Y(n203) );
  MUX21X1_HVT U202 ( .A1(lcr[5]), .A2(wb_dat_i[5]), .S0(n5), .Y(n191) );
  NAND2X0_HVT U204 ( .A1(n580), .A2(n579), .Y(n595) );
  NOR4X1_HVT U218 ( .A1(dlc[3]), .A2(dlc[14]), .A3(dlc[2]), .A4(dlc[13]), .Y(
        n596) );
  AND2X1_HVT U220 ( .A1(n291), .A2(n290), .Y(n597) );
  XNOR2X1_RVT U250 ( .A1(n56), .A2(n57), .Y(n598) );
  NAND2X0_HVT U261 ( .A1(n308), .A2(ier[0]), .Y(n599) );
  NAND2X0_RVT U267 ( .A1(wb_addr_i[1]), .A2(n629), .Y(n600) );
  INVX0_HVT U276 ( .A(n456), .Y(n530) );
  INVX0_HVT U281 ( .A(wb_addr_i[1]), .Y(n73) );
  NOR4X1_RVT U285 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .Y(n601) );
  XNOR2X1_RVT U289 ( .A1(n62), .A2(n63), .Y(n602) );
  OA21X1_HVT U290 ( .A1(n402), .A2(n588), .A3(n65), .Y(n435) );
  AOI22X1_HVT U295 ( .A1(lcr[0]), .A2(n277), .A3(n584), .A4(lsr[0]), .Y(n603)
         );
  XNOR2X1_RVT U298 ( .A1(n59), .A2(n60), .Y(n604) );
  AO21X1_HVT U301 ( .A1(n588), .A2(dlc[13]), .A3(n58), .Y(n60) );
  AO22X1_HVT U303 ( .A1(n272), .A2(msr[7]), .A3(lcr[7]), .A4(n277), .Y(n605)
         );
  AO22X1_RVT U310 ( .A1(n272), .A2(msr[0]), .A3(n347), .A4(iir[0]), .Y(n606)
         );
  NAND2X0_HVT U321 ( .A1(wb_addr_i[0]), .A2(lcr[7]), .Y(n607) );
  AOI22X1_HVT U323 ( .A1(n270), .A2(dl[0]), .A3(dl[8]), .A4(n269), .Y(n608) );
  NAND2X0_HVT U332 ( .A1(n289), .A2(n597), .Y(n292) );
  NOR4X0_HVT U335 ( .A1(counter_t[2]), .A2(counter_t[3]), .A3(counter_t[4]), 
        .A4(counter_t[7]), .Y(n291) );
  NOR4X0_HVT U337 ( .A1(counter_t[5]), .A2(counter_t[1]), .A3(counter_t[8]), 
        .A4(counter_t[6]), .Y(n290) );
  MUX21X1_HVT U341 ( .A1(lcr[2]), .A2(wb_dat_i[2]), .S0(n4), .Y(n188) );
  OR2X1_LVT U342 ( .A1(n542), .A2(n78), .Y(n307) );
  AND2X1_LVT U344 ( .A1(n603), .A2(n599), .Y(n614) );
  INVX0_RVT U348 ( .A(n70), .Y(n550) );
  OR2X1_LVT U349 ( .A1(wb_addr_i[2]), .A2(wb_addr_i[1]), .Y(n70) );
  OR2X1_RVT U350 ( .A1(n104), .A2(n103), .Y(n618) );
  NOR2X0_LVT U352 ( .A1(block_cnt[5]), .A2(n609), .Y(n337) );
  INVX1_LVT U360 ( .A(n441), .Y(n609) );
  AND2X1_LVT U366 ( .A1(n508), .A2(n164), .Y(n441) );
  AND2X1_LVT U377 ( .A1(n610), .A2(n456), .Y(n428) );
  INVX1_LVT U379 ( .A(wb_addr_i[0]), .Y(n78) );
  AO22X1_RVT U393 ( .A1(lsr[1]), .A2(n584), .A3(n277), .A4(lcr[1]), .Y(n87) );
  NOR2X0_LVT U407 ( .A1(n283), .A2(n611), .Y(wb_dat_o[5]) );
  NOR3X0_LVT U409 ( .A1(n115), .A2(n114), .A3(n612), .Y(n611) );
  OR2X1_LVT U411 ( .A1(n471), .A2(n113), .Y(n612) );
  NOR2X0_LVT U414 ( .A1(n616), .A2(n613), .Y(wb_dat_o[0]) );
  INVX0_LVT U415 ( .A(n279), .Y(n615) );
  INVX0_RVT U417 ( .A(n537), .Y(n616) );
  OA21X1_LVT U419 ( .A1(n595), .A2(n618), .A3(n617), .Y(wb_dat_o[4]) );
  INVX0_RVT U420 ( .A(n581), .Y(n617) );
  NOR2X0_LVT U421 ( .A1(n607), .A2(n619), .Y(n269) );
  OR2X1_RVT U422 ( .A1(n32), .A2(n31), .Y(n35) );
  OR2X1_RVT U423 ( .A1(n29), .A2(n28), .Y(n31) );
  OR2X1_RVT U425 ( .A1(n54), .A2(n53), .Y(n56) );
  OR2X1_RVT U429 ( .A1(n51), .A2(n50), .Y(n53) );
  OR2X1_RVT U430 ( .A1(n45), .A2(n44), .Y(n47) );
  OR2X1_RVT U431 ( .A1(n42), .A2(n41), .Y(n44) );
  INVX2_RVT U432 ( .A(n64), .Y(n588) );
  OR2X1_RVT U434 ( .A1(start_dlc), .A2(n145), .Y(n64) );
  NOR3X0_RVT U436 ( .A1(n621), .A2(wb_addr_i[1]), .A3(n620), .Y(n584) );
  OA21X1_RVT U438 ( .A1(n624), .A2(n623), .A3(n622), .Y(wb_dat_o[3]) );
  OR2X1_RVT U440 ( .A1(n98), .A2(n96), .Y(n623) );
  NAND2X0_RVT U441 ( .A1(wb_addr_i[1]), .A2(n544), .Y(n542) );
  OA21X1_RVT U444 ( .A1(n605), .A2(n625), .A3(n537), .Y(wb_dat_o[7]) );
  OR2X1_RVT U445 ( .A1(n108), .A2(n540), .Y(n625) );
  INVX1_LVT U446 ( .A(n626), .Y(n366) );
  OA21X1_LVT U447 ( .A1(n479), .A2(n453), .A3(n627), .Y(n626) );
  OA21X1_RVT U448 ( .A1(n549), .A2(n628), .A3(n537), .Y(wb_dat_o[2]) );
  OR2X1_RVT U449 ( .A1(n82), .A2(n80), .Y(n628) );
  INVX0_LVT U450 ( .A(n544), .Y(n629) );
  AO22X1_RVT U451 ( .A1(n272), .A2(msr[1]), .A3(iir[1]), .A4(n347), .Y(n84) );
  OA21X1_RVT U452 ( .A1(n490), .A2(n630), .A3(n537), .Y(wb_dat_o[1]) );
  OR2X1_RVT U454 ( .A1(n89), .A2(n437), .Y(n630) );
  NOR3X0_RVT U455 ( .A1(n15), .A2(n14), .A3(n631), .Y(n145) );
  NAND3X0_RVT U456 ( .A1(n633), .A2(n632), .A3(n596), .Y(n631) );
  AND2X1_RVT U457 ( .A1(n635), .A2(n403), .Y(n632) );
  INVX0_HVT U458 ( .A(n576), .Y(n633) );
  OR2X1_RVT U459 ( .A1(n26), .A2(n25), .Y(n28) );
  OR2X1_RVT U460 ( .A1(n22), .A2(n23), .Y(n25) );
  OR2X1_RVT U461 ( .A1(n39), .A2(n38), .Y(n41) );
  OR2X1_RVT U463 ( .A1(n36), .A2(n35), .Y(n38) );
  OR2X1_RVT U464 ( .A1(n48), .A2(n47), .Y(n50) );
  OR2X1_RVT U465 ( .A1(n60), .A2(n59), .Y(n62) );
  OR2X1_RVT U466 ( .A1(n57), .A2(n56), .Y(n59) );
  NAND2X0_RVT U467 ( .A1(n465), .A2(n466), .Y(n634) );
  INVX0_HVT U468 ( .A(dlc[12]), .Y(n635) );
endmodule


module uart_debug_if ( wb_dat32_o, wb_adr_i, ier, iir, fcr, mcr, lcr, msr, lsr, 
        rf_count, tf_count, tstate, rstate );
  output [31:0] wb_dat32_o;
  input [4:0] wb_adr_i;
  input [3:0] ier;
  input [3:0] iir;
  input [1:0] fcr;
  input [4:0] mcr;
  input [7:0] lcr;
  input [7:0] msr;
  input [7:0] lsr;
  input [4:0] rf_count;
  input [4:0] tf_count;
  input [2:0] tstate;
  input [3:0] rstate;
  wire   n2, n3, n4, n5, n6, n8, n12, n13;
  tri   [4:0] rf_count;
  tri   [4:0] tf_count;

  AO22X1_HVT U39 ( .A1(n6), .A2(lcr[7]), .A3(n5), .A4(fcr[1]), .Y(
        wb_dat32_o[23]) );
  AO22X1_HVT U32 ( .A1(n6), .A2(lsr[1]), .A3(n5), .A4(tstate[1]), .Y(
        wb_dat32_o[1]) );
  AO22X1_HVT U25 ( .A1(n6), .A2(lsr[2]), .A3(n5), .A4(tstate[2]), .Y(
        wb_dat32_o[2]) );
  AO22X1_HVT U19 ( .A1(n6), .A2(lsr[0]), .A3(n5), .A4(tstate[0]), .Y(
        wb_dat32_o[0]) );
  AO22X1_HVT U15 ( .A1(n6), .A2(ier[1]), .A3(n5), .A4(rstate[1]), .Y(
        wb_dat32_o[9]) );
  AO22X1_HVT U26 ( .A1(n8), .A2(lcr[6]), .A3(n5), .A4(fcr[0]), .Y(
        wb_dat32_o[22]) );
  AO22X1_HVT U22 ( .A1(n8), .A2(iir[3]), .A3(n5), .A4(rf_count[3]), .Y(
        wb_dat32_o[15]) );
  AO22X1_HVT U27 ( .A1(n8), .A2(iir[1]), .A3(n5), .A4(rf_count[1]), .Y(
        wb_dat32_o[13]) );
  AO22X1_HVT U28 ( .A1(n8), .A2(lcr[3]), .A3(n5), .A4(mcr[2]), .Y(
        wb_dat32_o[19]) );
  AO22X1_HVT U36 ( .A1(n8), .A2(ier[3]), .A3(n5), .A4(rstate[3]), .Y(
        wb_dat32_o[11]) );
  AO22X1_HVT U37 ( .A1(n8), .A2(iir[0]), .A3(n5), .A4(rf_count[0]), .Y(
        wb_dat32_o[12]) );
  OR2X1_HVT U42 ( .A1(wb_adr_i[2]), .A2(n3), .Y(n2) );
  INVX0_LVT U6 ( .A(n3), .Y(n4) );
  AO22X1_HVT U31 ( .A1(n8), .A2(lcr[2]), .A3(n5), .A4(mcr[1]), .Y(
        wb_dat32_o[18]) );
  AO22X1_HVT U30 ( .A1(n8), .A2(lcr[4]), .A3(n5), .A4(mcr[3]), .Y(
        wb_dat32_o[20]) );
  AO22X1_HVT U11 ( .A1(n6), .A2(lsr[4]), .A3(n5), .A4(tf_count[1]), .Y(
        wb_dat32_o[4]) );
  IBUFFX2_RVT U7 ( .A(n2), .Y(n8) );
  IBUFFX2_RVT U8 ( .A(n2), .Y(n6) );
  AO22X1_HVT U21 ( .A1(n8), .A2(lcr[0]), .A3(n5), .A4(rf_count[4]), .Y(
        wb_dat32_o[16]) );
  AO22X1_HVT U38 ( .A1(n8), .A2(iir[2]), .A3(n5), .A4(rf_count[2]), .Y(
        wb_dat32_o[14]) );
  AO22X1_HVT U34 ( .A1(n6), .A2(ier[2]), .A3(n5), .A4(rstate[2]), .Y(
        wb_dat32_o[10]) );
  AO22X1_HVT U23 ( .A1(n6), .A2(lsr[7]), .A3(n5), .A4(tf_count[4]), .Y(
        wb_dat32_o[7]) );
  AND2X1_RVT U4 ( .A1(n6), .A2(msr[7]), .Y(wb_dat32_o[31]) );
  OR2X1_RVT U44 ( .A1(wb_adr_i[4]), .A2(n13), .Y(n12) );
  AND2X1_RVT U9 ( .A1(n6), .A2(msr[5]), .Y(wb_dat32_o[29]) );
  AND2X1_RVT U13 ( .A1(n6), .A2(msr[2]), .Y(wb_dat32_o[26]) );
  AND2X1_RVT U14 ( .A1(n6), .A2(msr[1]), .Y(wb_dat32_o[25]) );
  AO22X1_HVT U20 ( .A1(n6), .A2(ier[0]), .A3(n5), .A4(rstate[0]), .Y(
        wb_dat32_o[8]) );
  AO22X1_HVT U18 ( .A1(n6), .A2(lsr[6]), .A3(n5), .A4(tf_count[3]), .Y(
        wb_dat32_o[6]) );
  AND2X1_RVT U16 ( .A1(n8), .A2(msr[3]), .Y(wb_dat32_o[27]) );
  AO22X1_HVT U40 ( .A1(n8), .A2(lcr[5]), .A3(n5), .A4(mcr[4]), .Y(
        wb_dat32_o[21]) );
  AO22X1_HVT U33 ( .A1(n6), .A2(lsr[3]), .A3(n5), .A4(tf_count[0]), .Y(
        wb_dat32_o[3]) );
  AO22X1_HVT U29 ( .A1(n8), .A2(lcr[1]), .A3(n5), .A4(mcr[0]), .Y(
        wb_dat32_o[17]) );
  AND2X1_RVT U2 ( .A1(n4), .A2(wb_adr_i[2]), .Y(n5) );
  INVX0_HVT U3 ( .A(wb_adr_i[3]), .Y(n13) );
  AND2X1_HVT U5 ( .A1(n8), .A2(msr[4]), .Y(wb_dat32_o[28]) );
  AND2X1_HVT U10 ( .A1(n8), .A2(msr[0]), .Y(wb_dat32_o[24]) );
  AND2X1_HVT U12 ( .A1(n8), .A2(msr[6]), .Y(wb_dat32_o[30]) );
  AO22X1_HVT U17 ( .A1(n6), .A2(lsr[5]), .A3(n5), .A4(tf_count[2]), .Y(
        wb_dat32_o[5]) );
  OR3X1_LVT U24 ( .A1(n12), .A2(wb_adr_i[1]), .A3(wb_adr_i[0]), .Y(n3) );
endmodule


module uart_top_opt2 ( wb_clk_i, wb_rst_i, wb_adr_i, wb_dat_i, wb_dat_o, 
        wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_sel_i, int_o, stx_pad_o, 
        srx_pad_i, rts_pad_o, cts_pad_i, dtr_pad_o, dsr_pad_i, ri_pad_i, 
        dcd_pad_i );
  input [4:0] wb_adr_i;
  input [31:0] wb_dat_i;
  output [31:0] wb_dat_o;
  input [3:0] wb_sel_i;
  input wb_clk_i, wb_rst_i, wb_we_i, wb_stb_i, wb_cyc_i, srx_pad_i, cts_pad_i,
         dsr_pad_i, ri_pad_i, dcd_pad_i;
  output wb_ack_o, int_o, stx_pad_o, rts_pad_o, dtr_pad_o;
  wire   we_o, re_o, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] wb_dat8_o;
  wire   [31:0] wb_dat32_o;
  wire   [4:0] wb_adr_int;
  wire   [3:0] ier;
  wire   [3:0] iir;
  wire   [1:0] fcr;
  wire   [4:0] mcr;
  wire   [7:0] lcr;
  wire   [7:0] msr;
  wire   [7:0] lsr;
  wire   [2:0] tstate;
  wire   [3:0] rstate;
  tri   wb_clk_i;
  tri   wb_rst_i;
  tri   [7:0] wb_dat8_i;
  tri   [4:0] rf_count;
  tri   [4:0] tf_count;

  uart_wb wb_interface ( .clk(wb_clk_i), .wb_rst_i(wb_rst_i), .wb_we_i(wb_we_i), .wb_stb_i(wb_stb_i), .wb_cyc_i(wb_cyc_i), .wb_ack_o(wb_ack_o), .wb_adr_i({
        wb_adr_i[4:2], SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), 
        .wb_adr_int(wb_adr_int), .wb_dat_i(wb_dat_i), .wb_dat_o(wb_dat_o), 
        .wb_dat8_i(wb_dat8_i), .wb_dat8_o(wb_dat8_o), .wb_dat32_o(wb_dat32_o), 
        .wb_sel_i(wb_sel_i), .we_o(we_o), .re_o_BAR(re_o) );
  uart_regs_opt2 regs ( .clk(wb_clk_i), .wb_rst_i(wb_rst_i), .wb_addr_i(
        wb_adr_int), .wb_dat_i(wb_dat8_i), .wb_dat_o(wb_dat8_o), .wb_we_i(we_o), .modem_inputs({cts_pad_i, dsr_pad_i, ri_pad_i, dcd_pad_i}), .stx_pad_o(
        stx_pad_o), .srx_pad_i(srx_pad_i), .ier(ier), .iir(iir), .fcr(fcr), 
        .mcr(mcr), .lcr(lcr), .msr(msr), .lsr(lsr), .rf_count(rf_count), 
        .tf_count(tf_count), .tstate(tstate), .rstate(rstate), .rts_pad_o(
        rts_pad_o), .dtr_pad_o(dtr_pad_o), .int_o(int_o), .wb_re_i_BAR(re_o)
         );
  uart_debug_if dbg ( .wb_dat32_o(wb_dat32_o), .wb_adr_i(wb_adr_int), .ier(ier), .iir(iir), .fcr(fcr), .mcr(mcr), .lcr(lcr), .msr(msr), .lsr(lsr), .rf_count(
        rf_count), .tf_count(tf_count), .tstate(tstate), .rstate(rstate) );
endmodule

