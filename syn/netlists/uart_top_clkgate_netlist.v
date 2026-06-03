/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09-SP5-4
// Date      : Tue Jun  2 19:55:12 2026
/////////////////////////////////////////////////////////////


module uart_wb ( clk, wb_rst_i, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, 
        wb_adr_i, wb_adr_int, wb_dat_i, wb_dat_o, wb_dat8_i, wb_dat8_o, 
        wb_dat32_o, wb_sel_i, we_o, re_o );
  input [4:0] wb_adr_i;
  output [4:0] wb_adr_int;
  input [31:0] wb_dat_i;
  output [31:0] wb_dat_o;
  output [7:0] wb_dat8_i;
  input [7:0] wb_dat8_o;
  input [31:0] wb_dat32_o;
  input [3:0] wb_sel_i;
  input clk, wb_rst_i, wb_we_i, wb_stb_i, wb_cyc_i;
  output wb_ack_o, we_o, re_o;
  wire   wbstate_1_, wre, N27, wb_we_is, n78, n80, n82, n84, n86, n90, n92,
         n94, n96, n98, n100, n102, n106, n108, n110, n112, n118, n130, n179,
         n180, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n66, n67, n68,
         n75, n77, n103, n105, n109, n120, n121, n123, n126, n132, n133, n134,
         n135, n137, n141, n142, n143, n144, n145, n146, n147, n149, n150,
         n151, n152, n153, n154, n155, n156;
  wire   [31:0] wb_dat_is;
  wire   [3:0] wb_sel_is;

  DFFARX1_HVT wb_dat_is_reg_31_ ( .D(wb_dat_i[31]), .CLK(clk), .RSTB(n55), .Q(
        wb_dat_is[31]) );
  DFFARX1_HVT wb_dat_is_reg_30_ ( .D(wb_dat_i[30]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[30]) );
  DFFARX1_HVT wb_dat_is_reg_29_ ( .D(wb_dat_i[29]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[29]) );
  DFFARX1_HVT wb_dat_is_reg_28_ ( .D(wb_dat_i[28]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[28]) );
  DFFARX1_HVT wb_dat_is_reg_27_ ( .D(wb_dat_i[27]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[27]) );
  DFFARX1_HVT wb_dat_is_reg_26_ ( .D(wb_dat_i[26]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[26]) );
  DFFARX1_HVT wb_dat_is_reg_25_ ( .D(wb_dat_i[25]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[25]) );
  DFFARX1_HVT wb_dat_is_reg_24_ ( .D(wb_dat_i[24]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[24]) );
  DFFARX1_HVT wb_dat_is_reg_23_ ( .D(wb_dat_i[23]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[23]) );
  DFFARX1_HVT wb_dat_is_reg_22_ ( .D(wb_dat_i[22]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[22]) );
  DFFARX1_HVT wb_dat_is_reg_21_ ( .D(wb_dat_i[21]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[21]) );
  DFFARX1_HVT wb_dat_is_reg_20_ ( .D(wb_dat_i[20]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[20]) );
  DFFARX1_HVT wb_dat_is_reg_19_ ( .D(wb_dat_i[19]), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_is[19]) );
  DFFARX1_HVT wb_dat_is_reg_18_ ( .D(wb_dat_i[18]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[18]) );
  DFFARX1_HVT wb_dat_is_reg_17_ ( .D(wb_dat_i[17]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[17]) );
  DFFARX1_HVT wb_dat_is_reg_16_ ( .D(wb_dat_i[16]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[16]) );
  DFFARX1_HVT wb_dat_is_reg_15_ ( .D(wb_dat_i[15]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[15]) );
  DFFARX1_HVT wb_dat_is_reg_14_ ( .D(wb_dat_i[14]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[14]) );
  DFFARX1_HVT wb_dat_is_reg_13_ ( .D(wb_dat_i[13]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[13]) );
  DFFARX1_HVT wb_dat_is_reg_12_ ( .D(wb_dat_i[12]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[12]) );
  DFFARX1_HVT wb_dat_is_reg_11_ ( .D(wb_dat_i[11]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[11]) );
  DFFARX1_HVT wb_dat_is_reg_10_ ( .D(wb_dat_i[10]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[10]) );
  DFFARX1_HVT wb_dat_is_reg_9_ ( .D(wb_dat_i[9]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[9]) );
  DFFARX1_HVT wb_dat_is_reg_8_ ( .D(wb_dat_i[8]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[8]) );
  DFFARX1_HVT wb_dat_is_reg_7_ ( .D(wb_dat_i[7]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[7]) );
  DFFARX1_HVT wb_dat_is_reg_6_ ( .D(wb_dat_i[6]), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_is[6]) );
  DFFARX1_HVT wb_dat_is_reg_5_ ( .D(wb_dat_i[5]), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_is[5]) );
  DFFARX1_HVT wb_dat_is_reg_4_ ( .D(wb_dat_i[4]), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_is[4]) );
  DFFARX1_HVT wb_dat_is_reg_3_ ( .D(wb_dat_i[3]), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_is[3]) );
  DFFARX1_HVT wb_dat_is_reg_2_ ( .D(wb_dat_i[2]), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_is[2]) );
  DFFARX1_HVT wb_dat_is_reg_1_ ( .D(wb_dat_i[1]), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_is[1]) );
  DFFARX1_HVT wb_dat_is_reg_0_ ( .D(wb_dat_i[0]), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_is[0]) );
  DFFARX1_HVT wb_sel_is_reg_3_ ( .D(wb_sel_i[3]), .CLK(clk), .RSTB(n55), .Q(
        wb_sel_is[3]), .QN(n52) );
  DFFARX1_HVT wb_sel_is_reg_2_ ( .D(wb_sel_i[2]), .CLK(clk), .RSTB(n55), .Q(
        wb_sel_is[2]), .QN(n49) );
  DFFARX1_HVT wb_sel_is_reg_1_ ( .D(wb_sel_i[1]), .CLK(clk), .RSTB(n55), .Q(
        wb_sel_is[1]), .QN(n50) );
  DFFARX1_HVT wb_sel_is_reg_0_ ( .D(wb_sel_i[0]), .CLK(clk), .RSTB(n55), .Q(
        wb_sel_is[0]), .QN(n120) );
  DFFARX1_HVT wb_adr_is_reg_4_ ( .D(wb_adr_i[4]), .CLK(clk), .RSTB(n5), .Q(
        wb_adr_int[4]) );
  DFFARX1_HVT wb_adr_is_reg_3_ ( .D(wb_adr_i[3]), .CLK(clk), .RSTB(n5), .Q(
        wb_adr_int[3]) );
  DFFARX1_HVT wb_adr_is_reg_2_ ( .D(wb_adr_i[2]), .CLK(clk), .RSTB(n5), .Q(
        wb_adr_int[2]) );
  DFFARX1_HVT wb_we_is_reg ( .D(wb_we_i), .CLK(clk), .RSTB(n55), .Q(wb_we_is)
         );
  DFFARX1_HVT wb_cyc_is_reg ( .D(wb_cyc_i), .CLK(clk), .RSTB(n56), .QN(n48) );
  DFFARX1_HVT wb_stb_is_reg ( .D(wb_stb_i), .CLK(clk), .RSTB(n55), .QN(n53) );
  DFFARX1_HVT wbstate_reg_1_ ( .D(n180), .CLK(clk), .RSTB(n55), .Q(wbstate_1_), 
        .QN(n54) );
  DFFARX1_RVT wb_dat_o_reg_30_ ( .D(n130), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[30]) );
  DFFARX1_RVT wb_dat_o_reg_20_ ( .D(n110), .CLK(clk), .RSTB(n56), .Q(
        wb_dat_o[20]) );
  DFFARX1_RVT wb_dat_o_reg_18_ ( .D(n106), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[18]) );
  DFFARX1_RVT wb_dat_o_reg_16_ ( .D(n102), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[16]) );
  DFFARX1_RVT wb_dat_o_reg_15_ ( .D(n100), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[15]) );
  DFFARX1_RVT wb_dat_o_reg_14_ ( .D(n98), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[14]) );
  DFFARX1_RVT wb_dat_o_reg_12_ ( .D(n94), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[12]) );
  DFFARX1_RVT wb_dat_o_reg_10_ ( .D(n90), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[10]) );
  DFFARX1_RVT wb_dat_o_reg_8_ ( .D(n86), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[8])
         );
  DFFARX1_RVT wb_dat_o_reg_7_ ( .D(n84), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[7])
         );
  DFFARX1_RVT wb_dat_o_reg_6_ ( .D(n82), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[6])
         );
  DFFARX1_RVT wb_dat_o_reg_4_ ( .D(n78), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[4])
         );
  DFFARX1_HVT wb_dat_o_reg_17_ ( .D(n132), .CLK(clk), .RSTB(n55), .Q(
        wb_dat_o[17]) );
  DFFARX1_HVT wb_dat_o_reg_2_ ( .D(n137), .CLK(clk), .RSTB(n55), .Q(
        wb_dat_o[2]) );
  DFFARX1_HVT wb_dat_o_reg_22_ ( .D(n75), .CLK(clk), .RSTB(n58), .Q(
        wb_dat_o[22]) );
  DFFARX1_HVT wb_dat_o_reg_23_ ( .D(n77), .CLK(clk), .RSTB(n58), .Q(
        wb_dat_o[23]) );
  DFFARX1_HVT wb_dat_o_reg_24_ ( .D(n118), .CLK(clk), .RSTB(n58), .Q(
        wb_dat_o[24]) );
  DFFARX1_HVT wb_dat_o_reg_25_ ( .D(n105), .CLK(clk), .RSTB(n58), .Q(
        wb_dat_o[25]) );
  DFFARX1_HVT wb_dat_o_reg_26_ ( .D(n145), .CLK(clk), .RSTB(n58), .Q(
        wb_dat_o[26]) );
  DFFARX1_HVT wb_dat_o_reg_27_ ( .D(n123), .CLK(clk), .RSTB(n58), .Q(
        wb_dat_o[27]) );
  DFFARX1_HVT wb_dat_o_reg_31_ ( .D(n144), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[31]) );
  DFFARX1_HVT wb_dat_o_reg_9_ ( .D(n134), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[9]) );
  DFFARX1_HVT wb_dat_o_reg_0_ ( .D(n126), .CLK(clk), .RSTB(n55), .Q(
        wb_dat_o[0]) );
  NBUFFX2_HVT U3 ( .A(n58), .Y(n55) );
  NBUFFX2_HVT U8 ( .A(n58), .Y(n56) );
  NBUFFX2_HVT U9 ( .A(n58), .Y(n57) );
  NBUFFX4_HVT U11 ( .A(n58), .Y(n5) );
  AO222X1_HVT U96 ( .A1(n4), .A2(wb_dat_o[20]), .A3(n37), .A4(wb_dat32_o[20]), 
        .A5(n46), .A6(wb_dat8_o[4]), .Y(n110) );
  AO222X1_HVT U93 ( .A1(n4), .A2(wb_dat_o[12]), .A3(n37), .A4(wb_dat32_o[12]), 
        .A5(n45), .A6(wb_dat8_o[4]), .Y(n94) );
  AO222X1_HVT U88 ( .A1(n4), .A2(wb_dat_o[4]), .A3(n37), .A4(wb_dat32_o[4]), 
        .A5(n43), .A6(wb_dat8_o[4]), .Y(n78) );
  AND2X1_HVT U76 ( .A1(re_o), .A2(n42), .Y(n46) );
  AND2X1_HVT U74 ( .A1(re_o), .A2(n41), .Y(n43) );
  AND4X1_HVT U61 ( .A1(wb_sel_is[0]), .A2(wb_sel_is[1]), .A3(wb_sel_is[2]), 
        .A4(wb_sel_is[3]), .Y(n36) );
  AND2X1_HVT U58 ( .A1(wb_ack_o), .A2(n54), .Y(n180) );
  NOR2X0_HVT U55 ( .A1(wb_ack_o), .A2(wbstate_1_), .Y(n33) );
  AO22X1_HVT U49 ( .A1(n35), .A2(wb_dat_is[24]), .A3(n42), .A4(wb_dat_is[16]), 
        .Y(n31) );
  AO22X1_HVT U45 ( .A1(n35), .A2(wb_dat_is[31]), .A3(n42), .A4(wb_dat_is[23]), 
        .Y(n27) );
  AO22X1_HVT U41 ( .A1(n35), .A2(wb_dat_is[28]), .A3(n42), .A4(wb_dat_is[20]), 
        .Y(n24) );
  AO22X1_HVT U38 ( .A1(n35), .A2(wb_dat_is[30]), .A3(n42), .A4(wb_dat_is[22]), 
        .Y(n21) );
  AO22X1_HVT U34 ( .A1(n35), .A2(wb_dat_is[29]), .A3(n42), .A4(wb_dat_is[21]), 
        .Y(n18) );
  AO22X1_HVT U30 ( .A1(n35), .A2(wb_dat_is[27]), .A3(n42), .A4(wb_dat_is[19]), 
        .Y(n15) );
  AO22X1_HVT U26 ( .A1(n35), .A2(wb_dat_is[26]), .A3(n42), .A4(wb_dat_is[18]), 
        .Y(n12) );
  NOR3X0_HVT U23 ( .A1(n40), .A2(n35), .A3(n42), .Y(n28) );
  AO22X1_HVT U19 ( .A1(n35), .A2(wb_dat_is[25]), .A3(n42), .A4(wb_dat_is[17]), 
        .Y(n9) );
  DFFASRX1_HVT wb_ack_o_reg ( .D(n179), .CLK(clk), .RSTB(n55), .SETB(1'b1), 
        .Q(wb_ack_o) );
  AO22X1_RVT U95 ( .A1(wb_dat_o[23]), .A2(n4), .A3(wb_dat8_o[7]), .A4(n46), 
        .Y(n66) );
  DFFARX1_HVT wb_dat_o_reg_29_ ( .D(n146), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[29]) );
  INVX0_RVT U56 ( .A(n34), .Y(n39) );
  AO222X1_HVT U82 ( .A1(n4), .A2(wb_dat_o[18]), .A3(n37), .A4(wb_dat32_o[18]), 
        .A5(n46), .A6(wb_dat8_o[2]), .Y(n106) );
  AO222X1_HVT U92 ( .A1(n4), .A2(wb_dat_o[10]), .A3(n44), .A4(wb_dat32_o[10]), 
        .A5(n45), .A6(wb_dat8_o[2]), .Y(n90) );
  DFFASRX1_HVT wb_dat_o_reg_1_ ( .D(n135), .CLK(clk), .RSTB(n55), .SETB(1'b1), 
        .Q(wb_dat_o[1]) );
  DFFARX1_HVT wb_dat_o_reg_28_ ( .D(n133), .CLK(clk), .RSTB(n5), .Q(
        wb_dat_o[28]) );
  DFFARX1_HVT wb_dat_o_reg_5_ ( .D(n80), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[5])
         );
  OR2X1_RVT U70 ( .A1(n109), .A2(n66), .Y(n77) );
  AO22X1_HVT U53 ( .A1(wb_dat_o[2]), .A2(n4), .A3(wb_dat8_o[2]), .A4(n43), .Y(
        n103) );
  NOR3X0_HVT U17 ( .A1(n6), .A2(wb_sel_is[2]), .A3(n52), .Y(n35) );
  NOR3X0_HVT U15 ( .A1(wb_we_is), .A2(n47), .A3(n34), .Y(re_o) );
  AO222X1_HVT U73 ( .A1(n4), .A2(wb_dat_o[8]), .A3(wb_dat8_o[0]), .A4(n45), 
        .A5(wb_dat32_o[8]), .A6(n44), .Y(n86) );
  AO222X1_HVT U20 ( .A1(n4), .A2(wb_dat_o[16]), .A3(wb_dat8_o[0]), .A4(n46), 
        .A5(wb_dat32_o[16]), .A6(n44), .Y(n102) );
  DFFASRX1_HVT wb_dat_o_reg_13_ ( .D(n96), .CLK(clk), .RSTB(n5), .SETB(1'b1), 
        .Q(wb_dat_o[13]) );
  DFFARX1_HVT wb_dat_o_reg_21_ ( .D(n112), .CLK(clk), .RSTB(n57), .Q(
        wb_dat_o[21]) );
  DFFASX1_HVT wre_reg ( .D(N27), .CLK(clk), .SETB(n55), .Q(wre), .QN(n47) );
  AND2X1_RVT U12 ( .A1(n40), .A2(wb_dat_is[14]), .Y(n20) );
  AO222X1_HVT U39 ( .A1(n4), .A2(wb_dat_o[14]), .A3(n37), .A4(wb_dat32_o[14]), 
        .A5(n45), .A6(wb_dat8_o[6]), .Y(n98) );
  AO22X1_HVT U100 ( .A1(wb_dat_o[9]), .A2(n4), .A3(wb_dat8_o[1]), .A4(n45), 
        .Y(n68) );
  AO22X1_HVT U98 ( .A1(wb_dat_o[17]), .A2(n4), .A3(wb_dat8_o[1]), .A4(n46), 
        .Y(n67) );
  AO222X1_RVT U18 ( .A1(n4), .A2(wb_dat_o[15]), .A3(n37), .A4(wb_dat32_o[15]), 
        .A5(n45), .A6(wb_dat8_o[7]), .Y(n100) );
  AND2X1_RVT U22 ( .A1(n40), .A2(wb_dat_is[9]), .Y(n8) );
  AND2X1_RVT U27 ( .A1(n40), .A2(wb_dat_is[10]), .Y(n11) );
  AND2X1_RVT U35 ( .A1(n40), .A2(wb_dat_is[13]), .Y(n17) );
  AND2X1_RVT U42 ( .A1(n40), .A2(wb_dat_is[12]), .Y(n23) );
  AND2X1_RVT U46 ( .A1(n40), .A2(wb_dat_is[15]), .Y(n26) );
  AO222X1_HVT U65 ( .A1(n4), .A2(wb_dat_o[30]), .A3(n38), .A4(wb_dat8_o[6]), 
        .A5(wb_dat32_o[30]), .A6(n44), .Y(n130) );
  AO222X1_HVT U78 ( .A1(n4), .A2(wb_dat_o[6]), .A3(n37), .A4(wb_dat32_o[6]), 
        .A5(n43), .A6(wb_dat8_o[6]), .Y(n82) );
  DFFASRX1_HVT wb_dat_o_reg_11_ ( .D(n92), .CLK(clk), .RSTB(n5), .SETB(1'b1), 
        .Q(wb_dat_o[11]) );
  DFFARX1_HVT wb_dat_o_reg_3_ ( .D(n147), .CLK(clk), .RSTB(n5), .Q(wb_dat_o[3]) );
  AND2X1_RVT U5 ( .A1(n28), .A2(wb_dat_is[3]), .Y(n13) );
  AO22X1_RVT U7 ( .A1(wb_dat_o[0]), .A2(n4), .A3(wb_dat32_o[0]), .A4(n44), .Y(
        n142) );
  AND2X1_RVT U10 ( .A1(n33), .A2(n39), .Y(n179) );
  AO222X1_RVT U32 ( .A1(n4), .A2(wb_dat_o[19]), .A3(n37), .A4(wb_dat32_o[19]), 
        .A5(n46), .A6(wb_dat8_o[3]), .Y(n108) );
  INVX2_RVT U43 ( .A(re_o), .Y(n4) );
  AO21X1_HVT U101 ( .A1(wb_dat8_o[0]), .A2(n43), .A3(n142), .Y(n126) );
  AO22X1_HVT U99 ( .A1(wb_dat_o[25]), .A2(n4), .A3(n44), .A4(wb_dat32_o[25]), 
        .Y(n141) );
  AO21X1_RVT U97 ( .A1(wb_dat8_o[1]), .A2(n38), .A3(n141), .Y(n105) );
  AND2X1_RVT U60 ( .A1(re_o), .A2(n35), .Y(n38) );
  AND2X1_RVT U4 ( .A1(wb_dat_is[0]), .A2(n28), .Y(n29) );
  INVX0_RVT U13 ( .A(wb_rst_i), .Y(n58) );
  AND2X1_RVT U24 ( .A1(n28), .A2(wb_dat_is[1]), .Y(n7) );
  OR3X2_RVT U25 ( .A1(n9), .A2(n8), .A3(n7), .Y(wb_dat8_i[1]) );
  AND2X1_RVT U28 ( .A1(n28), .A2(wb_dat_is[2]), .Y(n10) );
  OR3X2_RVT U29 ( .A1(n12), .A2(n11), .A3(n10), .Y(wb_dat8_i[2]) );
  OR3X2_RVT U33 ( .A1(n15), .A2(n14), .A3(n13), .Y(wb_dat8_i[3]) );
  AND2X1_RVT U36 ( .A1(n28), .A2(wb_dat_is[5]), .Y(n16) );
  OR3X1_RVT U37 ( .A1(n18), .A2(n17), .A3(n16), .Y(wb_dat8_i[5]) );
  OR3X2_RVT U52 ( .A1(n31), .A2(n30), .A3(n29), .Y(wb_dat8_i[0]) );
  AND2X1_RVT U59 ( .A1(n34), .A2(n33), .Y(N27) );
  AND2X1_RVT U62 ( .A1(re_o), .A2(n36), .Y(n44) );
  AND3X1_RVT U71 ( .A1(n39), .A2(wb_we_is), .A3(wre), .Y(we_o) );
  NBUFFX2_RVT U6 ( .A(n44), .Y(n37) );
  AO222X1_HVT U79 ( .A1(n4), .A2(wb_dat_o[5]), .A3(n37), .A4(wb_dat32_o[5]), 
        .A5(n43), .A6(wb_dat8_o[5]), .Y(n80) );
  AO222X1_HVT U94 ( .A1(n4), .A2(wb_dat_o[21]), .A3(n37), .A4(wb_dat32_o[21]), 
        .A5(n46), .A6(wb_dat8_o[5]), .Y(n112) );
  AO222X1_RVT U48 ( .A1(n4), .A2(wb_dat_o[27]), .A3(n38), .A4(wb_dat8_o[3]), 
        .A5(wb_dat32_o[27]), .A6(n44), .Y(n123) );
  OR2X1_RVT U14 ( .A1(n48), .A2(n53), .Y(n34) );
  DFFASRX1_HVT wb_dat_o_reg_19_ ( .D(n108), .CLK(clk), .RSTB(n57), .SETB(1'b1), 
        .Q(wb_dat_o[19]) );
  AND2X1_HVT U16 ( .A1(n40), .A2(wb_dat_is[8]), .Y(n30) );
  AND2X1_HVT U21 ( .A1(n40), .A2(wb_dat_is[11]), .Y(n14) );
  AND2X1_HVT U31 ( .A1(wb_dat32_o[23]), .A2(n37), .Y(n109) );
  AND2X1_HVT U40 ( .A1(re_o), .A2(n40), .Y(n45) );
  AO222X1_HVT U44 ( .A1(n4), .A2(wb_dat_o[7]), .A3(n37), .A4(wb_dat32_o[7]), 
        .A5(n43), .A6(wb_dat8_o[7]), .Y(n84) );
  AND2X1_RVT U47 ( .A1(wb_sel_is[2]), .A2(n52), .Y(n143) );
  AO222X1_RVT U50 ( .A1(n4), .A2(wb_dat_o[31]), .A3(n38), .A4(wb_dat8_o[7]), 
        .A5(wb_dat32_o[31]), .A6(n44), .Y(n144) );
  AO222X1_RVT U51 ( .A1(n4), .A2(wb_dat_o[26]), .A3(n38), .A4(wb_dat8_o[2]), 
        .A5(wb_dat32_o[26]), .A6(n44), .Y(n145) );
  AO222X1_RVT U54 ( .A1(n4), .A2(wb_dat_o[29]), .A3(n38), .A4(wb_dat8_o[5]), 
        .A5(wb_dat32_o[29]), .A6(n44), .Y(n146) );
  AO222X1_HVT U57 ( .A1(n4), .A2(wb_dat_o[3]), .A3(n37), .A4(wb_dat32_o[3]), 
        .A5(n43), .A6(wb_dat8_o[3]), .Y(n147) );
  OR3X2_RVT U64 ( .A1(n21), .A2(n20), .A3(n19), .Y(wb_dat8_i[6]) );
  AND2X1_HVT U66 ( .A1(n28), .A2(wb_dat_is[6]), .Y(n19) );
  OR3X2_RVT U67 ( .A1(n27), .A2(n26), .A3(n25), .Y(wb_dat8_i[7]) );
  AND2X1_HVT U68 ( .A1(n28), .A2(wb_dat_is[7]), .Y(n25) );
  OR3X2_RVT U72 ( .A1(n24), .A2(n23), .A3(n22), .Y(wb_dat8_i[4]) );
  AND2X1_HVT U75 ( .A1(n28), .A2(wb_dat_is[4]), .Y(n22) );
  AO21X1_LVT U80 ( .A1(wb_dat32_o[2]), .A2(n44), .A3(n103), .Y(n137) );
  OR2X1_LVT U83 ( .A1(n41), .A2(n40), .Y(wb_adr_int[1]) );
  INVX0_RVT U84 ( .A(n149), .Y(n118) );
  AOI222X1_RVT U85 ( .A1(n4), .A2(wb_dat_o[24]), .A3(n37), .A4(wb_dat32_o[24]), 
        .A5(wb_dat8_o[0]), .A6(n38), .Y(n149) );
  INVX0_RVT U87 ( .A(n150), .Y(n134) );
  AOI21X1_RVT U89 ( .A1(wb_dat32_o[9]), .A2(n44), .A3(n68), .Y(n150) );
  INVX0_RVT U90 ( .A(n151), .Y(n132) );
  AOI21X1_RVT U91 ( .A1(wb_dat32_o[17]), .A2(n37), .A3(n67), .Y(n151) );
  AO222X1_RVT U102 ( .A1(n4), .A2(wb_dat_o[28]), .A3(n38), .A4(wb_dat8_o[4]), 
        .A5(wb_dat32_o[28]), .A6(n44), .Y(n133) );
  OR2X1_LVT U103 ( .A1(n41), .A2(n42), .Y(wb_adr_int[0]) );
  AND2X1_LVT U104 ( .A1(n152), .A2(n143), .Y(n42) );
  INVX1_LVT U105 ( .A(n6), .Y(n152) );
  AO21X1_RVT U106 ( .A1(wb_dat32_o[13]), .A2(n37), .A3(n153), .Y(n96) );
  AO22X1_RVT U107 ( .A1(wb_dat_o[13]), .A2(n4), .A3(wb_dat8_o[5]), .A4(n45), 
        .Y(n153) );
  AO21X1_RVT U108 ( .A1(wb_dat32_o[11]), .A2(n44), .A3(n154), .Y(n92) );
  AO22X1_RVT U109 ( .A1(wb_dat_o[11]), .A2(n4), .A3(wb_dat8_o[3]), .A4(n45), 
        .Y(n154) );
  AO21X1_RVT U110 ( .A1(wb_dat32_o[1]), .A2(n44), .A3(n155), .Y(n135) );
  AO22X1_RVT U111 ( .A1(wb_dat_o[1]), .A2(n4), .A3(wb_dat8_o[1]), .A4(n43), 
        .Y(n155) );
  AND3X1_LVT U112 ( .A1(wb_sel_is[0]), .A2(n121), .A3(n50), .Y(n41) );
  OR2X1_LVT U113 ( .A1(wb_sel_is[0]), .A2(wb_sel_is[1]), .Y(n6) );
  AO222X1_RVT U114 ( .A1(n4), .A2(wb_dat_o[22]), .A3(n37), .A4(wb_dat32_o[22]), 
        .A5(n46), .A6(wb_dat8_o[6]), .Y(n75) );
  INVX1_LVT U115 ( .A(n156), .Y(n40) );
  NAND3X0_RVT U116 ( .A1(n121), .A2(wb_sel_is[1]), .A3(n120), .Y(n156) );
  AND2X1_RVT U117 ( .A1(n49), .A2(n52), .Y(n121) );
endmodule


module raminfr_addr_width4_data_width8_depth16_1 ( clk, we, a, dpra, di, dpo
 );
  input [3:0] a;
  input [3:0] dpra;
  input [7:0] di;
  output [7:0] dpo;
  input clk, we;
  wire   n134, n135, n136, n137, n138, n139, n140, n141, n142, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n24, n25, n26,
         n27, n28, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n88,
         n89, n90, n91, n92, n94, n95, n96, n97, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n118, n119, n120, n121, n123, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n144, n145, n146, n147, n148, n149, n208, n209,
         n210, n211, n212, n213, n263, n264, n265, n266, n267, n268, n269,
         n272, n274, n276, n277, n279, n280, n281, n283, n284, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n419, n420, n421, n422,
         n423, n442, n444, n445, n446, n449, n453, n455, n456, n459, n461,
         n463, n466, n467, n468, n469, n470, n471, n472, n474, n475, n476,
         n477, n478, n479, n480, n481;
  wire   [106:0] ram;

  DFFX1_HVT ram_reg_15__7_ ( .D(n261), .CLK(clk), .Q(ram[106]), .QN(n349) );
  DFFX1_HVT ram_reg_15__6_ ( .D(n260), .CLK(clk), .Q(ram[105]), .QN(n361) );
  DFFX1_HVT ram_reg_15__5_ ( .D(n259), .CLK(clk), .Q(ram[104]), .QN(n363) );
  DFFX1_HVT ram_reg_15__4_ ( .D(n258), .CLK(clk), .Q(ram[103]), .QN(n391) );
  DFFX1_HVT ram_reg_15__3_ ( .D(n257), .CLK(clk), .Q(ram[102]), .QN(n384) );
  DFFX1_HVT ram_reg_15__2_ ( .D(n256), .CLK(clk), .Q(ram[101]), .QN(n387) );
  DFFX1_HVT ram_reg_15__1_ ( .D(n255), .CLK(clk), .Q(ram[100]), .QN(n398) );
  DFFX1_HVT ram_reg_14__7_ ( .D(n253), .CLK(clk), .Q(ram[98]), .QN(n291) );
  DFFX1_HVT ram_reg_14__6_ ( .D(n252), .CLK(clk), .Q(ram[97]), .QN(n299) );
  DFFX1_HVT ram_reg_14__5_ ( .D(n251), .CLK(clk), .Q(ram[96]), .QN(n300) );
  DFFX1_HVT ram_reg_14__4_ ( .D(n250), .CLK(clk), .Q(ram[95]), .QN(n327) );
  DFFX1_HVT ram_reg_14__3_ ( .D(n249), .CLK(clk), .Q(ram[94]), .QN(n321) );
  DFFX1_HVT ram_reg_14__2_ ( .D(n248), .CLK(clk), .Q(ram[93]), .QN(n324) );
  DFFX1_HVT ram_reg_14__1_ ( .D(n247), .CLK(clk), .Q(ram[92]), .QN(n333) );
  DFFX1_HVT ram_reg_13__7_ ( .D(n245), .CLK(clk), .Q(ram[90]), .QN(n345) );
  DFFX1_HVT ram_reg_13__6_ ( .D(n244), .CLK(clk), .Q(ram[89]), .QN(n353) );
  DFFX1_HVT ram_reg_13__5_ ( .D(n243), .CLK(clk), .Q(ram[88]), .QN(n356) );
  DFFX1_HVT ram_reg_13__4_ ( .D(n242), .CLK(clk), .Q(ram[87]), .QN(n379) );
  DFFX1_HVT ram_reg_13__3_ ( .D(n241), .CLK(clk), .Q(ram[86]), .QN(n372) );
  DFFX1_HVT ram_reg_13__2_ ( .D(n240), .CLK(clk), .Q(ram[85]), .QN(n376) );
  DFFX1_HVT ram_reg_13__1_ ( .D(n239), .CLK(clk), .Q(ram[84]), .QN(n390) );
  DFFX1_HVT ram_reg_13__0_ ( .D(n238), .CLK(clk), .Q(ram[83]), .QN(n369) );
  DFFX1_HVT ram_reg_12__7_ ( .D(n237), .CLK(clk), .Q(ram[82]), .QN(n294) );
  DFFX1_HVT ram_reg_12__6_ ( .D(n236), .CLK(clk), .Q(ram[81]), .QN(n302) );
  DFFX1_HVT ram_reg_12__5_ ( .D(n235), .CLK(clk), .Q(ram[80]), .QN(n304) );
  DFFX1_HVT ram_reg_12__4_ ( .D(n234), .CLK(clk), .Q(ram[79]), .QN(n331) );
  DFFX1_HVT ram_reg_12__3_ ( .D(n233), .CLK(clk), .Q(ram[78]), .QN(n328) );
  DFFX1_HVT ram_reg_12__2_ ( .D(n232), .CLK(clk), .Q(ram[77]), .QN(n329) );
  DFFX1_HVT ram_reg_12__1_ ( .D(n231), .CLK(clk), .Q(ram[76]), .QN(n336) );
  DFFX1_HVT ram_reg_12__0_ ( .D(n230), .CLK(clk), .Q(ram[75]), .QN(n370) );
  DFFX1_HVT ram_reg_11__7_ ( .D(n229), .CLK(clk), .QN(n351) );
  DFFX1_HVT ram_reg_11__6_ ( .D(n228), .CLK(clk), .QN(n362) );
  DFFX1_HVT ram_reg_11__5_ ( .D(n227), .CLK(clk), .QN(n364) );
  DFFX1_HVT ram_reg_11__4_ ( .D(n226), .CLK(clk), .QN(n395) );
  DFFX1_HVT ram_reg_11__2_ ( .D(n224), .CLK(clk), .QN(n392) );
  DFFX1_HVT ram_reg_11__1_ ( .D(n223), .CLK(clk), .QN(n399) );
  DFFX1_HVT ram_reg_11__0_ ( .D(n222), .CLK(clk), .Q(ram[74]), .QN(n312) );
  DFFX1_HVT ram_reg_10__7_ ( .D(n221), .CLK(clk), .Q(ram[73]), .QN(n288) );
  DFFX1_HVT ram_reg_10__6_ ( .D(n220), .CLK(clk), .Q(ram[72]), .QN(n293) );
  DFFX1_HVT ram_reg_10__5_ ( .D(n219), .CLK(clk), .Q(ram[71]), .QN(n295) );
  DFFX1_HVT ram_reg_10__4_ ( .D(n218), .CLK(clk), .Q(ram[70]), .QN(n318) );
  DFFX1_HVT ram_reg_10__3_ ( .D(n217), .CLK(clk), .Q(ram[69]), .QN(n315) );
  DFFX1_HVT ram_reg_10__2_ ( .D(n216), .CLK(clk), .Q(ram[68]), .QN(n316) );
  DFFX1_HVT ram_reg_10__1_ ( .D(n215), .CLK(clk), .Q(ram[67]), .QN(n326) );
  DFFX1_HVT ram_reg_10__0_ ( .D(n214), .CLK(clk), .Q(ram[66]), .QN(n311) );
  DFFX1_HVT ram_reg_9__7_ ( .D(n413), .CLK(clk), .Q(n472), .QN(n301) );
  DFFX1_HVT ram_reg_9__6_ ( .D(n412), .CLK(clk), .QN(n305) );
  DFFX1_HVT ram_reg_9__5_ ( .D(n411), .CLK(clk), .QN(n306) );
  DFFX1_HVT ram_reg_9__4_ ( .D(n410), .CLK(clk), .QN(n339) );
  DFFX1_HVT ram_reg_9__3_ ( .D(n409), .CLK(clk), .QN(n335) );
  DFFX1_HVT ram_reg_9__2_ ( .D(n408), .CLK(clk), .QN(n337) );
  DFFX1_HVT ram_reg_9__1_ ( .D(n407), .CLK(clk), .QN(n342) );
  DFFX1_HVT ram_reg_9__0_ ( .D(n206), .CLK(clk), .Q(ram[65]), .QN(n367) );
  DFFX1_HVT ram_reg_8__7_ ( .D(n205), .CLK(clk), .Q(ram[64]) );
  DFFX1_HVT ram_reg_8__6_ ( .D(n204), .CLK(clk), .Q(ram[63]), .QN(n350) );
  DFFX1_HVT ram_reg_8__5_ ( .D(n203), .CLK(clk), .Q(ram[62]), .QN(n354) );
  DFFX1_HVT ram_reg_8__4_ ( .D(n202), .CLK(clk), .Q(ram[61]), .QN(n375) );
  DFFX1_HVT ram_reg_8__3_ ( .D(n201), .CLK(clk), .Q(ram[60]), .QN(n371) );
  DFFX1_HVT ram_reg_8__2_ ( .D(n200), .CLK(clk), .Q(ram[59]), .QN(n373) );
  DFFX1_HVT ram_reg_8__1_ ( .D(n199), .CLK(clk), .Q(ram[58]), .QN(n386) );
  DFFX1_HVT ram_reg_8__0_ ( .D(n198), .CLK(clk), .Q(ram[57]), .QN(n314) );
  DFFX1_HVT ram_reg_7__7_ ( .D(n197), .CLK(clk), .Q(ram[56]), .QN(n352) );
  DFFX1_HVT ram_reg_7__5_ ( .D(n195), .CLK(clk), .Q(ram[54]), .QN(n334) );
  DFFX1_HVT ram_reg_6__7_ ( .D(n189), .CLK(clk), .Q(ram[48]), .QN(n292) );
  DFFX1_HVT ram_reg_6__5_ ( .D(n187), .CLK(clk), .Q(ram[46]), .QN(n396) );
  DFFX1_HVT ram_reg_5__7_ ( .D(n181), .CLK(clk), .Q(ram[40]), .QN(n347) );
  DFFX1_HVT ram_reg_5__6_ ( .D(n180), .CLK(clk), .Q(ram[39]), .QN(n357) );
  DFFX1_HVT ram_reg_5__5_ ( .D(n179), .CLK(clk), .Q(ram[38]), .QN(n360) );
  DFFX1_HVT ram_reg_5__4_ ( .D(n178), .CLK(clk), .Q(ram[37]), .QN(n383) );
  DFFX1_HVT ram_reg_5__3_ ( .D(n177), .CLK(clk), .Q(ram[36]), .QN(n377) );
  DFFX1_HVT ram_reg_5__2_ ( .D(n176), .CLK(clk), .Q(ram[35]), .QN(n381) );
  DFFX1_HVT ram_reg_5__1_ ( .D(n175), .CLK(clk), .Q(ram[34]), .QN(n394) );
  DFFX1_HVT ram_reg_5__0_ ( .D(n174), .CLK(clk), .Q(ram[33]), .QN(n366) );
  DFFX1_HVT ram_reg_4__7_ ( .D(n173), .CLK(clk), .Q(ram[32]), .QN(n348) );
  DFFX1_HVT ram_reg_4__6_ ( .D(n172), .CLK(clk), .Q(ram[31]), .QN(n359) );
  DFFX1_HVT ram_reg_4__4_ ( .D(n170), .CLK(clk), .Q(ram[29]), .QN(n388) );
  DFFX1_HVT ram_reg_4__3_ ( .D(n169), .CLK(clk), .Q(ram[28]), .QN(n382) );
  DFFX1_HVT ram_reg_4__2_ ( .D(n168), .CLK(clk), .Q(ram[27]), .QN(n385) );
  DFFX1_HVT ram_reg_4__1_ ( .D(n167), .CLK(clk), .Q(ram[26]), .QN(n397) );
  DFFX1_HVT ram_reg_4__0_ ( .D(n166), .CLK(clk), .Q(ram[25]), .QN(n368) );
  DFFX1_HVT ram_reg_3__7_ ( .D(n165), .CLK(clk), .Q(ram[24]), .QN(n290) );
  DFFX1_HVT ram_reg_3__6_ ( .D(n164), .CLK(clk), .Q(ram[23]), .QN(n297) );
  DFFX1_HVT ram_reg_3__4_ ( .D(n162), .CLK(clk), .Q(ram[21]), .QN(n325) );
  DFFX1_HVT ram_reg_3__3_ ( .D(n161), .CLK(clk), .Q(ram[20]), .QN(n320) );
  DFFX1_HVT ram_reg_3__2_ ( .D(n160), .CLK(clk), .Q(ram[19]), .QN(n323) );
  DFFX1_HVT ram_reg_3__1_ ( .D(n159), .CLK(clk), .Q(ram[18]), .QN(n332) );
  DFFX1_HVT ram_reg_3__0_ ( .D(n158), .CLK(clk), .Q(ram[17]), .QN(n310) );
  DFFX1_HVT ram_reg_2__7_ ( .D(n157), .CLK(clk), .Q(ram[16]), .QN(n289) );
  DFFX1_HVT ram_reg_2__6_ ( .D(n156), .CLK(clk), .Q(ram[15]), .QN(n296) );
  DFFX1_HVT ram_reg_2__5_ ( .D(n155), .CLK(clk), .Q(ram[14]), .QN(n298) );
  DFFX1_HVT ram_reg_2__4_ ( .D(n154), .CLK(clk), .Q(ram[13]), .QN(n322) );
  DFFX1_HVT ram_reg_2__3_ ( .D(n153), .CLK(clk), .Q(ram[12]), .QN(n317) );
  DFFX1_HVT ram_reg_2__2_ ( .D(n152), .CLK(clk), .Q(ram[11]), .QN(n319) );
  DFFX1_HVT ram_reg_2__1_ ( .D(n151), .CLK(clk), .Q(ram[10]), .QN(n330) );
  DFFX1_HVT ram_reg_2__0_ ( .D(n150), .CLK(clk), .Q(ram[9]), .QN(n309) );
  DFFX1_HVT ram_reg_1__7_ ( .D(n406), .CLK(clk), .QN(n303) );
  DFFX1_HVT ram_reg_1__6_ ( .D(n405), .CLK(clk), .QN(n307) );
  DFFX1_HVT ram_reg_1__5_ ( .D(n404), .CLK(clk), .QN(n308) );
  DFFX1_HVT ram_reg_1__4_ ( .D(n403), .CLK(clk), .QN(n341) );
  DFFX1_HVT ram_reg_1__3_ ( .D(n402), .CLK(clk), .QN(n338) );
  DFFX1_HVT ram_reg_1__2_ ( .D(n401), .CLK(clk), .QN(n340) );
  DFFX1_HVT ram_reg_1__1_ ( .D(n400), .CLK(clk), .QN(n343) );
  DFFX1_HVT ram_reg_1__0_ ( .D(n142), .CLK(clk), .Q(ram[8]), .QN(n313) );
  DFFX1_HVT ram_reg_0__7_ ( .D(n141), .CLK(clk), .Q(ram[7]), .QN(n346) );
  DFFX1_HVT ram_reg_0__6_ ( .D(n140), .CLK(clk), .Q(ram[6]), .QN(n355) );
  DFFX1_HVT ram_reg_0__5_ ( .D(n139), .CLK(clk), .Q(ram[5]), .QN(n358) );
  DFFX1_HVT ram_reg_0__4_ ( .D(n138), .CLK(clk), .Q(ram[4]), .QN(n380) );
  DFFX1_HVT ram_reg_0__3_ ( .D(n137), .CLK(clk), .Q(ram[3]), .QN(n374) );
  DFFX1_HVT ram_reg_0__2_ ( .D(n136), .CLK(clk), .Q(ram[2]), .QN(n378) );
  DFFX1_HVT ram_reg_0__1_ ( .D(n135), .CLK(clk), .Q(ram[1]), .QN(n393) );
  DFFX1_HVT ram_reg_0__0_ ( .D(n134), .CLK(clk), .Q(ram[0]), .QN(n365) );
  MUX21X1_HVT U5 ( .A1(di[7]), .A2(ram[40]), .S0(n5), .Y(n181) );
  OR2X1_HVT U17 ( .A1(n8), .A2(n6), .Y(n11) );
  INVX0_HVT U23 ( .A(n14), .Y(n4) );
  INVX0_HVT U34 ( .A(a[0]), .Y(n7) );
  INVX0_HVT U35 ( .A(a[3]), .Y(n2) );
  INVX0_HVT U37 ( .A(a[2]), .Y(n1) );
  INVX0_HVT U40 ( .A(a[1]), .Y(n3) );
  INVX0_HVT U50 ( .A(n68), .Y(n17) );
  INVX0_HVT U80 ( .A(n38), .Y(n8) );
  NAND2X0_HVT U170 ( .A1(n86), .A2(di[1]), .Y(n39) );
  NAND2X0_HVT U171 ( .A1(n86), .A2(di[6]), .Y(n40) );
  NAND2X0_HVT U173 ( .A1(n86), .A2(di[4]), .Y(n41) );
  NAND2X0_HVT U175 ( .A1(n86), .A2(di[7]), .Y(n42) );
  NAND2X0_HVT U177 ( .A1(n86), .A2(di[3]), .Y(n43) );
  NAND2X0_HVT U179 ( .A1(n86), .A2(di[2]), .Y(n44) );
  NAND2X0_HVT U181 ( .A1(n86), .A2(di[5]), .Y(n45) );
  NAND2X0_HVT U186 ( .A1(n55), .A2(di[1]), .Y(n48) );
  NAND2X0_HVT U187 ( .A1(n55), .A2(di[2]), .Y(n49) );
  NAND2X0_HVT U189 ( .A1(n55), .A2(di[3]), .Y(n50) );
  NAND2X0_HVT U191 ( .A1(n55), .A2(di[5]), .Y(n51) );
  NAND2X0_HVT U193 ( .A1(n55), .A2(di[6]), .Y(n52) );
  NAND2X0_HVT U195 ( .A1(n55), .A2(di[4]), .Y(n53) );
  NAND2X0_HVT U197 ( .A1(n55), .A2(di[7]), .Y(n54) );
  INVX0_HVT U210 ( .A(n67), .Y(n69) );
  INVX0_HVT U224 ( .A(n78), .Y(n77) );
  INVX0_HVT U226 ( .A(n80), .Y(n79) );
  INVX0_HVT U228 ( .A(n82), .Y(n81) );
  INVX0_HVT U231 ( .A(n86), .Y(n85) );
  NOR2X0_RVT U222 ( .A1(n399), .A2(n88), .Y(n76) );
  AO21X1_HVT U216 ( .A1(n423), .A2(di[7]), .A3(n72), .Y(n229) );
  AND2X1_HVT U211 ( .A1(n69), .A2(n68), .Y(n88) );
  MUX21X1_HVT U141 ( .A1(ram[90]), .A2(di[7]), .S0(n84), .Y(n245) );
  OR2X1_HVT U135 ( .A1(n18), .A2(n17), .Y(n83) );
  MUX21X1_HVT U125 ( .A1(ram[98]), .A2(di[7]), .S0(n78), .Y(n253) );
  MUX21X1_HVT U122 ( .A1(ram[73]), .A2(di[7]), .S0(n80), .Y(n221) );
  MUX21X1_HVT U121 ( .A1(ram[82]), .A2(di[7]), .S0(n82), .Y(n237) );
  MUX21X1_HVT U115 ( .A1(ram[71]), .A2(di[5]), .S0(n80), .Y(n219) );
  MUX21X1_HVT U114 ( .A1(ram[80]), .A2(di[5]), .S0(n82), .Y(n235) );
  MUX21X1_HVT U97 ( .A1(di[7]), .A2(ram[7]), .S0(n11), .Y(n141) );
  MUX21X1_HVT U96 ( .A1(di[7]), .A2(ram[48]), .S0(n9), .Y(n189) );
  MUX21X1_HVT U95 ( .A1(di[7]), .A2(ram[16]), .S0(n13), .Y(n157) );
  MUX21X1_HVT U94 ( .A1(di[7]), .A2(ram[64]), .S0(n12), .Y(n205) );
  MUX21X1_HVT U92 ( .A1(di[7]), .A2(ram[32]), .S0(n10), .Y(n173) );
  MUX21X1_HVT U86 ( .A1(di[5]), .A2(ram[62]), .S0(n12), .Y(n203) );
  MUX21X1_HVT U84 ( .A1(di[5]), .A2(ram[46]), .S0(n9), .Y(n187) );
  MUX21X1_HVT U83 ( .A1(di[5]), .A2(ram[14]), .S0(n13), .Y(n155) );
  OR2X1_HVT U82 ( .A1(n6), .A2(n67), .Y(n13) );
  MUX21X1_HVT U81 ( .A1(di[5]), .A2(ram[5]), .S0(n11), .Y(n139) );
  NOR2X0_HVT U79 ( .A1(a[1]), .A2(a[2]), .Y(n38) );
  MUX21X1_HVT U75 ( .A1(di[5]), .A2(ram[38]), .S0(n5), .Y(n179) );
  MUX21X1_HVT U68 ( .A1(di[7]), .A2(ram[24]), .S0(n47), .Y(n165) );
  OR2X1_HVT U62 ( .A1(a[2]), .A2(n3), .Y(n67) );
  MUX21X1_HVT U61 ( .A1(di[7]), .A2(ram[56]), .S0(n46), .Y(n197) );
  MUX21X1_HVT U60 ( .A1(di[5]), .A2(ram[54]), .S0(n46), .Y(n195) );
  MUX21X1_HVT U53 ( .A1(di[7]), .A2(ram[106]), .S0(n37), .Y(n261) );
  OR2X1_HVT U42 ( .A1(n6), .A2(n16), .Y(n9) );
  OR2X1_HVT U41 ( .A1(n1), .A2(n3), .Y(n16) );
  MUX21X1_HVT U39 ( .A1(di[5]), .A2(ram[30]), .S0(n10), .Y(n171) );
  OR2X1_HVT U38 ( .A1(n6), .A2(n18), .Y(n10) );
  MUX21X1_HVT U30 ( .A1(di[5]), .A2(ram[22]), .S0(n47), .Y(n163) );
  AND2X1_HVT U28 ( .A1(n68), .A2(n38), .Y(n86) );
  AND2X1_HVT U27 ( .A1(n14), .A2(n38), .Y(n55) );
  OR2X1_HVT U9 ( .A1(n1), .A2(a[1]), .Y(n18) );
  DFFASRX1_HVT ram_reg_7__3_ ( .D(n193), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[52]) );
  DFFASRX1_HVT ram_reg_6__3_ ( .D(n185), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[44]) );
  DFFASRX1_HVT ram_reg_7__2_ ( .D(n192), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[51]) );
  DFFASRX1_HVT ram_reg_7__1_ ( .D(n191), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[50]) );
  DFFASRX1_HVT ram_reg_6__2_ ( .D(n184), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[43]) );
  DFFASRX1_HVT ram_reg_6__1_ ( .D(n183), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[42]) );
  DFFASRX1_HVT ram_reg_14__0_ ( .D(n246), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[91]) );
  DFFASRX1_HVT ram_reg_7__0_ ( .D(n190), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[49]) );
  DFFASRX1_HVT ram_reg_6__0_ ( .D(n182), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[41]) );
  DFFASRX1_HVT ram_reg_15__0_ ( .D(n254), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[99]) );
  DFFASRX1_HVT ram_reg_7__6_ ( .D(n196), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[55]) );
  DFFASRX1_HVT ram_reg_6__6_ ( .D(n188), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[47]) );
  DFFASRX1_HVT ram_reg_7__4_ ( .D(n194), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[53]) );
  DFFASRX1_HVT ram_reg_6__4_ ( .D(n186), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[45]) );
  DFFASRX1_HVT ram_reg_4__5_ ( .D(n171), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[30]) );
  DFFASRX1_HVT ram_reg_3__5_ ( .D(n163), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[22]) );
  INVX0_HVT U208 ( .A(n88), .Y(n422) );
  INVX0_HVT U218 ( .A(n422), .Y(n423) );
  NOR2X0_RVT U111 ( .A1(n395), .A2(n88), .Y(n71) );
  AND3X1_HVT U49 ( .A1(a[0]), .A2(we), .A3(a[3]), .Y(n68) );
  DFFX1_HVT ram_reg_11__3_ ( .D(n225), .CLK(clk), .QN(n389) );
  INVX0_HVT U8 ( .A(dpra[2]), .Y(n22) );
  INVX0_HVT U266 ( .A(n276), .Y(n277) );
  OR2X1_HVT U51 ( .A1(n17), .A2(n16), .Y(n37) );
  INVX0_HVT U166 ( .A(n279), .Y(n208) );
  MUX21X1_HVT U43 ( .A1(di[4]), .A2(ram[53]), .S0(n46), .Y(n194) );
  MUX21X1_HVT U48 ( .A1(di[4]), .A2(ram[21]), .S0(n47), .Y(n162) );
  MUX21X1_HVT U52 ( .A1(di[6]), .A2(ram[39]), .S0(n5), .Y(n180) );
  MUX21X1_HVT U91 ( .A1(di[6]), .A2(ram[6]), .S0(n11), .Y(n140) );
  MUX21X1_HVT U98 ( .A1(di[4]), .A2(ram[4]), .S0(n11), .Y(n138) );
  MUX21X1_HVT U105 ( .A1(di[6]), .A2(ram[15]), .S0(n13), .Y(n156) );
  MUX21X1_HVT U107 ( .A1(di[4]), .A2(ram[13]), .S0(n13), .Y(n154) );
  MUX21X1_HVT U132 ( .A1(di[6]), .A2(ram[31]), .S0(n10), .Y(n172) );
  MUX21X1_HVT U143 ( .A1(di[4]), .A2(ram[29]), .S0(n10), .Y(n170) );
  MUX21X1_HVT U150 ( .A1(di[6]), .A2(ram[47]), .S0(n9), .Y(n188) );
  MUX21X1_HVT U155 ( .A1(di[4]), .A2(ram[45]), .S0(n9), .Y(n186) );
  MUX21X1_HVT U168 ( .A1(di[6]), .A2(ram[105]), .S0(n37), .Y(n260) );
  MUX21X1_HVT U182 ( .A1(di[4]), .A2(ram[103]), .S0(n37), .Y(n258) );
  OR2X1_HVT U157 ( .A1(n466), .A2(dpra[0]), .Y(n279) );
  NOR2X1_RVT U127 ( .A1(n362), .A2(n423), .Y(n70) );
  MUX21X1_HVT U7 ( .A1(di[6]), .A2(ram[55]), .S0(n46), .Y(n196) );
  MUX21X1_HVT U66 ( .A1(di[6]), .A2(ram[23]), .S0(n47), .Y(n164) );
  MUX21X1_HVT U73 ( .A1(di[4]), .A2(ram[37]), .S0(n5), .Y(n178) );
  MUX21X1_HVT U90 ( .A1(di[4]), .A2(ram[61]), .S0(n12), .Y(n202) );
  MUX21X1_HVT U93 ( .A1(di[6]), .A2(ram[63]), .S0(n12), .Y(n204) );
  MUX21X1_HVT U117 ( .A1(ram[95]), .A2(di[4]), .S0(n78), .Y(n250) );
  MUX21X1_HVT U118 ( .A1(ram[79]), .A2(di[4]), .S0(n82), .Y(n234) );
  MUX21X1_HVT U119 ( .A1(ram[70]), .A2(di[4]), .S0(n80), .Y(n218) );
  MUX21X1_HVT U120 ( .A1(ram[81]), .A2(di[6]), .S0(n82), .Y(n236) );
  MUX21X1_HVT U123 ( .A1(ram[72]), .A2(di[6]), .S0(n80), .Y(n220) );
  MUX21X1_HVT U124 ( .A1(ram[97]), .A2(di[6]), .S0(n78), .Y(n252) );
  MUX21X1_HVT U138 ( .A1(ram[87]), .A2(di[4]), .S0(n84), .Y(n242) );
  MUX21X1_HVT U142 ( .A1(ram[89]), .A2(di[6]), .S0(n84), .Y(n244) );
  AO21X1_HVT U213 ( .A1(n88), .A2(di[6]), .A3(n70), .Y(n228) );
  NOR2X1_RVT U215 ( .A1(n351), .A2(n423), .Y(n72) );
  NOR2X1_RVT U217 ( .A1(n392), .A2(n423), .Y(n73) );
  NOR2X0_HVT U220 ( .A1(n364), .A2(n423), .Y(n75) );
  AO21X1_HVT U22 ( .A1(n88), .A2(di[4]), .A3(n71), .Y(n226) );
  NOR2X0_RVT U19 ( .A1(n389), .A2(n88), .Y(n74) );
  OR3X1_HVT U18 ( .A1(n60), .A2(n63), .A3(n449), .Y(n442) );
  OAI22X1_RVT U11 ( .A1(n321), .A2(n279), .A3(n384), .A4(n280), .Y(n25) );
  OAI22X1_RVT U24 ( .A1(n295), .A2(n274), .A3(n356), .A4(n420), .Y(n267) );
  NOR2X0_HVT U25 ( .A1(n476), .A2(n129), .Y(n145) );
  NOR2X1_RVT U69 ( .A1(n16), .A2(n15), .Y(n78) );
  MUX21X1_RVT U103 ( .A1(di[0]), .A2(ram[99]), .S0(n37), .Y(n254) );
  AO22X1_RVT U104 ( .A1(n78), .A2(di[0]), .A3(n77), .A4(ram[91]), .Y(n246) );
  MUX21X1_RVT U108 ( .A1(di[2]), .A2(ram[2]), .S0(n11), .Y(n136) );
  MUX21X1_RVT U116 ( .A1(di[1]), .A2(ram[10]), .S0(n13), .Y(n151) );
  MUX21X1_RVT U130 ( .A1(di[1]), .A2(ram[26]), .S0(n10), .Y(n167) );
  AO21X1_RVT U174 ( .A1(n423), .A2(di[5]), .A3(n75), .Y(n227) );
  MUX21X1_RVT U185 ( .A1(ram[86]), .A2(di[3]), .S0(n84), .Y(n241) );
  MUX21X1_RVT U200 ( .A1(di[5]), .A2(ram[104]), .S0(n37), .Y(n259) );
  OAI22X1_HVT U221 ( .A1(n272), .A2(n380), .A3(n341), .A4(n455), .Y(n213) );
  OAI22X1_HVT U233 ( .A1(n272), .A2(n375), .A3(n339), .A4(n415), .Y(n149) );
  OAI22X1_RVT U235 ( .A1(n272), .A2(n314), .A3(n367), .A4(n455), .Y(n63) );
  OAI22X1_RVT U237 ( .A1(n272), .A2(n365), .A3(n313), .A4(n415), .Y(n59) );
  OAI22X1_HVT U239 ( .A1(n272), .A2(n378), .A3(n340), .A4(n415), .Y(n109) );
  OAI22X1_HVT U242 ( .A1(n272), .A2(n393), .A3(n343), .A4(n455), .Y(n121) );
  OAI22X1_RVT U243 ( .A1(n272), .A2(n358), .A3(n308), .A4(n455), .Y(n284) );
  OAI22X1_HVT U249 ( .A1(n272), .A2(n373), .A3(n337), .A4(n415), .Y(n104) );
  OAI22X1_HVT U250 ( .A1(n272), .A2(n386), .A3(n342), .A4(n415), .Y(n116) );
  OAI22X1_HVT U253 ( .A1(n272), .A2(n374), .A3(n338), .A4(n455), .Y(n33) );
  OAI22X1_HVT U254 ( .A1(n272), .A2(n371), .A3(n335), .A4(n415), .Y(n28) );
  OAI22X1_HVT U255 ( .A1(n325), .A2(n276), .A3(n388), .A4(n419), .Y(n211) );
  OAI22X1_HVT U260 ( .A1(n395), .A2(n276), .A3(n331), .A4(n419), .Y(n147) );
  OAI22X1_RVT U261 ( .A1(n310), .A2(n276), .A3(n368), .A4(n419), .Y(n57) );
  OAI22X1_HVT U262 ( .A1(n312), .A2(n276), .A3(n370), .A4(n419), .Y(n61) );
  OAI22X1_HVT U267 ( .A1(n323), .A2(n276), .A3(n385), .A4(n419), .Y(n107) );
  OAI22X1_RVT U274 ( .A1(n332), .A2(n276), .A3(n397), .A4(n419), .Y(n119) );
  OAI22X1_RVT U277 ( .A1(n364), .A2(n276), .A3(n304), .A4(n419), .Y(n266) );
  OAI22X1_HVT U278 ( .A1(n392), .A2(n276), .A3(n329), .A4(n419), .Y(n102) );
  OAI22X1_HVT U282 ( .A1(n399), .A2(n276), .A3(n336), .A4(n419), .Y(n114) );
  OAI22X1_HVT U285 ( .A1(n320), .A2(n276), .A3(n382), .A4(n419), .Y(n31) );
  OAI22X1_HVT U288 ( .A1(n389), .A2(n276), .A3(n328), .A4(n419), .Y(n26) );
  OAI22X1_HVT U291 ( .A1(n322), .A2(n274), .A3(n383), .A4(n420), .Y(n212) );
  OAI22X1_HVT U292 ( .A1(n318), .A2(n274), .A3(n379), .A4(n421), .Y(n148) );
  OAI22X1_RVT U293 ( .A1(n311), .A2(n274), .A3(n369), .A4(n421), .Y(n62) );
  OAI22X1_RVT U294 ( .A1(n309), .A2(n274), .A3(n366), .A4(n421), .Y(n58) );
  OAI22X1_RVT U297 ( .A1(n319), .A2(n274), .A3(n381), .A4(n421), .Y(n108) );
  OAI22X1_HVT U298 ( .A1(n330), .A2(n274), .A3(n394), .A4(n420), .Y(n120) );
  OAI22X1_RVT U300 ( .A1(n298), .A2(n274), .A3(n360), .A4(n421), .Y(n283) );
  OAI22X1_HVT U303 ( .A1(n316), .A2(n274), .A3(n376), .A4(n420), .Y(n103) );
  OAI22X1_HVT U305 ( .A1(n326), .A2(n274), .A3(n390), .A4(n421), .Y(n115) );
  OAI22X1_HVT U306 ( .A1(n317), .A2(n274), .A3(n377), .A4(n420), .Y(n32) );
  OAI22X1_HVT U310 ( .A1(n315), .A2(n274), .A3(n372), .A4(n420), .Y(n27) );
  OAI21X1_RVT U2 ( .A1(n339), .A2(n86), .A3(n41), .Y(n410) );
  OR2X1_RVT U71 ( .A1(n4), .A2(n18), .Y(n5) );
  OR2X1_RVT U59 ( .A1(n4), .A2(n16), .Y(n46) );
  OAI22X1_RVT U12 ( .A1(n327), .A2(n279), .A3(n391), .A4(n280), .Y(n146) );
  OAI22X1_HVT U67 ( .A1(n296), .A2(n274), .A3(n357), .A4(n420), .Y(n132) );
  OR2X1_RVT U126 ( .A1(n8), .A2(n15), .Y(n12) );
  MUX21X1_RVT U148 ( .A1(di[2]), .A2(ram[51]), .S0(n46), .Y(n192) );
  OAI21X1_RVT U151 ( .A1(n343), .A2(n55), .A3(n48), .Y(n400) );
  MUX21X1_RVT U162 ( .A1(di[1]), .A2(ram[34]), .S0(n5), .Y(n175) );
  MUX21X1_RVT U169 ( .A1(ram[69]), .A2(di[3]), .S0(n80), .Y(n217) );
  MUX21X1_RVT U183 ( .A1(ram[78]), .A2(di[3]), .S0(n82), .Y(n233) );
  MUX21X1_RVT U199 ( .A1(ram[94]), .A2(di[3]), .S0(n78), .Y(n249) );
  OAI22X1_HVT U273 ( .A1(n362), .A2(n276), .A3(n302), .A4(n419), .Y(n126) );
  OAI22X1_RVT U280 ( .A1(n351), .A2(n276), .A3(n294), .A4(n419), .Y(n90) );
  INVX0_RVT U287 ( .A(n453), .Y(n455) );
  OAI22X1_RVT U299 ( .A1(n272), .A2(n355), .A3(n307), .A4(n415), .Y(n133) );
  OAI22X1_RVT U304 ( .A1(n272), .A2(n350), .A3(n305), .A4(n415), .Y(n128) );
  AO22X1_RVT U281 ( .A1(n209), .A2(ram[55]), .A3(n208), .A4(ram[47]), .Y(n130)
         );
  AO22X1_RVT U206 ( .A1(n209), .A2(ram[99]), .A3(n208), .A4(ram[91]), .Y(n60)
         );
  OR2X1_RVT U6 ( .A1(n56), .A2(n445), .Y(n444) );
  OAI22X1_RVT U14 ( .A1(n292), .A2(n279), .A3(n352), .A4(n280), .Y(n94) );
  OAI21X1_RVT U106 ( .A1(n306), .A2(n86), .A3(n45), .Y(n411) );
  AO21X1_RVT U219 ( .A1(n423), .A2(di[1]), .A3(n76), .Y(n223) );
  AO21X1_RVT U223 ( .A1(n423), .A2(di[3]), .A3(n74), .Y(n225) );
  AO21X1_RVT U225 ( .A1(n88), .A2(di[2]), .A3(n73), .Y(n224) );
  OAI22X1_RVT U248 ( .A1(n293), .A2(n274), .A3(n353), .A4(n421), .Y(n127) );
  OR2X1_RVT U340 ( .A1(n59), .A2(n57), .Y(n446) );
  OR2X1_RVT U339 ( .A1(dpra[3]), .A2(n58), .Y(n445) );
  OAI21X1_RVT U32 ( .A1(n342), .A2(n86), .A3(n39), .Y(n407) );
  NAND3X0_RVT U36 ( .A1(we), .A2(n7), .A3(n2), .Y(n6) );
  MUX21X1_RVT U64 ( .A1(di[2]), .A2(ram[19]), .S0(n47), .Y(n160) );
  MUX21X1_RVT U65 ( .A1(di[3]), .A2(ram[20]), .S0(n47), .Y(n161) );
  MUX21X1_RVT U70 ( .A1(di[1]), .A2(ram[18]), .S0(n47), .Y(n159) );
  MUX21X1_RVT U72 ( .A1(di[3]), .A2(ram[36]), .S0(n5), .Y(n177) );
  MUX21X1_RVT U76 ( .A1(di[2]), .A2(ram[35]), .S0(n5), .Y(n176) );
  NAND3X0_RVT U85 ( .A1(we), .A2(a[3]), .A3(n7), .Y(n15) );
  MUX21X1_RVT U102 ( .A1(di[3]), .A2(ram[60]), .S0(n12), .Y(n201) );
  MUX21X1_RVT U109 ( .A1(di[2]), .A2(ram[59]), .S0(n12), .Y(n200) );
  MUX21X1_RVT U129 ( .A1(ram[76]), .A2(di[1]), .S0(n82), .Y(n231) );
  MUX21X1_RVT U131 ( .A1(ram[77]), .A2(di[2]), .S0(n82), .Y(n232) );
  MUX21X1_RVT U133 ( .A1(ram[67]), .A2(di[1]), .S0(n80), .Y(n215) );
  MUX21X1_RVT U134 ( .A1(ram[68]), .A2(di[2]), .S0(n80), .Y(n216) );
  MUX21X1_RVT U137 ( .A1(ram[85]), .A2(di[2]), .S0(n84), .Y(n240) );
  MUX21X1_RVT U139 ( .A1(ram[88]), .A2(di[5]), .S0(n84), .Y(n243) );
  MUX21X1_RVT U140 ( .A1(ram[84]), .A2(di[1]), .S0(n84), .Y(n239) );
  AO22X1_HVT U167 ( .A1(n209), .A2(ram[52]), .A3(n208), .A4(ram[44]), .Y(n30)
         );
  OAI21X1_RVT U172 ( .A1(n305), .A2(n86), .A3(n40), .Y(n412) );
  OAI21X1_RVT U178 ( .A1(n335), .A2(n86), .A3(n43), .Y(n409) );
  OAI21X1_RVT U180 ( .A1(n337), .A2(n86), .A3(n44), .Y(n408) );
  MUX21X1_RVT U184 ( .A1(di[1]), .A2(ram[50]), .S0(n46), .Y(n191) );
  OAI21X1_RVT U188 ( .A1(n340), .A2(n55), .A3(n49), .Y(n401) );
  OAI21X1_RVT U190 ( .A1(n338), .A2(n55), .A3(n50), .Y(n402) );
  OAI21X1_RVT U194 ( .A1(n307), .A2(n55), .A3(n52), .Y(n405) );
  OAI21X1_RVT U196 ( .A1(n341), .A2(n55), .A3(n53), .Y(n403) );
  OAI21X1_RVT U198 ( .A1(n303), .A2(n55), .A3(n54), .Y(n406) );
  AO22X1_RVT U201 ( .A1(n209), .A2(ram[49]), .A3(n208), .A4(ram[41]), .Y(n56)
         );
  OAI22X1_RVT U236 ( .A1(n288), .A2(n274), .A3(n345), .A4(n421), .Y(n91) );
  OAI22X1_RVT U238 ( .A1(n291), .A2(n279), .A3(n349), .A4(n280), .Y(n89) );
  NOR4X1_HVT U251 ( .A1(n104), .A2(n103), .A3(n102), .A4(n101), .Y(n105) );
  NOR2X0_HVT U252 ( .A1(n476), .A2(n105), .Y(n112) );
  AO22X1_RVT U256 ( .A1(n209), .A2(ram[51]), .A3(n208), .A4(ram[43]), .Y(n106)
         );
  NOR4X1_HVT U257 ( .A1(n109), .A2(n108), .A3(n107), .A4(n106), .Y(n110) );
  NOR2X0_HVT U258 ( .A1(dpra[3]), .A2(n110), .Y(n111) );
  OR2X1_HVT U259 ( .A1(n112), .A2(n111), .Y(dpo[2]) );
  AO22X1_RVT U268 ( .A1(n209), .A2(ram[50]), .A3(n208), .A4(ram[42]), .Y(n118)
         );
  NOR2X0_HVT U270 ( .A1(dpra[3]), .A2(n467), .Y(n123) );
  OAI22X1_RVT U275 ( .A1(n299), .A2(n279), .A3(n361), .A4(n280), .Y(n125) );
  NOR4X1_HVT U276 ( .A1(n128), .A2(n127), .A3(n126), .A4(n125), .Y(n129) );
  NOR2X0_HVT U283 ( .A1(dpra[3]), .A2(n459), .Y(n144) );
  OR2X1_HVT U284 ( .A1(n145), .A2(n144), .Y(dpo[6]) );
  NOR4X1_RVT U301 ( .A1(n268), .A2(n267), .A3(n266), .A4(n265), .Y(n269) );
  NOR2X1_RVT U302 ( .A1(n476), .A2(n269), .Y(n287) );
  OAI22X1_RVT U308 ( .A1(n334), .A2(n280), .A3(n396), .A4(n279), .Y(n281) );
  OAI22X1_RVT U10 ( .A1(n300), .A2(n279), .A3(n363), .A4(n280), .Y(n265) );
  OA22X1_HVT U207 ( .A1(n446), .A2(n444), .A3(n476), .A4(n442), .Y(dpo[0]) );
  OR2X1_HVT U334 ( .A1(n62), .A2(n61), .Y(n449) );
  MUX21X1_RVT U246 ( .A1(ram[96]), .A2(di[5]), .S0(n78), .Y(n251) );
  MUX21X1_RVT U209 ( .A1(ram[93]), .A2(di[2]), .S0(n78), .Y(n248) );
  AO22X1_RVT U154 ( .A1(n80), .A2(di[0]), .A3(n79), .A4(ram[66]), .Y(n214) );
  MUX21X1_RVT U153 ( .A1(di[1]), .A2(ram[58]), .S0(n12), .Y(n199) );
  INVX0_RVT U113 ( .A(n83), .Y(n84) );
  OAI22X1_RVT U46 ( .A1(n324), .A2(n279), .A3(n387), .A4(n280), .Y(n101) );
  NOR2X0_HVT U290 ( .A1(n476), .A2(n469), .Y(n264) );
  AND3X1_RVT U58 ( .A1(we), .A2(a[0]), .A3(n2), .Y(n14) );
  INVX1_RVT U164 ( .A(n414), .Y(n420) );
  AO22X1_RVT U57 ( .A1(n416), .A2(ram[30]), .A3(n277), .A4(ram[22]), .Y(n456)
         );
  AND2X1_RVT U205 ( .A1(n476), .A2(n463), .Y(n286) );
  OR4X1_RVT U272 ( .A1(n284), .A2(n283), .A3(n456), .A4(n281), .Y(n463) );
  MUX21X1_RVT U203 ( .A1(di[1]), .A2(ram[100]), .S0(n37), .Y(n255) );
  MUX21X1_RVT U202 ( .A1(di[2]), .A2(ram[101]), .S0(n37), .Y(n256) );
  MUX21X1_RVT U192 ( .A1(di[3]), .A2(ram[102]), .S0(n37), .Y(n257) );
  MUX21X1_RVT U160 ( .A1(di[0]), .A2(ram[41]), .S0(n9), .Y(n182) );
  MUX21X1_RVT U159 ( .A1(di[3]), .A2(ram[44]), .S0(n9), .Y(n185) );
  MUX21X1_RVT U156 ( .A1(di[1]), .A2(ram[42]), .S0(n9), .Y(n183) );
  MUX21X1_RVT U149 ( .A1(di[0]), .A2(ram[25]), .S0(n10), .Y(n166) );
  MUX21X1_RVT U145 ( .A1(di[3]), .A2(ram[28]), .S0(n10), .Y(n169) );
  MUX21X1_RVT U144 ( .A1(di[2]), .A2(ram[27]), .S0(n10), .Y(n168) );
  MUX21X1_RVT U128 ( .A1(di[0]), .A2(ram[9]), .S0(n13), .Y(n150) );
  MUX21X1_RVT U112 ( .A1(di[3]), .A2(ram[12]), .S0(n13), .Y(n153) );
  MUX21X1_RVT U110 ( .A1(di[2]), .A2(ram[11]), .S0(n13), .Y(n152) );
  MUX21X1_RVT U101 ( .A1(di[0]), .A2(ram[0]), .S0(n11), .Y(n134) );
  MUX21X1_RVT U100 ( .A1(di[1]), .A2(ram[1]), .S0(n11), .Y(n135) );
  MUX21X1_RVT U99 ( .A1(di[3]), .A2(ram[3]), .S0(n11), .Y(n137) );
  NOR4X1_HVT U89 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .Y(n461) );
  AO22X1_RVT U56 ( .A1(n84), .A2(di[0]), .A3(n83), .A4(ram[83]), .Y(n238) );
  AO22X1_RVT U55 ( .A1(n88), .A2(di[0]), .A3(n422), .A4(ram[74]), .Y(n222) );
  AO22X1_RVT U54 ( .A1(n86), .A2(di[0]), .A3(n85), .A4(ram[65]), .Y(n206) );
  OAI21X1_RVT U47 ( .A1(n308), .A2(n55), .A3(n51), .Y(n404) );
  MUX21X1_RVT U45 ( .A1(di[3]), .A2(ram[52]), .S0(n46), .Y(n193) );
  MUX21X1_RVT U44 ( .A1(di[0]), .A2(ram[49]), .S0(n46), .Y(n190) );
  OR2X1_HVT U21 ( .A1(n264), .A2(n263), .Y(dpo[4]) );
  NOR2X0_HVT U16 ( .A1(dpra[3]), .A2(n468), .Y(n35) );
  OAI22X1_RVT U241 ( .A1(n289), .A2(n274), .A3(n347), .A4(n421), .Y(n96) );
  NOR2X0_HVT U161 ( .A1(n476), .A2(n471), .Y(n36) );
  OAI22X1_RVT U307 ( .A1(n272), .A2(n346), .A3(n303), .A4(n415), .Y(n97) );
  OAI22X1_RVT U279 ( .A1(n290), .A2(n276), .A3(n348), .A4(n419), .Y(n95) );
  OR2X1_HVT U136 ( .A1(n36), .A2(n35), .Y(dpo[3]) );
  OAI21X1_RVT U3 ( .A1(n301), .A2(n86), .A3(n42), .Y(n413) );
  OR2X1_RVT U4 ( .A1(dpra[1]), .A2(n19), .Y(n272) );
  OR2X1_RVT U13 ( .A1(dpra[1]), .A2(n20), .Y(n415) );
  INVX0_HVT U15 ( .A(n280), .Y(n209) );
  OAI22X1_HVT U20 ( .A1(n297), .A2(n276), .A3(n359), .A4(n419), .Y(n131) );
  OAI22X1_HVT U26 ( .A1(n272), .A2(n354), .A3(n306), .A4(n455), .Y(n268) );
  OR2X1_RVT U29 ( .A1(n21), .A2(n19), .Y(n274) );
  OAI22X1_HVT U31 ( .A1(n333), .A2(n279), .A3(n398), .A4(n280), .Y(n113) );
  OR2X1_HVT U33 ( .A1(n4), .A2(n67), .Y(n47) );
  NOR2X0_HVT U63 ( .A1(n67), .A2(n15), .Y(n80) );
  NOR2X0_HVT U74 ( .A1(n18), .A2(n15), .Y(n82) );
  MUX21X1_HVT U77 ( .A1(di[2]), .A2(ram[43]), .S0(n9), .Y(n184) );
  MUX21X1_HVT U78 ( .A1(ram[8]), .A2(di[0]), .S0(n55), .Y(n142) );
  MUX21X1_HVT U87 ( .A1(di[0]), .A2(ram[17]), .S0(n47), .Y(n158) );
  MUX21X1_HVT U88 ( .A1(di[0]), .A2(ram[33]), .S0(n5), .Y(n174) );
  MUX21X1_HVT U146 ( .A1(di[0]), .A2(ram[57]), .S0(n12), .Y(n198) );
  AO22X1_HVT U147 ( .A1(n82), .A2(di[0]), .A3(n81), .A4(ram[75]), .Y(n230) );
  MUX21X1_HVT U152 ( .A1(ram[92]), .A2(di[1]), .S0(n78), .Y(n247) );
  INVX0_HVT U158 ( .A(dpra[3]), .Y(n476) );
  NAND2X0_RVT U163 ( .A1(dpra[2]), .A2(dpra[1]), .Y(n466) );
  NOR4X1_HVT U165 ( .A1(n121), .A2(n120), .A3(n119), .A4(n118), .Y(n467) );
  NOR4X1_RVT U176 ( .A1(n33), .A2(n32), .A3(n31), .A4(n30), .Y(n468) );
  NOR4X1_HVT U204 ( .A1(n149), .A2(n148), .A3(n147), .A4(n146), .Y(n469) );
  OR4X1_HVT U212 ( .A1(n116), .A2(n115), .A3(n114), .A4(n113), .Y(n470) );
  NOR4X1_HVT U214 ( .A1(n28), .A2(n27), .A3(n26), .A4(n25), .Y(n471) );
  OR2X1_HVT U227 ( .A1(n287), .A2(n286), .Y(dpo[5]) );
  INVX0_HVT U229 ( .A(n419), .Y(n416) );
  OR3X1_RVT U230 ( .A1(dpra[1]), .A2(dpra[0]), .A3(n22), .Y(n419) );
  OAI21X1_HVT U232 ( .A1(dpra[3]), .A2(n481), .A3(n480), .Y(dpo[7]) );
  INVX0_HVT U234 ( .A(ram[45]), .Y(n474) );
  INVX0_HVT U240 ( .A(ram[53]), .Y(n475) );
  OAI22X1_RVT U244 ( .A1(n280), .A2(n475), .A3(n279), .A4(n474), .Y(n210) );
  AND2X1_RVT U245 ( .A1(n476), .A2(n479), .Y(n263) );
  OR2X1_RVT U247 ( .A1(n24), .A2(dpra[2]), .Y(n20) );
  INVX0_LVT U263 ( .A(dpra[0]), .Y(n24) );
  INVX0_HVT U264 ( .A(n272), .Y(n477) );
  AO22X1_RVT U265 ( .A1(n477), .A2(ram[64]), .A3(n472), .A4(n453), .Y(n92) );
  OR2X1_RVT U269 ( .A1(n476), .A2(n461), .Y(n480) );
  INVX0_LVT U271 ( .A(dpra[1]), .Y(n21) );
  AO21X1_RVT U286 ( .A1(n470), .A2(dpra[3]), .A3(n123), .Y(dpo[1]) );
  OR2X2_RVT U289 ( .A1(n21), .A2(n20), .Y(n276) );
  INVX0_RVT U295 ( .A(n478), .Y(n459) );
  OR4X1_RVT U296 ( .A1(n132), .A2(n133), .A3(n131), .A4(n130), .Y(n478) );
  INVX0_RVT U309 ( .A(n421), .Y(n414) );
  OR3X2_RVT U311 ( .A1(dpra[1]), .A2(n24), .A3(n22), .Y(n421) );
  INVX0_RVT U312 ( .A(n415), .Y(n453) );
  OR4X1_RVT U313 ( .A1(n213), .A2(n212), .A3(n211), .A4(n210), .Y(n479) );
  OR2X1_RVT U330 ( .A1(dpra[0]), .A2(dpra[2]), .Y(n19) );
  NOR4X1_RVT U331 ( .A1(n94), .A2(n96), .A3(n95), .A4(n97), .Y(n481) );
  OR2X1_RVT U332 ( .A1(n24), .A2(n466), .Y(n280) );
endmodule


module uart_tfifo ( clk, wb_rst_i, data_in, data_out, push, pop, overrun, 
        count, fifo_reset, reset_status );
  input [7:0] data_in;
  output [7:0] data_out;
  output [4:0] count;
  input clk, wb_rst_i, push, pop, fifo_reset, reset_status;
  output overrun;
  wire   n45, n46, n47, n48, n49, n50, n51, n53, n54, n55, n56, n57, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75;
  wire   [3:0] top;
  wire   [3:0] bottom;

  DFFARX1_HVT count_reg_4_ ( .D(n55), .CLK(clk), .RSTB(n73), .Q(count[4]), 
        .QN(n66) );
  DFFARX1_HVT count_reg_3_ ( .D(n54), .CLK(clk), .RSTB(n73), .Q(count[3]), 
        .QN(n62) );
  DFFARX1_HVT count_reg_2_ ( .D(n53), .CLK(clk), .RSTB(n73), .Q(count[2]), 
        .QN(n61) );
  DFFARX1_HVT count_reg_1_ ( .D(n74), .CLK(clk), .RSTB(n73), .Q(count[1]), 
        .QN(n60) );
  DFFARX1_HVT count_reg_0_ ( .D(n56), .CLK(clk), .RSTB(n73), .Q(count[0]), 
        .QN(n64) );
  DFFARX1_HVT bottom_reg_0_ ( .D(n51), .CLK(clk), .RSTB(n73), .Q(bottom[0]), 
        .QN(n63) );
  DFFARX1_HVT bottom_reg_1_ ( .D(n48), .CLK(clk), .RSTB(n73), .Q(bottom[1]), 
        .QN(n70) );
  DFFARX1_HVT bottom_reg_2_ ( .D(n49), .CLK(clk), .RSTB(n73), .Q(bottom[2]), 
        .QN(n71) );
  DFFARX1_HVT bottom_reg_3_ ( .D(n50), .CLK(clk), .RSTB(n73), .Q(bottom[3]), 
        .QN(n72) );
  DFFARX1_HVT top_reg_0_ ( .D(n57), .CLK(clk), .RSTB(n73), .Q(top[0]), .QN(n65) );
  DFFARX1_HVT top_reg_1_ ( .D(n45), .CLK(clk), .RSTB(n73), .Q(top[1]), .QN(n68) );
  DFFARX1_HVT top_reg_2_ ( .D(n46), .CLK(clk), .RSTB(n73), .Q(top[2]), .QN(n69) );
  DFFARX1_HVT top_reg_3_ ( .D(n47), .CLK(clk), .RSTB(n73), .Q(top[3]), .QN(n67) );
  INVX0_HVT U32 ( .A(n32), .Y(n24) );
  AND2X1_HVT U46 ( .A1(top[1]), .A2(n22), .Y(n59) );
  AO21X1_HVT U45 ( .A1(n44), .A2(n68), .A3(n21), .Y(n43) );
  AND3X1_HVT U38 ( .A1(top[0]), .A2(n44), .A3(n18), .Y(n22) );
  NAND2X0_HVT U37 ( .A1(n18), .A2(n17), .Y(n21) );
  AO21X1_HVT U33 ( .A1(n24), .A2(n16), .A3(fifo_reset), .Y(n36) );
  NAND2X0_HVT U23 ( .A1(n44), .A2(n8), .Y(n18) );
  NAND2X0_HVT U22 ( .A1(n44), .A2(n65), .Y(n17) );
  OR2X1_HVT U4 ( .A1(n3), .A2(n2), .Y(n6) );
  INVX0_HVT U12 ( .A(n30), .Y(n34) );
  INVX0_HVT U34 ( .A(pop), .Y(n14) );
  AO21X1_HVT U44 ( .A1(n34), .A2(n66), .A3(n36), .Y(n42) );
  OR2X1_HVT U42 ( .A1(n14), .A2(push), .Y(n32) );
  AND3X1_HVT U7 ( .A1(n64), .A2(n61), .A3(n60), .Y(n33) );
  NOR2X0_HVT U9 ( .A1(push), .A2(n16), .Y(n2) );
  OR2X1_HVT U13 ( .A1(n63), .A2(n14), .Y(n3) );
  NAND2X0_HVT U29 ( .A1(push), .A2(n14), .Y(n30) );
  AO22X1_HVT U57 ( .A1(n37), .A2(n62), .A3(n66), .A4(n38), .Y(n35) );
  NAND2X0_HVT U16 ( .A1(n34), .A2(count[0]), .Y(n23) );
  INVX0_RVT U10 ( .A(n2), .Y(n1) );
  AO221X1_RVT U26 ( .A1(count[2]), .A2(n32), .A3(n61), .A4(n23), .A5(n60), .Y(
        n26) );
  AND2X1_RVT U49 ( .A1(n10), .A2(n71), .Y(n13) );
  raminfr_addr_width4_data_width8_depth16_1 tfifo ( .clk(clk), .we(push), .a(
        top), .dpra(bottom), .di(data_in), .dpo(data_out) );
  OR2X1_RVT U18 ( .A1(n70), .A2(n6), .Y(n10) );
  NAND3X0_RVT U54 ( .A1(count[2]), .A2(n34), .A3(n60), .Y(n25) );
  OA222X1_RVT U59 ( .A1(count[3]), .A2(n39), .A3(count[3]), .A4(n38), .A5(n37), 
        .A6(n62), .Y(n40) );
  NAND4X0_RVT U56 ( .A1(n34), .A2(count[0]), .A3(count[2]), .A4(count[1]), .Y(
        n38) );
  INVX0_RVT U14 ( .A(fifo_reset), .Y(n44) );
  OR2X1_RVT U3 ( .A1(n71), .A2(n10), .Y(n11) );
  INVX2_RVT U6 ( .A(wb_rst_i), .Y(n73) );
  AND3X1_RVT U15 ( .A1(n4), .A2(n6), .A3(n44), .Y(n51) );
  AND3X1_RVT U19 ( .A1(n7), .A2(n10), .A3(n44), .Y(n48) );
  XNOR2X1_RVT U24 ( .A1(n11), .A2(n72), .Y(n9) );
  NOR2X1_RVT U25 ( .A1(fifo_reset), .A2(n9), .Y(n50) );
  NOR3X0_RVT U28 ( .A1(fifo_reset), .A2(n13), .A3(n12), .Y(n49) );
  AO22X1_RVT U39 ( .A1(top[1]), .A2(n21), .A3(n68), .A4(n22), .Y(n45) );
  NAND2X0_RVT U41 ( .A1(n42), .A2(n19), .Y(n29) );
  AO22X1_RVT U47 ( .A1(top[2]), .A2(n43), .A3(n69), .A4(n59), .Y(n46) );
  OA222X1_RVT U62 ( .A1(top[3]), .A2(top[2]), .A3(top[3]), .A4(n59), .A5(n67), 
        .A6(n58), .Y(n47) );
  OAI22X1_RVT U5 ( .A1(n8), .A2(n17), .A3(n18), .A4(n65), .Y(n57) );
  AO22X1_RVT U21 ( .A1(count[1]), .A2(n29), .A3(n60), .A4(n20), .Y(n74) );
  AND2X1_RVT U31 ( .A1(n42), .A2(n44), .Y(n75) );
  INVX0_RVT U35 ( .A(push), .Y(n15) );
  AO21X1_HVT U20 ( .A1(count[4]), .A2(n14), .A3(n15), .Y(n8) );
  AO22X1_RVT U53 ( .A1(count[2]), .A2(n29), .A3(n75), .A4(n27), .Y(n53) );
  OA221X1_RVT U43 ( .A1(count[0]), .A2(n24), .A3(n64), .A4(n34), .A5(n75), .Y(
        n20) );
  OAI22X1_RVT U36 ( .A1(n64), .A2(n42), .A3(count[0]), .A4(n41), .Y(n56) );
  NAND2X0_RVT U51 ( .A1(n33), .A2(n24), .Y(n39) );
  OAI22X1_RVT U60 ( .A1(n62), .A2(n42), .A3(n41), .A4(n40), .Y(n54) );
  AO21X1_RVT U61 ( .A1(n44), .A2(n69), .A3(n43), .Y(n58) );
  OAI22X1_RVT U48 ( .A1(n66), .A2(n36), .A3(n41), .A4(n35), .Y(n55) );
  INVX0_LVT U40 ( .A(n11), .Y(n12) );
  AO21X1_HVT U11 ( .A1(pop), .A2(n1), .A3(bottom[0]), .Y(n4) );
  OR2X1_HVT U17 ( .A1(n5), .A2(bottom[1]), .Y(n7) );
  NAND3X0_RVT U8 ( .A1(n66), .A2(n62), .A3(n33), .Y(n16) );
  NAND3X0_RVT U52 ( .A1(n26), .A2(n25), .A3(n39), .Y(n27) );
  AND3X1_HVT U27 ( .A1(count[0]), .A2(count[2]), .A3(count[1]), .Y(n31) );
  INVX0_HVT U30 ( .A(n6), .Y(n5) );
  INVX0_RVT U50 ( .A(n75), .Y(n41) );
  OA22X1_HVT U55 ( .A1(n32), .A2(n33), .A3(n31), .A4(n30), .Y(n37) );
  AO221X1_HVT U58 ( .A1(count[0]), .A2(n32), .A3(n64), .A4(n30), .A5(n41), .Y(
        n19) );
endmodule


module uart_transmitter_clkgate ( clk, wb_rst_i, lcr, tf_push, wb_dat_i, 
        enable, stx_pad_o, tstate, tf_count, tx_reset, lsr_mask );
  input [7:0] lcr;
  input [7:0] wb_dat_i;
  output [2:0] tstate;
  output [4:0] tf_count;
  input clk, wb_rst_i, tf_push, enable, tx_reset, lsr_mask;
  output stx_pad_o;
  wire   tf_pop, parity_xor, bit_out, stx_o_tmp, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n86, n88, n89, n90, n91, n92, n93, n95, n1,
         n2, n3, n4, n5, n6, n8, n9, n12, n13, n14, n15, n16, n17, n18, n24,
         n25, n26, n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n56, n57, n58, n60,
         n61, n62, n63, n64, n66, n67, n69, n70, n71, n72, n73, n96, n97, n98,
         n99, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n116, n119, n120, n121, n122, n123, n124, n126, n127,
         n128, n130, n131, n132, n144, n149, n153, n154, n157, n158, n159,
         n164, n165, n167, n169, n171, n172, n173, n174, n175, n176, n177,
         n178;
  wire   [7:0] tf_data_out;
  wire   [4:0] counter;
  wire   [2:0] bit_counter;
  wire   [6:0] shift_out;

  DFFARX1_HVT counter_reg_0_ ( .D(n75), .CLK(clk), .RSTB(n110), .Q(counter[0])
         );
  DFFARX1_HVT counter_reg_1_ ( .D(n74), .CLK(clk), .RSTB(n110), .Q(counter[1])
         );
  DFFARX1_HVT bit_counter_reg_0_ ( .D(n89), .CLK(clk), .RSTB(n110), .Q(
        bit_counter[0]) );
  DFFARX1_HVT bit_counter_reg_1_ ( .D(n82), .CLK(clk), .RSTB(n110), .Q(
        bit_counter[1]) );
  DFFARX1_HVT bit_counter_reg_2_ ( .D(n120), .CLK(clk), .RSTB(n110), .Q(
        bit_counter[2]) );
  DFFARX1_HVT tstate_reg_2_ ( .D(n80), .CLK(clk), .RSTB(n110), .Q(tstate[2]), 
        .QN(n106) );
  DFFARX1_HVT tf_pop_reg ( .D(n81), .CLK(clk), .RSTB(n110), .Q(tf_pop) );
  DFFARX1_HVT shift_out_reg_6_ ( .D(n76), .CLK(clk), .RSTB(n110), .Q(
        shift_out[6]) );
  DFFARX1_HVT shift_out_reg_5_ ( .D(n88), .CLK(clk), .RSTB(n110), .Q(
        shift_out[5]) );
  DFFARX1_HVT shift_out_reg_4_ ( .D(n154), .CLK(clk), .RSTB(n110), .Q(
        shift_out[4]), .QN(n124) );
  DFFARX1_HVT shift_out_reg_3_ ( .D(n86), .CLK(clk), .RSTB(n110), .Q(
        shift_out[3]) );
  DFFARX1_HVT shift_out_reg_2_ ( .D(n153), .CLK(clk), .RSTB(n110), .Q(
        shift_out[2]) );
  DFFARX1_HVT shift_out_reg_1_ ( .D(n84), .CLK(clk), .RSTB(n110), .Q(
        shift_out[1]) );
  DFFARX1_HVT shift_out_reg_0_ ( .D(n83), .CLK(clk), .RSTB(n110), .Q(
        shift_out[0]) );
  DFFARX1_HVT counter_reg_4_ ( .D(n93), .CLK(clk), .RSTB(n110), .Q(counter[4])
         );
  DFFARX1_HVT counter_reg_3_ ( .D(n92), .CLK(clk), .RSTB(n110), .Q(counter[3]), 
        .QN(n107) );
  DFFARX1_HVT counter_reg_2_ ( .D(n91), .CLK(clk), .RSTB(n110), .Q(counter[2]), 
        .QN(n105) );
  DFFARX1_HVT parity_xor_reg ( .D(n95), .CLK(clk), .RSTB(n110), .Q(parity_xor), 
        .QN(n108) );
  DFFARX1_HVT bit_out_reg ( .D(n90), .CLK(clk), .RSTB(n110), .Q(bit_out) );
  DFFARX1_HVT tstate_reg_1_ ( .D(n78), .CLK(clk), .RSTB(n110), .Q(tstate[1]), 
        .QN(n109) );
  INVX0_HVT U19 ( .A(lcr[5]), .Y(n2) );
  HADDX1_HVT U21 ( .A0(lcr[4]), .B0(n3), .SO(n4) );
  NAND2X0_RVT U45 ( .A1(tstate[2]), .A2(n131), .Y(n13) );
  NAND2X0_HVT U47 ( .A1(tstate[1]), .A2(bit_out), .Y(n15) );
  INVX0_HVT U48 ( .A(n17), .Y(n14) );
  INVX0_HVT U60 ( .A(lcr[0]), .Y(n60) );
  INVX0_HVT U69 ( .A(n42), .Y(n61) );
  NAND2X0_HVT U71 ( .A1(enable), .A2(n39), .Y(n32) );
  INVX0_HVT U84 ( .A(n48), .Y(n50) );
  AND2X1_HVT U99 ( .A1(n73), .A2(n72), .Y(n97) );
  AND2X1_RVT U97 ( .A1(n106), .A2(tstate[1]), .Y(n73) );
  NAND2X0_HVT U91 ( .A1(n61), .A2(n105), .Y(n70) );
  NOR2X0_HVT U57 ( .A1(lcr[1]), .A2(lcr[0]), .Y(n26) );
  NAND2X0_HVT U32 ( .A1(n101), .A2(lcr[3]), .Y(n48) );
  NAND2X0_HVT U20 ( .A1(n2), .A2(parity_xor), .Y(n3) );
  IBUFFX4_HVT U15 ( .A(wb_rst_i), .Y(n110) );
  DFFARX1_HVT tstate_reg_0_ ( .D(n79), .CLK(clk), .RSTB(n110), .Q(tstate[0]), 
        .QN(n111) );
  AO222X1_RVT U103 ( .A1(n104), .A2(shift_out[1]), .A3(n103), .A4(shift_out[2]), .A5(tf_data_out[2]), .A6(n102), .Y(n84) );
  AO222X1_RVT U104 ( .A1(n104), .A2(shift_out[0]), .A3(n103), .A4(shift_out[1]), .A5(tf_data_out[1]), .A6(n102), .Y(n83) );
  AO222X1_RVT U106 ( .A1(n104), .A2(shift_out[5]), .A3(n103), .A4(shift_out[6]), .A5(tf_data_out[6]), .A6(n102), .Y(n88) );
  NAND2X0_RVT U89 ( .A1(n58), .A2(n57), .Y(n89) );
  NAND2X0_RVT U82 ( .A1(counter[1]), .A2(n45), .Y(n46) );
  INVX0_RVT U80 ( .A(n62), .Y(n47) );
  INVX0_LVT U75 ( .A(n99), .Y(n98) );
  DFFASRX1_HVT stx_o_tmp_reg ( .D(n77), .CLK(clk), .RSTB(1'b1), .SETB(n110), 
        .Q(stx_o_tmp) );
  INVX0_HVT U14 ( .A(n40), .Y(n101) );
  INVX0_RVT U67 ( .A(n52), .Y(n36) );
  NAND2X0_RVT U56 ( .A1(n104), .A2(shift_out[3]), .Y(n128) );
  NAND2X0_RVT U12 ( .A1(n67), .A2(n131), .Y(n1) );
  OA21X1_RVT U64 ( .A1(n177), .A2(n171), .A3(n178), .Y(n24) );
  INVX0_HVT U42 ( .A(n45), .Y(n43) );
  NOR2X0_HVT U110 ( .A1(n9), .A2(n130), .Y(n52) );
  NAND2X0_HVT U24 ( .A1(n53), .A2(n6), .Y(n119) );
  AO222X1_RVT U101 ( .A1(n104), .A2(shift_out[4]), .A3(n103), .A4(shift_out[5]), .A5(tf_data_out[5]), .A6(n102), .Y(n154) );
  INVX0_HVT U113 ( .A(n158), .Y(n123) );
  INVX0_HVT U117 ( .A(n102), .Y(n159) );
  AO222X1_RVT U88 ( .A1(n104), .A2(shift_out[2]), .A3(n103), .A4(shift_out[3]), 
        .A5(tf_data_out[3]), .A6(n102), .Y(n153) );
  NOR2X1_LVT U5 ( .A1(n40), .A2(n104), .Y(n103) );
  AND2X1_RVT U86 ( .A1(n53), .A2(n52), .Y(n96) );
  NAND2X0_HVT U40 ( .A1(enable), .A2(n37), .Y(n12) );
  OR3X1_HVT U9 ( .A1(n109), .A2(tstate[0]), .A3(tstate[2]), .Y(n40) );
  OR3X1_HVT U7 ( .A1(bit_counter[2]), .A2(bit_counter[0]), .A3(bit_counter[1]), 
        .Y(n38) );
  AND3X1_HVT U8 ( .A1(tstate[0]), .A2(tstate[2]), .A3(n109), .Y(n49) );
  INVX0_HVT U11 ( .A(enable), .Y(n9) );
  INVX0_HVT U16 ( .A(stx_o_tmp), .Y(n56) );
  OA21X1_RVT U33 ( .A1(n37), .A2(n36), .A3(n123), .Y(n99) );
  AO221X1_RVT U44 ( .A1(n99), .A2(tstate[0]), .A3(n98), .A4(n54), .A5(n96), 
        .Y(n79) );
  AO221X1_RVT U50 ( .A1(n99), .A2(tstate[2]), .A3(n98), .A4(n97), .A5(n96), 
        .Y(n80) );
  INVX0_HVT U121 ( .A(tf_data_out[6]), .Y(n167) );
  uart_tfifo fifo_tx ( .clk(clk), .wb_rst_i(wb_rst_i), .data_in(wb_dat_i), 
        .data_out(tf_data_out), .push(tf_push), .pop(tf_pop), .count(tf_count), 
        .fifo_reset(tx_reset) );
  AND2X1_HVT U115 ( .A1(n52), .A2(n144), .Y(n158) );
  OR2X1_HVT U111 ( .A1(tf_count[1]), .A2(tf_count[3]), .Y(n164) );
  OR3X1_HVT U108 ( .A1(n157), .A2(n164), .A3(n119), .Y(n33) );
  AND2X1_HVT U94 ( .A1(n106), .A2(n113), .Y(n53) );
  OA21X1_RVT U66 ( .A1(n123), .A2(n48), .A3(n104), .Y(n116) );
  AO21X1_RVT U51 ( .A1(n101), .A2(bit_counter[0]), .A3(n104), .Y(n66) );
  AND2X1_HVT U17 ( .A1(n44), .A2(counter[0]), .Y(n144) );
  NOR2X0_HVT U25 ( .A1(lcr[3]), .A2(n38), .Y(n71) );
  OAI22X1_RVT U34 ( .A1(n71), .A2(n40), .A3(n111), .A4(n39), .Y(n41) );
  NAND3X0_RVT U59 ( .A1(n121), .A2(n128), .A3(n126), .Y(n86) );
  OR2X1_HVT U68 ( .A1(counter[1]), .A2(n45), .Y(n42) );
  NOR4X1_HVT U23 ( .A1(counter[4]), .A2(counter[3]), .A3(counter[2]), .A4(
        counter[1]), .Y(n44) );
  AO22X1_HVT U22 ( .A1(n51), .A2(n4), .A3(n38), .A4(shift_out[0]), .Y(n5) );
  NOR2X0_RVT U13 ( .A1(n42), .A2(n44), .Y(n62) );
  NOR2X1_RVT U62 ( .A1(n122), .A2(n116), .Y(n114) );
  NAND3X0_RVT U83 ( .A1(n47), .A2(n1), .A3(n46), .Y(n74) );
  AO22X1_RVT U3 ( .A1(counter[2]), .A2(n42), .A3(n105), .A4(n61), .Y(n91) );
  AO21X1_RVT U43 ( .A1(counter[0]), .A2(n12), .A3(n43), .Y(n75) );
  AO21X1_RVT U49 ( .A1(n131), .A2(n15), .A3(n14), .Y(n16) );
  OAI22X1_RVT U53 ( .A1(n177), .A2(n159), .A3(n57), .A4(bit_counter[1]), .Y(
        n18) );
  AO22X1_RVT U78 ( .A1(n99), .A2(tstate[1]), .A3(n98), .A4(n41), .Y(n78) );
  AND2X1_RVT U81 ( .A1(n44), .A2(n43), .Y(n67) );
  OA222X1_RVT U92 ( .A1(counter[3]), .A2(n62), .A3(counter[3]), .A4(n105), 
        .A5(n107), .A6(n70), .Y(n63) );
  AO221X1_RVT U93 ( .A1(n67), .A2(n131), .A3(n67), .A4(n64), .A5(n63), .Y(n92)
         );
  AO221X1_RVT U96 ( .A1(counter[4]), .A2(counter[3]), .A3(counter[4]), .A4(n70), .A5(n69), .Y(n93) );
  OR2X1_RVT U36 ( .A1(n124), .A2(n127), .Y(n126) );
  AO221X1_RVT U28 ( .A1(bit_counter[2]), .A2(bit_counter[1]), .A3(
        bit_counter[2]), .A4(n66), .A5(n102), .Y(n120) );
  AND3X1_RVT U95 ( .A1(n113), .A2(n67), .A3(lcr[2]), .Y(n69) );
  AO21X1_RVT U85 ( .A1(n51), .A2(n50), .A3(n49), .Y(n54) );
  AO21X1_RVT U73 ( .A1(tf_pop), .A2(n34), .A3(n102), .Y(n81) );
  AO21X1_RVT U54 ( .A1(bit_counter[1]), .A2(n66), .A3(n18), .Y(n82) );
  AO21X1_RVT U38 ( .A1(n116), .A2(bit_out), .A3(n114), .Y(n90) );
  OR2X1_HVT U41 ( .A1(counter[0]), .A2(n12), .Y(n45) );
  INVX0_HVT U27 ( .A(tf_count[4]), .Y(n6) );
  INVX0_HVT U18 ( .A(n38), .Y(n51) );
  AOI22X1_RVT U4 ( .A1(bit_counter[0]), .A2(n104), .A3(n102), .A4(lcr[0]), .Y(
        n58) );
  AND2X1_HVT U112 ( .A1(n111), .A2(n109), .Y(n113) );
  NOR2X0_HVT U74 ( .A1(n9), .A2(n8), .Y(n102) );
  NOR2X1_HVT U65 ( .A1(n51), .A2(n40), .Y(n149) );
  AO22X1_RVT U61 ( .A1(n102), .A2(tf_data_out[7]), .A3(n159), .A4(shift_out[6]), .Y(n76) );
  OAI21X1_RVT U55 ( .A1(n56), .A2(n17), .A3(n16), .Y(n77) );
  AND2X1_RVT U46 ( .A1(n52), .A2(n13), .Y(n17) );
  INVX0_RVT U31 ( .A(n49), .Y(n8) );
  AOI22X1_RVT U30 ( .A1(n49), .A2(tf_data_out[0]), .A3(n101), .A4(n5), .Y(n122) );
  OR2X1_HVT U26 ( .A1(tf_count[0]), .A2(tf_count[2]), .Y(n157) );
  AO22X1_HVT U39 ( .A1(tstate[2]), .A2(n113), .A3(n106), .A4(n131), .Y(n37) );
  NAND2X0_HVT U29 ( .A1(tf_data_out[4]), .A2(n102), .Y(n121) );
  NOR2X0_HVT U10 ( .A1(lcr[6]), .A2(n56), .Y(stx_pad_o) );
  INVX0_HVT U102 ( .A(n33), .Y(n130) );
  AOI21X1_RVT U114 ( .A1(n158), .A2(n149), .A3(n102), .Y(n104) );
  NAND3X0_RVT U90 ( .A1(lcr[2]), .A2(n60), .A3(n177), .Y(n64) );
  OR3X1_HVT U6 ( .A1(n40), .A2(bit_counter[0]), .A3(n104), .Y(n57) );
  OR3X1_RVT U37 ( .A1(n26), .A2(n25), .A3(n24), .Y(n165) );
  XOR3X1_RVT U52 ( .A1(n174), .A2(n173), .A3(n165), .Y(n169) );
  XOR2X1_RVT U58 ( .A1(tf_data_out[1]), .A2(tf_data_out[0]), .Y(n132) );
  NAND2X0_HVT U63 ( .A1(n109), .A2(n106), .Y(n39) );
  INVX0_HVT U70 ( .A(n103), .Y(n127) );
  OR2X1_HVT U72 ( .A1(n71), .A2(tstate[0]), .Y(n72) );
  NAND2X0_HVT U76 ( .A1(n33), .A2(n32), .Y(n34) );
  XNOR2X1_RVT U77 ( .A1(n175), .A2(n167), .Y(n171) );
  NOR2X0_HVT U79 ( .A1(n108), .A2(n102), .Y(n172) );
  INVX0_HVT U87 ( .A(lcr[1]), .Y(n177) );
  XNOR2X1_RVT U98 ( .A1(n132), .A2(tf_data_out[4]), .Y(n173) );
  XOR2X1_RVT U100 ( .A1(tf_data_out[2]), .A2(tf_data_out[3]), .Y(n174) );
  INVX0_HVT U105 ( .A(n113), .Y(n131) );
  INVX0_HVT U107 ( .A(n176), .Y(n175) );
  AND2X1_RVT U109 ( .A1(tf_data_out[7]), .A2(lcr[0]), .Y(n176) );
  AO21X1_LVT U116 ( .A1(n169), .A2(n102), .A3(n172), .Y(n95) );
  INVX0_HVT U118 ( .A(tf_data_out[5]), .Y(n178) );
  NOR3X0_LVT U119 ( .A1(n178), .A2(n177), .A3(n171), .Y(n25) );
endmodule


module uart_sync_flops_1_1 ( rst_i, clk_i, stage1_rst_i, stage1_clk_en_i, 
        async_dat_i, sync_dat_o );
  input [0:0] async_dat_i;
  output [0:0] sync_dat_o;
  input rst_i, clk_i, stage1_rst_i, stage1_clk_en_i;
  wire   flop_0_0_, n1;

  DFFASX1_HVT flop_0_reg_0_ ( .D(async_dat_i[0]), .CLK(clk_i), .SETB(n1), .Q(
        flop_0_0_) );
  INVX0_HVT U3 ( .A(rst_i), .Y(n1) );
  DFFASRX1_HVT sync_dat_o_reg_0_ ( .D(flop_0_0_), .CLK(clk_i), .RSTB(1'b1), 
        .SETB(n1), .Q(sync_dat_o[0]) );
endmodule


module raminfr_addr_width4_data_width8_depth16_0 ( clk, we, a, dpra, di, dpo
 );
  input [3:0] a;
  input [3:0] dpra;
  input [7:0] di;
  output [7:0] dpo;
  input clk, we;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n70, n71, n72, n74, n75, n77, n78, n83, n84, n85, n86,
         n87, n88, n89, n91, n92, n93, n94, n95, n96, n99, n100, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n115, n116,
         n118, n119, n120, n121, n123, n124, n125, n126, n131, n132, n262,
         n263, n264, n265, n266, n267, n270, n271, n272, n275, n276, n278,
         n279, n280, n281, n282, n284, n285, n286, n291, n292, n293, n294,
         n296, n299, n300, n302, n304, n306, n308, n309, n310, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n562, n564, n565, n569, n594, n595, n596,
         n597, n609, n610, n613, n614, n615, n616, n619, n620, n621, n622,
         n633, n642, n644, n650, n651, n654, n655, n659, n669, n670, n673,
         n674, n676, n684, n687, n695, n696, n697, n698, n702, n703, n704,
         n705, n707, n708, n709, n710, n711, n713, n715, n717, n718, n719,
         n720, n725, n729, n732, n733, n734, n736, n737, n739, n740, n741,
         n742, n743, n744, n745, n746, n748, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761;
  wire   [126:0] ram;

  DFFX1_HVT ram_reg_15__0_ ( .D(n434), .CLK(clk), .Q(ram[119]), .QN(n364) );
  DFFX1_HVT ram_reg_14__0_ ( .D(n442), .CLK(clk), .Q(ram[111]), .QN(n370) );
  DFFX1_HVT ram_reg_13__7_ ( .D(n443), .CLK(clk), .Q(ram[110]), .QN(n326) );
  DFFX1_HVT ram_reg_13__6_ ( .D(n444), .CLK(clk), .Q(ram[109]), .QN(n327) );
  DFFX1_HVT ram_reg_13__5_ ( .D(n445), .CLK(clk), .Q(ram[108]), .QN(n330) );
  DFFX1_HVT ram_reg_13__4_ ( .D(n446), .CLK(clk), .Q(ram[107]), .QN(n324) );
  DFFX1_HVT ram_reg_13__3_ ( .D(n447), .CLK(clk), .Q(ram[106]), .QN(n319) );
  DFFX1_HVT ram_reg_13__2_ ( .D(n448), .CLK(clk), .Q(ram[105]), .QN(n318) );
  DFFX1_HVT ram_reg_13__1_ ( .D(n449), .CLK(clk), .Q(ram[104]), .QN(n322) );
  DFFX1_HVT ram_reg_13__0_ ( .D(n450), .CLK(clk), .Q(ram[103]), .QN(n346) );
  DFFX1_HVT ram_reg_12__7_ ( .D(n451), .CLK(clk), .Q(ram[102]), .QN(n328) );
  DFFX1_HVT ram_reg_12__6_ ( .D(n452), .CLK(clk), .Q(ram[101]), .QN(n329) );
  DFFX1_HVT ram_reg_12__5_ ( .D(n453), .CLK(clk), .Q(ram[100]), .QN(n331) );
  DFFX1_HVT ram_reg_12__4_ ( .D(n454), .CLK(clk), .Q(ram[99]), .QN(n325) );
  DFFX1_HVT ram_reg_12__3_ ( .D(n455), .CLK(clk), .Q(ram[98]), .QN(n321) );
  DFFX1_HVT ram_reg_12__2_ ( .D(n456), .CLK(clk), .Q(ram[97]), .QN(n320) );
  DFFX1_HVT ram_reg_12__0_ ( .D(n458), .CLK(clk), .Q(ram[95]), .QN(n317) );
  DFFX1_HVT ram_reg_11__7_ ( .D(n459), .CLK(clk), .Q(ram[94]), .QN(n400) );
  DFFX1_HVT ram_reg_11__6_ ( .D(n460), .CLK(clk), .Q(ram[93]), .QN(n399) );
  DFFX1_HVT ram_reg_11__5_ ( .D(n461), .CLK(clk), .Q(ram[92]), .QN(n402) );
  DFFX1_HVT ram_reg_11__4_ ( .D(n462), .CLK(clk), .Q(ram[91]), .QN(n398) );
  DFFX1_HVT ram_reg_11__3_ ( .D(n463), .CLK(clk), .Q(ram[90]), .QN(n394) );
  DFFX1_HVT ram_reg_11__2_ ( .D(n464), .CLK(clk), .Q(ram[89]), .QN(n393) );
  DFFX1_HVT ram_reg_11__1_ ( .D(n465), .CLK(clk), .Q(ram[88]), .QN(n392) );
  DFFX1_HVT ram_reg_11__0_ ( .D(n466), .CLK(clk), .Q(ram[87]), .QN(n356) );
  DFFX1_HVT ram_reg_10__7_ ( .D(n467), .CLK(clk), .Q(ram[86]), .QN(n397) );
  DFFX1_HVT ram_reg_10__6_ ( .D(n468), .CLK(clk), .Q(ram[85]), .QN(n396) );
  DFFX1_HVT ram_reg_10__5_ ( .D(n469), .CLK(clk), .Q(ram[84]), .QN(n401) );
  DFFX1_HVT ram_reg_10__4_ ( .D(n470), .CLK(clk), .Q(ram[83]), .QN(n395) );
  DFFX1_HVT ram_reg_10__3_ ( .D(n471), .CLK(clk), .Q(ram[82]), .QN(n391) );
  DFFX1_HVT ram_reg_10__2_ ( .D(n472), .CLK(clk), .Q(ram[81]), .QN(n390) );
  DFFX1_HVT ram_reg_10__1_ ( .D(n473), .CLK(clk), .Q(ram[80]), .QN(n389) );
  DFFX1_HVT ram_reg_10__0_ ( .D(n474), .CLK(clk), .Q(ram[79]), .QN(n414) );
  DFFX1_HVT ram_reg_9__7_ ( .D(n475), .CLK(clk), .Q(ram[78]), .QN(n424) );
  DFFX1_HVT ram_reg_9__6_ ( .D(n476), .CLK(clk), .Q(ram[77]), .QN(n423) );
  DFFX1_HVT ram_reg_9__5_ ( .D(n477), .CLK(clk), .Q(ram[76]), .QN(n425) );
  DFFX1_HVT ram_reg_9__4_ ( .D(n478), .CLK(clk), .Q(ram[75]), .QN(n422) );
  DFFX1_HVT ram_reg_9__3_ ( .D(n479), .CLK(clk), .Q(ram[74]), .QN(n421) );
  DFFX1_HVT ram_reg_9__2_ ( .D(n480), .CLK(clk), .Q(ram[73]), .QN(n420) );
  DFFX1_HVT ram_reg_9__1_ ( .D(n481), .CLK(clk), .Q(ram[72]), .QN(n419) );
  DFFX1_HVT ram_reg_9__0_ ( .D(n482), .CLK(clk), .Q(ram[71]), .QN(n342) );
  DFFX1_HVT ram_reg_8__5_ ( .D(n485), .CLK(clk), .Q(ram[68]), .QN(n355) );
  DFFX1_HVT ram_reg_8__4_ ( .D(n486), .CLK(clk), .Q(ram[67]), .QN(n352) );
  DFFX1_HVT ram_reg_8__3_ ( .D(n487), .CLK(clk), .Q(ram[66]), .QN(n350) );
  DFFX1_HVT ram_reg_8__2_ ( .D(n488), .CLK(clk), .Q(ram[65]), .QN(n349) );
  DFFX1_HVT ram_reg_8__1_ ( .D(n489), .CLK(clk), .Q(ram[64]), .QN(n351) );
  DFFX1_HVT ram_reg_7__6_ ( .D(n492), .CLK(clk), .Q(ram[62]), .QN(n366) );
  DFFX1_HVT ram_reg_7__5_ ( .D(n493), .CLK(clk), .Q(ram[61]), .QN(n376) );
  DFFX1_HVT ram_reg_7__4_ ( .D(n494), .CLK(clk), .Q(ram[60]), .QN(n363) );
  DFFX1_HVT ram_reg_7__3_ ( .D(n495), .CLK(clk), .Q(ram[59]), .QN(n359) );
  DFFX1_HVT ram_reg_7__2_ ( .D(n496), .CLK(clk), .Q(ram[58]), .QN(n358) );
  DFFX1_HVT ram_reg_7__1_ ( .D(n497), .CLK(clk), .Q(ram[57]), .QN(n357) );
  DFFX1_HVT ram_reg_7__0_ ( .D(n498), .CLK(clk), .Q(ram[56]), .QN(n365) );
  DFFX1_HVT ram_reg_6__6_ ( .D(n500), .CLK(clk), .Q(ram[54]), .QN(n374) );
  DFFX1_HVT ram_reg_6__5_ ( .D(n501), .CLK(clk), .Q(ram[53]), .QN(n381) );
  DFFX1_HVT ram_reg_6__4_ ( .D(n502), .CLK(clk), .Q(ram[52]), .QN(n369) );
  DFFX1_HVT ram_reg_6__3_ ( .D(n503), .CLK(clk), .Q(ram[51]), .QN(n362) );
  DFFX1_HVT ram_reg_6__2_ ( .D(n504), .CLK(clk), .Q(ram[50]), .QN(n361) );
  DFFX1_HVT ram_reg_6__1_ ( .D(n505), .CLK(clk), .Q(ram[49]), .QN(n360) );
  DFFX1_HVT ram_reg_6__0_ ( .D(n506), .CLK(clk), .Q(ram[48]), .QN(n373) );
  DFFX1_HVT ram_reg_5__7_ ( .D(n507), .CLK(clk), .Q(ram[47]), .QN(n344) );
  DFFX1_HVT ram_reg_5__4_ ( .D(n510), .CLK(clk), .Q(ram[44]), .QN(n339) );
  DFFX1_HVT ram_reg_5__3_ ( .D(n511), .CLK(clk), .Q(ram[43]), .QN(n335) );
  DFFX1_HVT ram_reg_5__2_ ( .D(n512), .CLK(clk), .Q(ram[42]), .QN(n334) );
  DFFX1_HVT ram_reg_5__1_ ( .D(n513), .CLK(clk), .Q(ram[41]), .QN(n337) );
  DFFX1_HVT ram_reg_4__7_ ( .D(n515), .CLK(clk), .Q(ram[39]), .QN(n386) );
  DFFX1_HVT ram_reg_4__6_ ( .D(n516), .CLK(clk), .Q(ram[38]), .QN(n385) );
  DFFX1_HVT ram_reg_4__5_ ( .D(n517), .CLK(clk), .Q(ram[37]), .QN(n388) );
  DFFX1_HVT ram_reg_4__4_ ( .D(n518), .CLK(clk), .Q(ram[36]), .QN(n384) );
  DFFX1_HVT ram_reg_4__3_ ( .D(n519), .CLK(clk), .Q(ram[35]), .QN(n379) );
  DFFX1_HVT ram_reg_4__2_ ( .D(n520), .CLK(clk), .Q(ram[34]), .QN(n378) );
  DFFX1_HVT ram_reg_4__1_ ( .D(n521), .CLK(clk), .Q(ram[33]), .QN(n377) );
  DFFX1_HVT ram_reg_3__7_ ( .D(n523), .CLK(clk), .Q(ram[31]), .QN(n383) );
  DFFX1_HVT ram_reg_3__6_ ( .D(n524), .CLK(clk), .Q(ram[30]), .QN(n382) );
  DFFX1_HVT ram_reg_3__5_ ( .D(n525), .CLK(clk), .Q(ram[29]), .QN(n387) );
  DFFX1_HVT ram_reg_3__4_ ( .D(n526), .CLK(clk), .Q(ram[28]), .QN(n380) );
  DFFX1_HVT ram_reg_3__3_ ( .D(n527), .CLK(clk), .Q(ram[27]), .QN(n372) );
  DFFX1_HVT ram_reg_3__2_ ( .D(n528), .CLK(clk), .Q(ram[26]), .QN(n371) );
  DFFX1_HVT ram_reg_3__1_ ( .D(n529), .CLK(clk), .Q(ram[25]), .QN(n368) );
  DFFX1_HVT ram_reg_2__7_ ( .D(n531), .CLK(clk), .Q(ram[23]), .QN(n416) );
  DFFX1_HVT ram_reg_2__6_ ( .D(n532), .CLK(clk), .Q(ram[22]), .QN(n415) );
  DFFX1_HVT ram_reg_2__5_ ( .D(n533), .CLK(clk), .Q(ram[21]), .QN(n418) );
  DFFX1_HVT ram_reg_2__4_ ( .D(n534), .CLK(clk), .Q(ram[20]), .QN(n413) );
  DFFX1_HVT ram_reg_2__3_ ( .D(n535), .CLK(clk), .Q(ram[19]), .QN(n408) );
  DFFX1_HVT ram_reg_2__2_ ( .D(n536), .CLK(clk), .Q(ram[18]), .QN(n407) );
  DFFX1_HVT ram_reg_2__1_ ( .D(n537), .CLK(clk), .Q(ram[17]), .QN(n406) );
  DFFX1_HVT ram_reg_1__7_ ( .D(n539), .CLK(clk), .Q(ram[15]), .QN(n340) );
  DFFX1_HVT ram_reg_1__6_ ( .D(n540), .CLK(clk), .Q(ram[14]), .QN(n341) );
  DFFX1_HVT ram_reg_1__5_ ( .D(n541), .CLK(clk), .Q(ram[13]), .QN(n347) );
  DFFX1_HVT ram_reg_1__4_ ( .D(n542), .CLK(clk), .Q(ram[12]), .QN(n338) );
  DFFX1_HVT ram_reg_1__3_ ( .D(n543), .CLK(clk), .Q(ram[11]), .QN(n333) );
  DFFX1_HVT ram_reg_1__2_ ( .D(n544), .CLK(clk), .Q(ram[10]), .QN(n332) );
  DFFX1_HVT ram_reg_1__1_ ( .D(n545), .CLK(clk), .Q(ram[9]), .QN(n336) );
  DFFX1_HVT ram_reg_1__0_ ( .D(n546), .CLK(clk), .Q(ram[8]), .QN(n343) );
  DFFX1_HVT ram_reg_0__7_ ( .D(n547), .CLK(clk), .Q(ram[7]), .QN(n412) );
  DFFX1_HVT ram_reg_0__4_ ( .D(n550), .CLK(clk), .Q(ram[4]), .QN(n409) );
  DFFX1_HVT ram_reg_0__3_ ( .D(n551), .CLK(clk), .Q(ram[3]), .QN(n405) );
  DFFX1_HVT ram_reg_0__2_ ( .D(n552), .CLK(clk), .Q(ram[2]), .QN(n404) );
  DFFX1_HVT ram_reg_0__1_ ( .D(n553), .CLK(clk), .Q(ram[1]), .QN(n403) );
  DFFX1_HVT ram_reg_0__0_ ( .D(n554), .CLK(clk), .Q(ram[0]), .QN(n410) );
  MUX21X1_HVT U8 ( .A1(n2), .A2(ram[9]), .S0(n739), .Y(n545) );
  OAI22X1_RVT U18 ( .A1(n329), .A2(n308), .A3(n399), .A4(n734), .Y(n286) );
  INVX0_HVT U24 ( .A(n35), .Y(n1) );
  NBUFFX2_HVT U25 ( .A(di[1]), .Y(n2) );
  NBUFFX2_HVT U26 ( .A(di[2]), .Y(n3) );
  NBUFFX2_HVT U27 ( .A(di[3]), .Y(n4) );
  NBUFFX2_HVT U28 ( .A(di[4]), .Y(n5) );
  NBUFFX2_HVT U29 ( .A(di[5]), .Y(n6) );
  NBUFFX2_HVT U30 ( .A(di[6]), .Y(n7) );
  NBUFFX2_HVT U31 ( .A(di[7]), .Y(n8) );
  INVX0_HVT U37 ( .A(di[0]), .Y(n35) );
  INVX0_RVT U38 ( .A(a[0]), .Y(n51) );
  INVX0_HVT U67 ( .A(n734), .Y(n27) );
  INVX0_HVT U68 ( .A(n308), .Y(n26) );
  INVX0_HVT U204 ( .A(n63), .Y(n65) );
  INVX0_HVT U227 ( .A(n292), .Y(n309) );
  OAI22X1_HVT U320 ( .A1(n324), .A2(n302), .A3(n395), .A4(n569), .Y(n306) );
  NOR2X0_HVT U314 ( .A1(n369), .A2(n292), .Y(n293) );
  OAI22X1_HVT U312 ( .A1(n339), .A2(n302), .A3(n413), .A4(n569), .Y(n299) );
  OAI22X1_HVT U304 ( .A1(n327), .A2(n302), .A3(n396), .A4(n569), .Y(n284) );
  NOR2X0_HVT U298 ( .A1(n374), .A2(n292), .Y(n275) );
  OAI22X1_HVT U296 ( .A1(n345), .A2(n302), .A3(n415), .A4(n569), .Y(n281) );
  OAI22X1_HVT U295 ( .A1(n304), .A2(n411), .A3(n341), .A4(n748), .Y(n282) );
  OAI22X1_RVT U290 ( .A1(n331), .A2(n308), .A3(n402), .A4(n734), .Y(n270) );
  OAI22X1_HVT U288 ( .A1(n304), .A2(n355), .A3(n425), .A4(n659), .Y(n267) );
  NOR2X0_HVT U281 ( .A1(n381), .A2(n292), .Y(n131) );
  OAI22X1_HVT U279 ( .A1(n348), .A2(n302), .A3(n418), .A4(n569), .Y(n265) );
  OAI22X1_HVT U278 ( .A1(n304), .A2(n417), .A3(n347), .A4(n659), .Y(n266) );
  OAI22X1_RVT U274 ( .A1(n320), .A2(n308), .A3(n393), .A4(n734), .Y(n126) );
  OAI22X1_HVT U272 ( .A1(n304), .A2(n349), .A3(n420), .A4(n659), .Y(n123) );
  OR2X1_RVT U271 ( .A1(n118), .A2(n622), .Y(n119) );
  OR2X1_HVT U268 ( .A1(n116), .A2(n115), .Y(n120) );
  NOR2X0_HVT U267 ( .A1(n361), .A2(n292), .Y(n115) );
  OAI22X1_HVT U265 ( .A1(n334), .A2(n302), .A3(n407), .A4(n569), .Y(n121) );
  OR2X1_RVT U261 ( .A1(n110), .A2(n109), .Y(n111) );
  OAI22X1_RVT U259 ( .A1(n321), .A2(n308), .A3(n394), .A4(n734), .Y(n110) );
  OR2X1_RVT U258 ( .A1(n108), .A2(n107), .Y(n112) );
  OAI22X1_HVT U257 ( .A1(n304), .A2(n350), .A3(n421), .A4(n748), .Y(n107) );
  OAI22X1_HVT U256 ( .A1(n319), .A2(n302), .A3(n391), .A4(n569), .Y(n108) );
  OR2X1_RVT U254 ( .A1(n102), .A2(n619), .Y(n103) );
  NOR2X0_HVT U250 ( .A1(n362), .A2(n292), .Y(n99) );
  OAI22X1_HVT U248 ( .A1(n335), .A2(n302), .A3(n408), .A4(n569), .Y(n105) );
  OAI22X1_HVT U244 ( .A1(n323), .A2(n308), .A3(n392), .A4(n734), .Y(n94) );
  OAI22X1_HVT U242 ( .A1(n304), .A2(n351), .A3(n419), .A4(n748), .Y(n91) );
  OAI22X1_HVT U241 ( .A1(n322), .A2(n302), .A3(n389), .A4(n569), .Y(n92) );
  NOR2X1_RVT U238 ( .A1(n377), .A2(n308), .Y(n85) );
  NOR2X0_HVT U235 ( .A1(n360), .A2(n292), .Y(n83) );
  OAI22X1_HVT U233 ( .A1(n337), .A2(n302), .A3(n406), .A4(n569), .Y(n89) );
  OAI22X1_HVT U225 ( .A1(n328), .A2(n308), .A3(n400), .A4(n734), .Y(n78) );
  OAI22X1_HVT U223 ( .A1(n304), .A2(n354), .A3(n424), .A4(n748), .Y(n75) );
  NOR2X0_HVT U216 ( .A1(n375), .A2(n292), .Y(n67) );
  OAI22X1_HVT U213 ( .A1(n304), .A2(n412), .A3(n340), .A4(n748), .Y(n74) );
  MUX21X1_HVT U152 ( .A1(n5), .A2(ram[12]), .S0(n739), .Y(n542) );
  MUX21X1_HVT U151 ( .A1(n8), .A2(ram[15]), .S0(n739), .Y(n539) );
  MUX21X1_HVT U150 ( .A1(n7), .A2(ram[14]), .S0(n739), .Y(n540) );
  MUX21X1_HVT U149 ( .A1(n6), .A2(ram[13]), .S0(n739), .Y(n541) );
  MUX21X1_HVT U148 ( .A1(n4), .A2(ram[11]), .S0(n739), .Y(n543) );
  MUX21X1_HVT U147 ( .A1(n3), .A2(ram[10]), .S0(n739), .Y(n544) );
  MUX21X1_HVT U146 ( .A1(n1), .A2(ram[8]), .S0(n739), .Y(n546) );
  NOR2X1_HVT U77 ( .A1(n35), .A2(n43), .Y(n36) );
  OR2X1_HVT U76 ( .A1(n44), .A2(n64), .Y(n43) );
  OR2X1_HVT U66 ( .A1(n25), .A2(n24), .Y(n29) );
  NOR2X0_HVT U65 ( .A1(n373), .A2(n292), .Y(n24) );
  OAI22X1_HVT U60 ( .A1(n304), .A2(n410), .A3(n343), .A4(n659), .Y(n31) );
  OAI22X1_HVT U58 ( .A1(n317), .A2(n308), .A3(n356), .A4(n734), .Y(n18) );
  NOR2X0_HVT U55 ( .A1(n370), .A2(n292), .Y(n12) );
  OAI22X1_HVT U50 ( .A1(n346), .A2(n302), .A3(n414), .A4(n569), .Y(n20) );
  OR2X1_HVT U36 ( .A1(n45), .A2(n44), .Y(n46) );
  OR2X1_HVT U35 ( .A1(n65), .A2(n64), .Y(n66) );
  DFFASRX1_HVT ram_reg_15__7_ ( .D(n427), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[126]) );
  DFFASRX1_HVT ram_reg_15__6_ ( .D(n428), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[125]) );
  DFFASRX1_HVT ram_reg_15__5_ ( .D(n429), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[124]) );
  DFFASRX1_HVT ram_reg_15__4_ ( .D(n430), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[123]) );
  DFFASRX1_HVT ram_reg_15__3_ ( .D(n431), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[122]) );
  DFFASRX1_HVT ram_reg_15__2_ ( .D(n432), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[121]) );
  DFFASRX1_HVT ram_reg_15__1_ ( .D(n433), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[120]) );
  DFFASRX1_HVT ram_reg_14__5_ ( .D(n437), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[116]) );
  DFFASRX1_HVT ram_reg_14__4_ ( .D(n438), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[115]) );
  DFFASRX1_HVT ram_reg_14__3_ ( .D(n439), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[114]) );
  DFFASRX1_HVT ram_reg_14__2_ ( .D(n440), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[113]) );
  DFFASRX1_HVT ram_reg_14__1_ ( .D(n441), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[112]) );
  DFFASRX1_HVT ram_reg_2__0_ ( .D(n538), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[16]) );
  DFFASRX1_HVT ram_reg_3__0_ ( .D(n530), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[24]) );
  DFFASRX1_HVT ram_reg_4__0_ ( .D(n522), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[32]) );
  DFFASRX1_HVT ram_reg_5__0_ ( .D(n514), .CLK(clk), .RSTB(1'b1), .SETB(1'b1), 
        .Q(ram[40]) );
  DFFASX1_HVT ram_reg_8__7_ ( .D(n483), .CLK(clk), .SETB(1'b1), .Q(ram[70]), 
        .QN(n354) );
  DFFASX1_HVT ram_reg_12__1_ ( .D(n457), .CLK(clk), .SETB(1'b1), .Q(ram[96]), 
        .QN(n323) );
  OR3X1_RVT U7 ( .A1(n74), .A2(n71), .A3(n705), .Y(n610) );
  OR2X1_RVT U14 ( .A1(n702), .A2(n67), .Y(n72) );
  OAI22X1_HVT U19 ( .A1(n291), .A2(n615), .A3(n292), .A4(n614), .Y(n93) );
  NAND2X0_HVT U157 ( .A1(n53), .A2(n63), .Y(n54) );
  OAI22X1_HVT U162 ( .A1(n330), .A2(n302), .A3(n401), .A4(n569), .Y(n562) );
  OAI22X1_HVT U210 ( .A1(n318), .A2(n302), .A3(n390), .A4(n569), .Y(n124) );
  INVX0_HVT U211 ( .A(n55), .Y(n594) );
  INVX0_HVT U212 ( .A(n55), .Y(n596) );
  INVX0_HVT U243 ( .A(n54), .Y(n595) );
  INVX0_HVT U333 ( .A(n54), .Y(n597) );
  INVX0_HVT U363 ( .A(ram[112]), .Y(n614) );
  INVX0_HVT U364 ( .A(ram[120]), .Y(n615) );
  OR2X1_HVT U362 ( .A1(n29), .A2(n31), .Y(n613) );
  OR2X1_HVT U56 ( .A1(n13), .A2(n12), .Y(n19) );
  AO22X1_HVT U69 ( .A1(n27), .A2(ram[24]), .A3(n26), .A4(ram[32]), .Y(n28) );
  NOR2X1_RVT U218 ( .A1(n383), .A2(n734), .Y(n70) );
  OR2X1_HVT U220 ( .A1(n70), .A2(n674), .Y(n71) );
  INVX0_HVT U127 ( .A(n52), .Y(n45) );
  DFFASX1_HVT ram_reg_8__6_ ( .D(n484), .CLK(clk), .SETB(1'b1), .Q(ram[69]), 
        .QN(n353) );
  DFFASX1_HVT ram_reg_0__5_ ( .D(n549), .CLK(clk), .SETB(1'b1), .Q(ram[5]), 
        .QN(n417) );
  NOR2X1_RVT U34 ( .A1(n371), .A2(n734), .Y(n118) );
  OR2X1_HVT U45 ( .A1(n18), .A2(n743), .Y(n642) );
  INVX0_LVT U70 ( .A(a[3]), .Y(n50) );
  NAND2X0_HVT U106 ( .A1(n52), .A2(n63), .Y(n55) );
  NOR2X1_RVT U145 ( .A1(n385), .A2(n308), .Y(n620) );
  OR2X1_RVT U75 ( .A1(a[2]), .A2(n41), .Y(n64) );
  AND2X1_HVT U353 ( .A1(n651), .A2(n713), .Y(n609) );
  NOR2X0_HVT U22 ( .A1(n380), .A2(n734), .Y(n296) );
  OAI22X1_HVT U311 ( .A1(n304), .A2(n409), .A3(n338), .A4(n659), .Y(n300) );
  INVX0_HVT U21 ( .A(n291), .Y(n310) );
  NOR2X0_HVT U32 ( .A1(n365), .A2(n291), .Y(n25) );
  NOR2X1_RVT U42 ( .A1(n372), .A2(n734), .Y(n102) );
  NOR2X1_RVT U48 ( .A1(n387), .A2(n734), .Y(n262) );
  NOR2X1_RVT U49 ( .A1(n368), .A2(n734), .Y(n86) );
  INVX0_RVT U64 ( .A(n48), .Y(n44) );
  NAND2X0_RVT U129 ( .A1(n564), .A2(n565), .Y(n654) );
  OAI22X1_HVT U130 ( .A1(n304), .A2(n353), .A3(n423), .A4(n748), .Y(n655) );
  AO22X1_HVT U63 ( .A1(n23), .A2(ram[16]), .A3(n22), .A4(ram[40]), .Y(n30) );
  NOR2X0_HVT U43 ( .A1(n364), .A2(n291), .Y(n13) );
  OR2X1_RVT U236 ( .A1(n84), .A2(n83), .Y(n88) );
  NOR2X1_RVT U165 ( .A1(n284), .A2(n655), .Y(n565) );
  NOR2X1_RVT U300 ( .A1(n382), .A2(n734), .Y(n278) );
  DFFX1_HVT ram_reg_14__7_ ( .D(n435), .CLK(clk), .Q(ram[118]), .QN(n697) );
  DFFASX1_HVT ram_reg_5__5_ ( .D(n509), .CLK(clk), .SETB(1'b1), .Q(ram[45]), 
        .QN(n348) );
  OAI22X1_HVT U11 ( .A1(n291), .A2(n698), .A3(n292), .A4(n697), .Y(n77) );
  OAI22X1_HVT U13 ( .A1(n291), .A2(n696), .A3(n292), .A4(n695), .Y(n125) );
  NOR2X1_RVT U16 ( .A1(n357), .A2(n291), .Y(n84) );
  INVX0_HVT U44 ( .A(n569), .Y(n23) );
  NOR2X0_HVT U125 ( .A1(n384), .A2(n308), .Y(n673) );
  OAI22X1_HVT U134 ( .A1(n304), .A2(n352), .A3(n422), .A4(n659), .Y(n676) );
  NOR2X0_HVT U163 ( .A1(n715), .A2(n745), .Y(n684) );
  INVX0_RVT U354 ( .A(ram[121]), .Y(n696) );
  INVX0_HVT U355 ( .A(ram[126]), .Y(n698) );
  OR2X1_RVT U346 ( .A1(n709), .A2(n75), .Y(n644) );
  OR4X1_HVT U107 ( .A1(n687), .A2(n121), .A3(n120), .A4(n119), .Y(n670) );
  OR2X1_RVT U33 ( .A1(n92), .A2(n91), .Y(n96) );
  OR2X1_RVT U12 ( .A1(n94), .A2(n93), .Y(n95) );
  OR2X1_HVT U239 ( .A1(n86), .A2(n85), .Y(n87) );
  OA21X1_RVT U366 ( .A1(n95), .A2(n96), .A3(dpra[3]), .Y(n616) );
  OR4X1_RVT U123 ( .A1(n708), .A2(n89), .A3(n88), .A4(n87), .Y(n650) );
  NOR2X1_RVT U164 ( .A1(n286), .A2(n285), .Y(n564) );
  OR2X1_RVT U299 ( .A1(n276), .A2(n275), .Y(n280) );
  OR2X1_RVT U302 ( .A1(n278), .A2(n620), .Y(n279) );
  INVX0_RVT ram_reg_8__0__U4 ( .A(n9), .Y(n725) );
  DFFASX1_HVT ram_reg_14__6_ ( .D(n436), .CLK(clk), .SETB(1'b1), .Q(ram[117]), 
        .QN(n733) );
  DFFASX1_HVT ram_reg_5__6_ ( .D(n508), .CLK(clk), .SETB(1'b1), .Q(ram[46]), 
        .QN(n345) );
  DFFASX1_HVT ram_reg_7__7_ ( .D(n491), .CLK(clk), .SETB(1'b1), .Q(ram[63]), 
        .QN(n367) );
  OR3X1_RVT U3 ( .A1(n103), .A2(n105), .A3(n737), .Y(n736) );
  NOR2X1_RVT U17 ( .A1(n386), .A2(n308), .Y(n674) );
  OR2X1_RVT U46 ( .A1(n104), .A2(n106), .Y(n737) );
  NOR2X0_HVT U47 ( .A1(n759), .A2(n742), .Y(n729) );
  MUX21X1_RVT U100 ( .A1(n2), .A2(ram[120]), .S0(n57), .Y(n433) );
  MUX21X1_RVT U105 ( .A1(ram[2]), .A2(n3), .S0(n595), .Y(n552) );
  MUX21X1_RVT U119 ( .A1(ram[36]), .A2(n5), .S0(n596), .Y(n518) );
  MUX21X1_RVT U120 ( .A1(n7), .A2(ram[54]), .S0(n56), .Y(n500) );
  MUX21X1_RVT U122 ( .A1(n1), .A2(ram[87]), .S0(n59), .Y(n466) );
  MUX21X1_RVT U124 ( .A1(di[0]), .A2(ram[103]), .S0(n38), .Y(n450) );
  NOR2X0_HVT U126 ( .A1(n367), .A2(n291), .Y(n702) );
  NOR2X0_HVT U128 ( .A1(n759), .A2(n609), .Y(n703) );
  NAND2X0_HVT U131 ( .A1(n684), .A2(n718), .Y(n704) );
  OR2X1_RVT U132 ( .A1(n72), .A2(n711), .Y(n705) );
  OR2X1_HVT U142 ( .A1(n294), .A2(n293), .Y(n707) );
  OAI22X1_HVT U155 ( .A1(n304), .A2(n403), .A3(n336), .A4(n748), .Y(n708) );
  AND2X1_RVT U158 ( .A1(dpra[3]), .A2(n644), .Y(n710) );
  OAI22X1_HVT U159 ( .A1(n344), .A2(n302), .A3(n416), .A4(n569), .Y(n711) );
  NOR2X0_HVT U166 ( .A1(n124), .A2(n123), .Y(n713) );
  OAI22X1_RVT U169 ( .A1(n325), .A2(n308), .A3(n398), .A4(n734), .Y(n715) );
  OR2X1_HVT U177 ( .A1(n296), .A2(n673), .Y(n717) );
  NOR2X0_HVT U181 ( .A1(n306), .A2(n676), .Y(n718) );
  OR4X1_HVT U182 ( .A1(n717), .A2(n707), .A3(n299), .A4(n300), .Y(n719) );
  AO22X1_RVT U183 ( .A1(n310), .A2(ram[124]), .A3(n309), .A4(ram[116]), .Y(
        n720) );
  INVX0_HVT U360 ( .A(ram[125]), .Y(n732) );
  OAI22X1_HVT U361 ( .A1(n733), .A2(n292), .A3(n732), .A4(n291), .Y(n285) );
  AO21X1_RVT U356 ( .A1(n650), .A2(n759), .A3(n616), .Y(dpo[1]) );
  AO21X1_RVT U341 ( .A1(n610), .A2(n759), .A3(n710), .Y(dpo[7]) );
  AO21X1_RVT U185 ( .A1(n633), .A2(n759), .A3(n669), .Y(dpo[5]) );
  OR2X1_HVT U137 ( .A1(dpra[2]), .A2(n10), .Y(n659) );
  NOR2X1_RVT U266 ( .A1(n358), .A2(n291), .Y(n116) );
  MUX21X1_RVT U74 ( .A1(n8), .A2(ram[63]), .S0(n47), .Y(n491) );
  MUX21X1_RVT U82 ( .A1(di[5]), .A2(ram[116]), .S0(n40), .Y(n437) );
  MUX21X1_RVT U84 ( .A1(n7), .A2(ram[125]), .S0(n57), .Y(n428) );
  MUX21X1_RVT U87 ( .A1(n1), .A2(ram[48]), .S0(n56), .Y(n506) );
  MUX21X1_RVT U95 ( .A1(n6), .A2(ram[61]), .S0(n47), .Y(n493) );
  MUX21X1_RVT U98 ( .A1(n8), .A2(ram[94]), .S0(n59), .Y(n459) );
  MUX21X1_RVT U99 ( .A1(di[7]), .A2(ram[110]), .S0(n38), .Y(n443) );
  OA21X1_RVT U369 ( .A1(n271), .A2(n272), .A3(dpra[3]), .Y(n669) );
  MUX21X1_RVT U54 ( .A1(di[1]), .A2(ram[96]), .S0(n42), .Y(n457) );
  MUX21X1_RVT U62 ( .A1(di[4]), .A2(ram[115]), .S0(n40), .Y(n438) );
  MUX21X1_RVT U71 ( .A1(ram[7]), .A2(n8), .S0(n595), .Y(n547) );
  MUX21X1_RVT U108 ( .A1(di[0]), .A2(ram[56]), .S0(n47), .Y(n498) );
  MUX21X1_RVT U338 ( .A1(ram[39]), .A2(n8), .S0(n596), .Y(n515) );
  MUX21X1_RVT U337 ( .A1(ram[35]), .A2(n4), .S0(n594), .Y(n519) );
  MUX21X1_RVT U335 ( .A1(ram[37]), .A2(n6), .S0(n594), .Y(n517) );
  MUX21X1_RVT U331 ( .A1(ram[34]), .A2(n3), .S0(n596), .Y(n520) );
  MUX21X1_RVT U328 ( .A1(ram[1]), .A2(n2), .S0(n597), .Y(n553) );
  MUX21X1_RVT U326 ( .A1(ram[4]), .A2(n5), .S0(n597), .Y(n550) );
  MUX21X1_RVT U325 ( .A1(ram[0]), .A2(n1), .S0(n595), .Y(n554) );
  AND3X1_RVT U39 ( .A1(we), .A2(a[3]), .A3(n51), .Y(n61) );
  AND3X1_RVT U78 ( .A1(a[0]), .A2(we), .A3(a[3]), .Y(n58) );
  NAND3X0_RVT U88 ( .A1(a[2]), .A2(n58), .A3(n41), .Y(n38) );
  MUX21X1_RVT U91 ( .A1(di[2]), .A2(ram[105]), .S0(n38), .Y(n448) );
  MUX21X1_RVT U92 ( .A1(di[6]), .A2(ram[109]), .S0(n38), .Y(n444) );
  MUX21X1_RVT U93 ( .A1(di[4]), .A2(ram[107]), .S0(n38), .Y(n446) );
  MUX21X1_RVT U96 ( .A1(di[1]), .A2(ram[104]), .S0(n38), .Y(n449) );
  NAND3X0_RVT U103 ( .A1(a[2]), .A2(a[1]), .A3(n61), .Y(n40) );
  MUX21X1_RVT U104 ( .A1(di[0]), .A2(ram[111]), .S0(n40), .Y(n442) );
  MUX21X1_RVT U110 ( .A1(di[2]), .A2(ram[113]), .S0(n40), .Y(n440) );
  NAND3X0_RVT U111 ( .A1(a[2]), .A2(n61), .A3(n41), .Y(n42) );
  MUX21X1_RVT U112 ( .A1(di[0]), .A2(ram[95]), .S0(n42), .Y(n458) );
  MUX21X1_RVT U113 ( .A1(di[5]), .A2(ram[100]), .S0(n42), .Y(n453) );
  MUX21X1_RVT U114 ( .A1(di[2]), .A2(ram[97]), .S0(n42), .Y(n456) );
  MUX21X1_RVT U116 ( .A1(di[3]), .A2(ram[98]), .S0(n42), .Y(n455) );
  MUX21X1_RVT U117 ( .A1(di[6]), .A2(ram[101]), .S0(n42), .Y(n452) );
  MUX21X1_RVT U118 ( .A1(di[7]), .A2(ram[102]), .S0(n42), .Y(n451) );
  NAND3X0_RVT U136 ( .A1(n48), .A2(a[1]), .A3(a[2]), .Y(n47) );
  MUX21X1_RVT U138 ( .A1(n4), .A2(ram[59]), .S0(n47), .Y(n495) );
  MUX21X1_RVT U143 ( .A1(n7), .A2(ram[62]), .S0(n47), .Y(n492) );
  MUX21X1_RVT U144 ( .A1(n3), .A2(ram[58]), .S0(n47), .Y(n496) );
  NAND3X0_RVT U170 ( .A1(a[2]), .A2(a[1]), .A3(n63), .Y(n56) );
  MUX21X1_RVT U172 ( .A1(n8), .A2(ram[55]), .S0(n56), .Y(n499) );
  MUX21X1_RVT U173 ( .A1(n6), .A2(ram[53]), .S0(n56), .Y(n501) );
  MUX21X1_RVT U174 ( .A1(n2), .A2(ram[49]), .S0(n56), .Y(n505) );
  MUX21X1_RVT U175 ( .A1(n4), .A2(ram[51]), .S0(n56), .Y(n503) );
  MUX21X1_RVT U176 ( .A1(n5), .A2(ram[52]), .S0(n56), .Y(n502) );
  NAND3X0_RVT U178 ( .A1(a[2]), .A2(a[1]), .A3(n58), .Y(n57) );
  MUX21X1_RVT U179 ( .A1(n1), .A2(ram[119]), .S0(n57), .Y(n434) );
  MUX21X1_RVT U180 ( .A1(n5), .A2(ram[123]), .S0(n57), .Y(n430) );
  MUX21X1_RVT U184 ( .A1(n4), .A2(ram[122]), .S0(n57), .Y(n431) );
  NAND3X0_RVT U187 ( .A1(a[1]), .A2(n58), .A3(n60), .Y(n59) );
  MUX21X1_RVT U190 ( .A1(n2), .A2(ram[88]), .S0(n59), .Y(n465) );
  MUX21X1_RVT U192 ( .A1(n3), .A2(ram[89]), .S0(n59), .Y(n464) );
  MUX21X1_RVT U194 ( .A1(n7), .A2(ram[93]), .S0(n59), .Y(n460) );
  MUX21X1_RVT U195 ( .A1(n5), .A2(ram[91]), .S0(n59), .Y(n462) );
  NAND3X0_RVT U196 ( .A1(a[1]), .A2(n61), .A3(n60), .Y(n62) );
  MUX21X1_RVT U198 ( .A1(n8), .A2(ram[86]), .S0(n62), .Y(n467) );
  MUX21X1_RVT U199 ( .A1(n7), .A2(ram[85]), .S0(n62), .Y(n468) );
  MUX21X1_RVT U200 ( .A1(n4), .A2(ram[82]), .S0(n62), .Y(n471) );
  MUX21X1_RVT U201 ( .A1(n2), .A2(ram[80]), .S0(n62), .Y(n473) );
  MUX21X1_RVT U203 ( .A1(n3), .A2(ram[81]), .S0(n62), .Y(n472) );
  MUX21X1_RVT U6 ( .A1(di[3]), .A2(ram[114]), .S0(n40), .Y(n439) );
  MUX21X1_RVT U2 ( .A1(n6), .A2(ram[84]), .S0(n62), .Y(n469) );
  OR4X1_RVT U342 ( .A1(n263), .A2(n264), .A3(n266), .A4(n265), .Y(n633) );
  MUX21X1_RVT U94 ( .A1(di[5]), .A2(ram[108]), .S0(n38), .Y(n445) );
  MUX21X1_RVT U89 ( .A1(n6), .A2(ram[92]), .S0(n59), .Y(n461) );
  MUX21X1_RVT U86 ( .A1(n5), .A2(ram[60]), .S0(n47), .Y(n494) );
  MUX21X1_RVT U83 ( .A1(n6), .A2(ram[124]), .S0(n57), .Y(n429) );
  MUX21X1_RVT U80 ( .A1(ram[5]), .A2(n6), .S0(n597), .Y(n549) );
  AND3X1_HVT U73 ( .A1(we), .A2(a[0]), .A3(n50), .Y(n48) );
  NOR2X1_RVT U297 ( .A1(n366), .A2(n291), .Y(n276) );
  MUX21X1_RVT U102 ( .A1(di[4]), .A2(ram[99]), .S0(n42), .Y(n454) );
  MUX21X1_RVT U101 ( .A1(n5), .A2(ram[83]), .S0(n62), .Y(n470) );
  MUX21X1_RVT U85 ( .A1(n3), .A2(ram[50]), .S0(n56), .Y(n504) );
  MUX21X1_RVT U59 ( .A1(n8), .A2(ram[126]), .S0(n57), .Y(n427) );
  MUX21X1_RVT U57 ( .A1(di[6]), .A2(ram[117]), .S0(n40), .Y(n436) );
  MUX21X1_RVT U53 ( .A1(ram[32]), .A2(n1), .S0(n594), .Y(n522) );
  OR2X1_RVT U61 ( .A1(n270), .A2(n720), .Y(n271) );
  NOR2X1_RVT U154 ( .A1(n378), .A2(n308), .Y(n622) );
  NOR2X1_RVT U153 ( .A1(n388), .A2(n308), .Y(n621) );
  NOR2X1_RVT U141 ( .A1(n379), .A2(n308), .Y(n619) );
  OR2X1_RVT U282 ( .A1(n132), .A2(n131), .Y(n264) );
  OR2X1_HVT U285 ( .A1(n262), .A2(n621), .Y(n263) );
  DFFASX1_HVT ram_reg_6__7_ ( .D(n499), .CLK(clk), .SETB(1'b1), .Q(ram[55]), 
        .QN(n375) );
  DFFASX1_HVT ram_reg_0__6_ ( .D(n548), .CLK(clk), .SETB(1'b1), .Q(ram[6]), 
        .QN(n411) );
  INVX0_RVT U340 ( .A(dpra[0]), .Y(n17) );
  INVX0_RVT U348 ( .A(dpra[2]), .Y(n15) );
  DFFASX1_RVT ram_reg_8__0_ ( .D(n725), .CLK(clk), .SETB(1'b1), .QN(n426) );
  INVX0_RVT U23 ( .A(a[2]), .Y(n60) );
  INVX0_RVT U52 ( .A(a[1]), .Y(n41) );
  NAND3X0_RVT U40 ( .A1(n61), .A2(n60), .A3(n41), .Y(n39) );
  NAND3X0_RVT U79 ( .A1(n58), .A2(n60), .A3(n41), .Y(n37) );
  OR3X1_HVT U4 ( .A1(n281), .A2(n279), .A3(n761), .Y(n760) );
  OR2X1_RVT U5 ( .A1(dpra[2]), .A2(n14), .Y(n304) );
  OR2X1_RVT U9 ( .A1(n10), .A2(n15), .Y(n302) );
  NOR2X0_HVT U10 ( .A1(n359), .A2(n291), .Y(n100) );
  INVX0_HVT U15 ( .A(ram[113]), .Y(n695) );
  OAI22X1_HVT U20 ( .A1(n291), .A2(n756), .A3(n292), .A4(n755), .Y(n109) );
  OR2X1_HVT U41 ( .A1(n100), .A2(n99), .Y(n104) );
  OR2X1_HVT U51 ( .A1(dpra[1]), .A2(dpra[0]), .Y(n14) );
  NOR2X0_HVT U72 ( .A1(n363), .A2(n291), .Y(n294) );
  NOR2X0_HVT U81 ( .A1(n376), .A2(n291), .Y(n132) );
  OR2X1_HVT U90 ( .A1(n741), .A2(n758), .Y(n709) );
  NOR2X0_HVT U97 ( .A1(n126), .A2(n125), .Y(n651) );
  OR2X1_HVT U109 ( .A1(n562), .A2(n267), .Y(n272) );
  INVX0_HVT U115 ( .A(n753), .Y(n687) );
  NOR2X0_HVT U121 ( .A1(a[1]), .A2(n60), .Y(n52) );
  NOR2X0_HVT U133 ( .A1(a[1]), .A2(a[2]), .Y(n53) );
  AND3X1_HVT U135 ( .A1(we), .A2(n50), .A3(n51), .Y(n63) );
  MUX21X1_HVT U139 ( .A1(ram[6]), .A2(n7), .S0(n597), .Y(n548) );
  MUX21X1_HVT U140 ( .A1(di[7]), .A2(ram[118]), .S0(n40), .Y(n435) );
  MUX21X1_HVT U156 ( .A1(di[1]), .A2(ram[112]), .S0(n40), .Y(n441) );
  MUX21X1_HVT U160 ( .A1(n3), .A2(ram[121]), .S0(n57), .Y(n432) );
  MUX21X1_HVT U161 ( .A1(ram[3]), .A2(n4), .S0(n595), .Y(n551) );
  MUX21X1_HVT U167 ( .A1(ram[33]), .A2(n2), .S0(n594), .Y(n521) );
  MUX21X1_HVT U168 ( .A1(ram[38]), .A2(n7), .S0(n596), .Y(n516) );
  MUX21X1_HVT U171 ( .A1(n2), .A2(ram[57]), .S0(n47), .Y(n497) );
  MUX21X1_HVT U186 ( .A1(n1), .A2(ram[79]), .S0(n62), .Y(n474) );
  MUX21X1_HVT U188 ( .A1(n4), .A2(ram[90]), .S0(n59), .Y(n463) );
  MUX21X1_HVT U189 ( .A1(di[3]), .A2(ram[106]), .S0(n38), .Y(n447) );
  AO21X1_RVT U191 ( .A1(n744), .A2(n759), .A3(n729), .Y(dpo[0]) );
  NAND2X0_RVT U193 ( .A1(n53), .A2(n48), .Y(n739) );
  NAND2X0_RVT U197 ( .A1(dpra[2]), .A2(dpra[1]), .Y(n740) );
  OAI22X1_HVT U202 ( .A1(n326), .A2(n302), .A3(n397), .A4(n569), .Y(n741) );
  NOR3X0_RVT U205 ( .A1(n19), .A2(n20), .A3(n642), .Y(n742) );
  OAI22X1_HVT U206 ( .A1(n304), .A2(n426), .A3(n342), .A4(n659), .Y(n743) );
  OR3X1_HVT U207 ( .A1(n30), .A2(n28), .A3(n613), .Y(n744) );
  AO22X1_HVT U208 ( .A1(n310), .A2(ram[123]), .A3(n309), .A4(ram[115]), .Y(
        n745) );
  AND2X1_HVT U209 ( .A1(n704), .A2(dpra[3]), .Y(n746) );
  AO21X1_RVT U214 ( .A1(n719), .A2(n759), .A3(n746), .Y(dpo[4]) );
  NBUFFX2_HVT U215 ( .A(n659), .Y(n748) );
  OA22X1_HVT U217 ( .A1(n304), .A2(n405), .A3(n333), .A4(n748), .Y(n752) );
  OA22X1_HVT U219 ( .A1(n304), .A2(n404), .A3(n332), .A4(n659), .Y(n753) );
  MUX21X1_HVT U221 ( .A1(n4), .A2(ram[19]), .S0(n66), .Y(n535) );
  MUX21X1_HVT U222 ( .A1(n7), .A2(ram[22]), .S0(n66), .Y(n532) );
  MUX21X1_HVT U224 ( .A1(n8), .A2(ram[23]), .S0(n66), .Y(n531) );
  MUX21X1_HVT U226 ( .A1(n6), .A2(ram[21]), .S0(n66), .Y(n533) );
  MUX21X1_HVT U228 ( .A1(n3), .A2(ram[18]), .S0(n66), .Y(n536) );
  MUX21X1_HVT U229 ( .A1(n5), .A2(ram[20]), .S0(n66), .Y(n534) );
  MUX21X1_HVT U230 ( .A1(n2), .A2(ram[17]), .S0(n66), .Y(n537) );
  MUX21X1_HVT U231 ( .A1(n1), .A2(ram[16]), .S0(n66), .Y(n538) );
  MUX21X1_HVT U232 ( .A1(di[5]), .A2(ram[45]), .S0(n46), .Y(n509) );
  MUX21X1_HVT U234 ( .A1(di[6]), .A2(ram[46]), .S0(n46), .Y(n508) );
  MUX21X1_HVT U237 ( .A1(di[2]), .A2(ram[42]), .S0(n46), .Y(n512) );
  MUX21X1_HVT U240 ( .A1(di[3]), .A2(ram[43]), .S0(n46), .Y(n511) );
  MUX21X1_HVT U247 ( .A1(di[7]), .A2(ram[47]), .S0(n46), .Y(n507) );
  MUX21X1_HVT U249 ( .A1(di[4]), .A2(ram[44]), .S0(n46), .Y(n510) );
  MUX21X1_HVT U251 ( .A1(di[1]), .A2(ram[41]), .S0(n46), .Y(n513) );
  MUX21X1_HVT U252 ( .A1(di[0]), .A2(ram[40]), .S0(n46), .Y(n514) );
  MUX21X1_HVT U260 ( .A1(di[6]), .A2(ram[69]), .S0(n39), .Y(n484) );
  MUX21X1_HVT U264 ( .A1(di[7]), .A2(ram[70]), .S0(n39), .Y(n483) );
  MUX21X1_HVT U269 ( .A1(di[1]), .A2(ram[64]), .S0(n39), .Y(n489) );
  MUX21X1_HVT U280 ( .A1(di[4]), .A2(ram[67]), .S0(n39), .Y(n486) );
  MUX21X1_HVT U283 ( .A1(di[2]), .A2(ram[65]), .S0(n39), .Y(n488) );
  MUX21X1_HVT U284 ( .A1(di[5]), .A2(ram[68]), .S0(n39), .Y(n485) );
  MUX21X1_HVT U289 ( .A1(di[3]), .A2(ram[66]), .S0(n39), .Y(n487) );
  MUX21X1_HVT U291 ( .A1(n35), .A2(n426), .S0(n39), .Y(n9) );
  MUX21X1_HVT U292 ( .A1(di[1]), .A2(ram[72]), .S0(n37), .Y(n481) );
  MUX21X1_HVT U308 ( .A1(di[0]), .A2(ram[71]), .S0(n37), .Y(n482) );
  MUX21X1_HVT U309 ( .A1(di[5]), .A2(ram[76]), .S0(n37), .Y(n477) );
  MUX21X1_HVT U310 ( .A1(di[4]), .A2(ram[75]), .S0(n37), .Y(n478) );
  MUX21X1_HVT U313 ( .A1(di[3]), .A2(ram[74]), .S0(n37), .Y(n479) );
  MUX21X1_HVT U315 ( .A1(di[7]), .A2(ram[78]), .S0(n37), .Y(n475) );
  MUX21X1_HVT U318 ( .A1(di[6]), .A2(ram[77]), .S0(n37), .Y(n476) );
  MUX21X1_HVT U319 ( .A1(di[2]), .A2(ram[73]), .S0(n37), .Y(n480) );
  MUX21X1_HVT U323 ( .A1(di[7]), .A2(ram[31]), .S0(n43), .Y(n523) );
  MUX21X1_HVT U324 ( .A1(di[6]), .A2(ram[30]), .S0(n43), .Y(n524) );
  MUX21X1_HVT U327 ( .A1(di[5]), .A2(ram[29]), .S0(n43), .Y(n525) );
  MUX21X1_HVT U329 ( .A1(di[3]), .A2(ram[27]), .S0(n43), .Y(n527) );
  MUX21X1_HVT U330 ( .A1(di[2]), .A2(ram[26]), .S0(n43), .Y(n528) );
  MUX21X1_HVT U332 ( .A1(di[4]), .A2(ram[28]), .S0(n43), .Y(n526) );
  MUX21X1_HVT U334 ( .A1(di[1]), .A2(ram[25]), .S0(n43), .Y(n529) );
  AO21X1_HVT U336 ( .A1(n43), .A2(ram[24]), .A3(n36), .Y(n530) );
  INVX0_HVT U345 ( .A(n752), .Y(n106) );
  INVX0_HVT U347 ( .A(n302), .Y(n22) );
  AO21X1_LVT U349 ( .A1(n670), .A2(n759), .A3(n703), .Y(dpo[2]) );
  OR2X1_LVT U350 ( .A1(n754), .A2(dpra[1]), .Y(n10) );
  INVX0_LVT U351 ( .A(dpra[0]), .Y(n754) );
  OR2X2_RVT U352 ( .A1(dpra[0]), .A2(n740), .Y(n292) );
  OR3X2_RVT U357 ( .A1(dpra[2]), .A2(n16), .A3(dpra[0]), .Y(n569) );
  INVX0_LVT U358 ( .A(dpra[1]), .Y(n16) );
  INVX0_HVT U359 ( .A(ram[114]), .Y(n755) );
  INVX0_HVT U365 ( .A(ram[122]), .Y(n756) );
  MUX21X1_RVT U367 ( .A1(n736), .A2(n757), .S0(dpra[3]), .Y(dpo[3]) );
  OR2X1_RVT U368 ( .A1(n111), .A2(n112), .Y(n757) );
  OR2X1_RVT U370 ( .A1(n15), .A2(n14), .Y(n308) );
  OR2X1_RVT U371 ( .A1(n77), .A2(n78), .Y(n758) );
  OR3X1_RVT U372 ( .A1(dpra[2]), .A2(n16), .A3(n17), .Y(n734) );
  MUX21X1_RVT U373 ( .A1(n654), .A2(n760), .S0(n759), .Y(dpo[6]) );
  INVX0_HVT U374 ( .A(dpra[3]), .Y(n759) );
  OR2X1_RVT U375 ( .A1(n280), .A2(n282), .Y(n761) );
  OR2X1_RVT U376 ( .A1(n17), .A2(n740), .Y(n291) );
endmodule


module uart_rfifo_fifo_width11 ( clk, wb_rst_i, data_in, data_out, push, 
        overrun, count, error_bit, fifo_reset, reset_status, pop_BAR );
  input [10:0] data_in;
  output [10:0] data_out;
  output [4:0] count;
  input clk, wb_rst_i, push, fifo_reset, reset_status, pop_BAR;
  output overrun, error_bit;
  wire   n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n293;
  wire   [3:0] top;
  wire   [3:0] bottom;
  wire   [47:0] fifo;

  DFFARX1_HVT bottom_reg_0_ ( .D(n228), .CLK(clk), .RSTB(n290), .Q(bottom[0]), 
        .QN(n273) );
  DFFARX1_HVT bottom_reg_1_ ( .D(n225), .CLK(clk), .RSTB(n290), .Q(bottom[1]), 
        .QN(n274) );
  DFFARX1_HVT bottom_reg_2_ ( .D(n226), .CLK(clk), .RSTB(n290), .Q(bottom[2]), 
        .QN(n257) );
  DFFARX1_HVT count_reg_4_ ( .D(n232), .CLK(clk), .RSTB(n290), .Q(count[4]) );
  DFFARX1_HVT top_reg_0_ ( .D(n224), .CLK(clk), .RSTB(n290), .Q(top[0]), .QN(
        n270) );
  DFFARX1_HVT top_reg_1_ ( .D(n223), .CLK(clk), .RSTB(n1), .Q(top[1]), .QN(n2)
         );
  DFFARX1_HVT top_reg_2_ ( .D(n222), .CLK(clk), .RSTB(n1), .Q(top[2]), .QN(n3)
         );
  DFFARX1_HVT top_reg_3_ ( .D(n221), .CLK(clk), .RSTB(n1), .Q(top[3]), .QN(
        n271) );
  DFFARX1_HVT count_reg_3_ ( .D(n231), .CLK(clk), .RSTB(n290), .Q(count[3]), 
        .QN(n287) );
  DFFARX1_HVT count_reg_1_ ( .D(n229), .CLK(clk), .RSTB(n291), .Q(count[1]), 
        .QN(n255) );
  DFFARX1_HVT count_reg_0_ ( .D(n256), .CLK(clk), .RSTB(n290), .Q(count[0]), 
        .QN(n272) );
  DFFARX1_HVT fifo_reg_15__2_ ( .D(n220), .CLK(clk), .RSTB(n1), .Q(fifo[47])
         );
  DFFARX1_HVT fifo_reg_15__1_ ( .D(n219), .CLK(clk), .RSTB(n1), .Q(fifo[46])
         );
  DFFARX1_HVT fifo_reg_15__0_ ( .D(n218), .CLK(clk), .RSTB(n1), .Q(fifo[45])
         );
  DFFARX1_HVT fifo_reg_14__2_ ( .D(n217), .CLK(clk), .RSTB(n1), .Q(fifo[44])
         );
  DFFARX1_HVT fifo_reg_14__1_ ( .D(n216), .CLK(clk), .RSTB(n1), .Q(fifo[43])
         );
  DFFARX1_HVT fifo_reg_13__2_ ( .D(n214), .CLK(clk), .RSTB(n1), .Q(fifo[41])
         );
  DFFARX1_HVT fifo_reg_13__1_ ( .D(n213), .CLK(clk), .RSTB(n1), .Q(fifo[40])
         );
  DFFARX1_HVT fifo_reg_13__0_ ( .D(n212), .CLK(clk), .RSTB(n1), .Q(fifo[39])
         );
  DFFARX1_HVT fifo_reg_12__2_ ( .D(n211), .CLK(clk), .RSTB(n289), .Q(fifo[38])
         );
  DFFARX1_HVT fifo_reg_12__0_ ( .D(n209), .CLK(clk), .RSTB(n289), .Q(fifo[36])
         );
  DFFARX1_HVT fifo_reg_11__1_ ( .D(n207), .CLK(clk), .RSTB(n289), .Q(fifo[34])
         );
  DFFARX1_HVT fifo_reg_11__0_ ( .D(n206), .CLK(clk), .RSTB(n289), .Q(fifo[33])
         );
  DFFARX1_HVT fifo_reg_10__2_ ( .D(n205), .CLK(clk), .RSTB(n289), .Q(fifo[32])
         );
  DFFARX1_HVT fifo_reg_10__1_ ( .D(n204), .CLK(clk), .RSTB(n289), .Q(fifo[31])
         );
  DFFARX1_HVT fifo_reg_10__0_ ( .D(n203), .CLK(clk), .RSTB(n289), .Q(fifo[30])
         );
  DFFARX1_HVT fifo_reg_9__2_ ( .D(n202), .CLK(clk), .RSTB(n289), .Q(fifo[29])
         );
  DFFARX1_HVT fifo_reg_9__1_ ( .D(n201), .CLK(clk), .RSTB(n289), .Q(fifo[28])
         );
  DFFARX1_HVT fifo_reg_9__0_ ( .D(n200), .CLK(clk), .RSTB(n289), .Q(fifo[27])
         );
  DFFARX1_HVT fifo_reg_8__2_ ( .D(n199), .CLK(clk), .RSTB(n289), .Q(fifo[26])
         );
  DFFARX1_HVT fifo_reg_8__1_ ( .D(n198), .CLK(clk), .RSTB(n1), .Q(fifo[25]) );
  DFFARX1_HVT fifo_reg_8__0_ ( .D(n197), .CLK(clk), .RSTB(n1), .Q(fifo[24]) );
  DFFARX1_HVT fifo_reg_7__2_ ( .D(n196), .CLK(clk), .RSTB(n290), .Q(fifo[23]), 
        .QN(n280) );
  DFFARX1_HVT fifo_reg_7__1_ ( .D(n195), .CLK(clk), .RSTB(n289), .Q(fifo[22]), 
        .QN(n279) );
  DFFARX1_HVT fifo_reg_7__0_ ( .D(n194), .CLK(clk), .RSTB(n1), .Q(fifo[21]), 
        .QN(n263) );
  DFFARX1_HVT fifo_reg_6__2_ ( .D(n193), .CLK(clk), .RSTB(n1), .Q(fifo[20]), 
        .QN(n277) );
  DFFARX1_HVT fifo_reg_6__1_ ( .D(n192), .CLK(clk), .RSTB(n290), .Q(fifo[19]), 
        .QN(n276) );
  DFFARX1_HVT fifo_reg_6__0_ ( .D(n191), .CLK(clk), .RSTB(n289), .Q(fifo[18]), 
        .QN(n275) );
  DFFARX1_HVT fifo_reg_5__2_ ( .D(n190), .CLK(clk), .RSTB(n1), .Q(fifo[17]), 
        .QN(n285) );
  DFFARX1_HVT fifo_reg_5__1_ ( .D(n189), .CLK(clk), .RSTB(n1), .Q(fifo[16]), 
        .QN(n284) );
  DFFARX1_HVT fifo_reg_5__0_ ( .D(n188), .CLK(clk), .RSTB(n290), .Q(fifo[15]), 
        .QN(n286) );
  DFFARX1_HVT fifo_reg_4__2_ ( .D(n187), .CLK(clk), .RSTB(n1), .Q(fifo[14]), 
        .QN(n283) );
  DFFARX1_HVT fifo_reg_4__1_ ( .D(n186), .CLK(clk), .RSTB(n1), .Q(fifo[13]), 
        .QN(n281) );
  DFFARX1_HVT fifo_reg_4__0_ ( .D(n185), .CLK(clk), .RSTB(n1), .Q(fifo[12]), 
        .QN(n282) );
  DFFARX1_HVT fifo_reg_3__2_ ( .D(n184), .CLK(clk), .RSTB(n1), .Q(fifo[11]), 
        .QN(n260) );
  DFFARX1_HVT fifo_reg_3__1_ ( .D(n183), .CLK(clk), .RSTB(n1), .Q(fifo[10]), 
        .QN(n258) );
  DFFARX1_HVT fifo_reg_3__0_ ( .D(n182), .CLK(clk), .RSTB(n1), .Q(fifo[9]), 
        .QN(n278) );
  DFFARX1_HVT fifo_reg_2__2_ ( .D(n181), .CLK(clk), .RSTB(n1), .Q(fifo[8]), 
        .QN(n262) );
  DFFARX1_HVT fifo_reg_2__1_ ( .D(n180), .CLK(clk), .RSTB(n1), .Q(fifo[7]), 
        .QN(n261) );
  DFFARX1_HVT fifo_reg_2__0_ ( .D(n179), .CLK(clk), .RSTB(n1), .Q(fifo[6]), 
        .QN(n259) );
  DFFARX1_HVT fifo_reg_1__2_ ( .D(n178), .CLK(clk), .RSTB(n1), .Q(fifo[5]), 
        .QN(n268) );
  DFFARX1_HVT fifo_reg_1__1_ ( .D(n177), .CLK(clk), .RSTB(n1), .Q(fifo[4]), 
        .QN(n267) );
  DFFARX1_HVT fifo_reg_1__0_ ( .D(n176), .CLK(clk), .RSTB(n1), .Q(fifo[3]), 
        .QN(n269) );
  DFFARX1_HVT fifo_reg_0__2_ ( .D(n175), .CLK(clk), .RSTB(n290), .Q(fifo[2]), 
        .QN(n266) );
  DFFARX1_HVT fifo_reg_0__1_ ( .D(n174), .CLK(clk), .RSTB(n290), .Q(fifo[1]), 
        .QN(n264) );
  DFFARX1_HVT fifo_reg_0__0_ ( .D(n173), .CLK(clk), .RSTB(n290), .Q(fifo[0]), 
        .QN(n265) );
  DFFARX1_HVT overrun_reg ( .D(n172), .CLK(clk), .RSTB(n290), .Q(overrun) );
  DFFARX1_HVT count_reg_2_ ( .D(n230), .CLK(clk), .RSTB(n291), .Q(count[2]), 
        .QN(n288) );
  OR3X1_HVT U6 ( .A1(n251), .A2(n106), .A3(n105), .Y(n108) );
  OA22X1_HVT U10 ( .A1(n261), .A2(n67), .A3(n276), .A4(n92), .Y(n51) );
  AO22X1_HVT U11 ( .A1(n75), .A2(fifo[47]), .A3(n74), .A4(fifo[35]), .Y(n77)
         );
  OR2X1_HVT U14 ( .A1(n255), .A2(n288), .Y(n116) );
  OR2X1_HVT U15 ( .A1(n272), .A2(n116), .Y(n127) );
  NBUFFX4_HVT U24 ( .A(n291), .Y(n1) );
  INVX0_HVT U32 ( .A(n94), .Y(n17) );
  INVX0_HVT U36 ( .A(n249), .Y(n121) );
  INVX0_HVT U44 ( .A(n111), .Y(n112) );
  INVX0_HVT U53 ( .A(n72), .Y(n66) );
  INVX0_HVT U118 ( .A(wb_rst_i), .Y(n291) );
  NAND2X0_HVT U119 ( .A1(n36), .A2(n270), .Y(n37) );
  INVX0_HVT U127 ( .A(n65), .Y(n73) );
  INVX0_HVT U129 ( .A(n92), .Y(n75) );
  INVX0_HVT U130 ( .A(n67), .Y(n74) );
  INVX0_HVT U135 ( .A(n44), .Y(n76) );
  INVX0_HVT U172 ( .A(n129), .Y(n88) );
  INVX0_HVT U173 ( .A(n251), .Y(n119) );
  INVX0_RVT U175 ( .A(reset_status), .Y(n89) );
  INVX0_HVT U204 ( .A(n127), .Y(n117) );
  NAND2X0_HVT U216 ( .A1(n136), .A2(n135), .Y(n140) );
  AO21X1_HVT U262 ( .A1(count[0]), .A2(n251), .A3(n250), .Y(n253) );
  NOR4X1_HVT U260 ( .A1(fifo[43]), .A2(fifo[42]), .A3(fifo[41]), .A4(fifo[40]), 
        .Y(n242) );
  NOR4X1_HVT U259 ( .A1(fifo[47]), .A2(fifo[46]), .A3(fifo[45]), .A4(fifo[44]), 
        .Y(n243) );
  NOR4X0_HVT U258 ( .A1(fifo[35]), .A2(fifo[34]), .A3(fifo[33]), .A4(fifo[32]), 
        .Y(n244) );
  NOR4X0_HVT U257 ( .A1(fifo[39]), .A2(fifo[38]), .A3(fifo[37]), .A4(fifo[36]), 
        .Y(n245) );
  NOR4X1_HVT U255 ( .A1(fifo[31]), .A2(fifo[30]), .A3(fifo[29]), .A4(fifo[28]), 
        .Y(n238) );
  NOR4X1_HVT U254 ( .A1(fifo[27]), .A2(fifo[26]), .A3(fifo[25]), .A4(fifo[24]), 
        .Y(n239) );
  NOR4X0_HVT U253 ( .A1(fifo[23]), .A2(fifo[22]), .A3(fifo[21]), .A4(fifo[20]), 
        .Y(n240) );
  NOR4X1_HVT U252 ( .A1(fifo[19]), .A2(fifo[18]), .A3(fifo[17]), .A4(fifo[16]), 
        .Y(n241) );
  NOR4X1_HVT U250 ( .A1(fifo[15]), .A2(fifo[14]), .A3(fifo[13]), .A4(fifo[12]), 
        .Y(n234) );
  NOR4X0_HVT U249 ( .A1(fifo[11]), .A2(fifo[10]), .A3(fifo[9]), .A4(fifo[8]), 
        .Y(n235) );
  NOR4X1_HVT U248 ( .A1(fifo[7]), .A2(fifo[6]), .A3(fifo[5]), .A4(fifo[4]), 
        .Y(n236) );
  NOR4X1_HVT U247 ( .A1(fifo[3]), .A2(fifo[2]), .A3(fifo[1]), .A4(fifo[0]), 
        .Y(n237) );
  OR2X1_HVT U211 ( .A1(n251), .A2(count[3]), .Y(n128) );
  NAND2X0_HVT U199 ( .A1(n138), .A2(n3), .Y(n136) );
  NAND2X0_HVT U197 ( .A1(n138), .A2(n113), .Y(n135) );
  AND2X1_HVT U191 ( .A1(n288), .A2(n255), .Y(n106) );
  OR2X1_HVT U182 ( .A1(n274), .A2(n100), .Y(n101) );
  OR2X1_HVT U178 ( .A1(n93), .A2(n92), .Y(n96) );
  NOR2X0_HVT U168 ( .A1(n129), .A2(n85), .Y(n86) );
  AND3X1_HVT U162 ( .A1(n118), .A2(n138), .A3(n83), .Y(n132) );
  OR2X1_HVT U161 ( .A1(count[4]), .A2(n251), .Y(n83) );
  AO22X1_HVT U157 ( .A1(n75), .A2(fifo[44]), .A3(n74), .A4(fifo[32]), .Y(n70)
         );
  OA22X1_HVT U154 ( .A1(n260), .A2(n67), .A3(n92), .A4(n280), .Y(n68) );
  OA22X1_HVT U151 ( .A1(n262), .A2(n67), .A3(n277), .A4(n92), .Y(n63) );
  AO22X1_HVT U147 ( .A1(n75), .A2(fifo[46]), .A3(n74), .A4(fifo[34]), .Y(n57)
         );
  AO22X1_HVT U144 ( .A1(n75), .A2(fifo[43]), .A3(n74), .A4(fifo[31]), .Y(n55)
         );
  OA22X1_HVT U141 ( .A1(n258), .A2(n67), .A3(n92), .A4(n279), .Y(n53) );
  AO22X1_HVT U134 ( .A1(n75), .A2(fifo[45]), .A3(n74), .A4(fifo[33]), .Y(n45)
         );
  AO22X1_HVT U131 ( .A1(n75), .A2(fifo[42]), .A3(n74), .A4(fifo[30]), .Y(n42)
         );
  OA22X1_HVT U125 ( .A1(n92), .A2(n263), .A3(n67), .A4(n278), .Y(n40) );
  OA22X1_HVT U122 ( .A1(n259), .A2(n67), .A3(n275), .A4(n92), .Y(n38) );
  OR2X1_HVT U113 ( .A1(n32), .A2(n293), .Y(n137) );
  OA22X1_HVT U109 ( .A1(n32), .A2(n29), .A3(n4), .A4(n33), .Y(n30) );
  OA22X1_HVT U98 ( .A1(n21), .A2(n29), .A3(n4), .A4(n20), .Y(n22) );
  OA22X1_HVT U90 ( .A1(n24), .A2(n15), .A3(n44), .A4(n23), .Y(n16) );
  OA22X1_HVT U86 ( .A1(n97), .A2(n23), .A3(n24), .A4(n293), .Y(n14) );
  OA22X1_HVT U80 ( .A1(n27), .A2(n15), .A3(n44), .A4(n26), .Y(n13) );
  OA22X1_HVT U68 ( .A1(n21), .A2(n15), .A3(n44), .A4(n20), .Y(n10) );
  OA22X1_HVT U64 ( .A1(n97), .A2(n26), .A3(n27), .A4(n293), .Y(n9) );
  OR2X1_HVT U61 ( .A1(bottom[1]), .A2(n257), .Y(n65) );
  NAND2X0_HVT U55 ( .A1(n3), .A2(n2), .Y(n21) );
  NOR2X0_HVT U52 ( .A1(bottom[2]), .A2(bottom[1]), .Y(n72) );
  OA22X1_HVT U47 ( .A1(n32), .A2(n15), .A3(n33), .A4(n44), .Y(n7) );
  NOR2X0_HVT U43 ( .A1(n270), .A2(n36), .Y(n111) );
  OA22X1_HVT U39 ( .A1(n32), .A2(n18), .A3(n17), .A4(n33), .Y(n6) );
  OR2X1_HVT U33 ( .A1(n274), .A2(n257), .Y(n92) );
  OR2X1_HVT U25 ( .A1(bottom[0]), .A2(bottom[3]), .Y(n4) );
  OR2X1_HVT U7 ( .A1(n273), .A2(n93), .Y(n100) );
  NBUFFX2_HVT U167 ( .A(n291), .Y(n290) );
  NBUFFX2_HVT U192 ( .A(n291), .Y(n289) );
  OR2X1_HVT U16 ( .A1(bottom[2]), .A2(n274), .Y(n67) );
  DFFASRX1_HVT fifo_reg_11__2_ ( .D(n208), .CLK(clk), .RSTB(n289), .SETB(1'b1), 
        .Q(fifo[35]) );
  OR2X1_HVT U57 ( .A1(pop_BAR), .A2(n86), .Y(n93) );
  OA22X1_HVT U227 ( .A1(n97), .A2(n20), .A3(n293), .A4(n21), .Y(n8) );
  NAND2X0_RVT U85 ( .A1(top[1]), .A2(n3), .Y(n24) );
  NAND2X0_RVT U63 ( .A1(top[2]), .A2(n2), .Y(n27) );
  OR2X1_RVT U35 ( .A1(push), .A2(pop_BAR), .Y(n249) );
  NAND2X0_RVT U28 ( .A1(top[2]), .A2(top[1]), .Y(n32) );
  AO21X1_HVT U30 ( .A1(count[4]), .A2(pop_BAR), .A3(n5), .Y(n36) );
  DFFASRX1_HVT fifo_reg_14__0_ ( .D(n215), .CLK(clk), .RSTB(n1), .SETB(1'b1), 
        .Q(fifo[42]) );
  OR3X1_HVT U13 ( .A1(count[0]), .A2(count[1]), .A3(count[2]), .Y(n120) );
  INVX0_RVT U23 ( .A(push), .Y(n5) );
  INVX2_HVT U84 ( .A(fifo_reset), .Y(n138) );
  OR2X1_HVT U34 ( .A1(count[3]), .A2(n120), .Y(n129) );
  DFFASRX1_HVT bottom_reg_3_ ( .D(n227), .CLK(clk), .RSTB(n290), .SETB(1'b1), 
        .Q(bottom[3]) );
  DFFASRX1_HVT fifo_reg_12__1_ ( .D(n210), .CLK(clk), .RSTB(n289), .SETB(1'b1), 
        .Q(fifo[37]) );
  OR3X1_RVT U19 ( .A1(n248), .A2(n247), .A3(n246), .Y(error_bit) );
  INVX0_LVT U70 ( .A(n147), .Y(n148) );
  INVX0_LVT U82 ( .A(n149), .Y(n150) );
  INVX0_LVT U59 ( .A(n151), .Y(n152) );
  INVX0_LVT U49 ( .A(n145), .Y(n146) );
  OA21X1_RVT U12 ( .A1(count[2]), .A2(n272), .A3(count[1]), .Y(n105) );
  AO21X1_RVT U56 ( .A1(n116), .A2(n120), .A3(n249), .Y(n107) );
  NOR2X0_RVT U88 ( .A1(n131), .A2(count[3]), .Y(n122) );
  AO22X1_RVT U102 ( .A1(n73), .A2(fifo[41]), .A3(n72), .A4(fifo[29]), .Y(n78)
         );
  OA22X1_RVT U158 ( .A1(n66), .A2(n264), .A3(n65), .A4(n281), .Y(n52) );
  INVX0_RVT U171 ( .A(n101), .Y(n102) );
  OA21X1_RVT U177 ( .A1(n71), .A2(n70), .A3(n94), .Y(n80) );
  OR4X1_RVT U180 ( .A1(n50), .A2(n49), .A3(n48), .A4(n47), .Y(data_out[0]) );
  OA22X1_RVT U186 ( .A1(n27), .A2(n18), .A3(n17), .A4(n26), .Y(n12) );
  OA22X1_RVT U193 ( .A1(n27), .A2(n29), .A3(n4), .A4(n26), .Y(n28) );
  OA22X1_RVT U209 ( .A1(n24), .A2(n29), .A3(n4), .A4(n23), .Y(n25) );
  OA22X1_RVT U210 ( .A1(n24), .A2(n18), .A3(n17), .A4(n23), .Y(n19) );
  raminfr_addr_width4_data_width8_depth16_0 rfifo ( .clk(clk), .we(push), .a(
        top), .dpra(bottom), .di(data_in[10:3]), .dpo(data_out[10:3]) );
  NAND2X0_RVT U232 ( .A1(push), .A2(pop_BAR), .Y(n251) );
  INVX0_HVT U206 ( .A(n118), .Y(n123) );
  AO22X1_RVT U156 ( .A1(n73), .A2(fifo[38]), .A3(n72), .A4(fifo[26]), .Y(n71)
         );
  OA22X1_RVT U153 ( .A1(n66), .A2(n268), .A3(n65), .A4(n285), .Y(n69) );
  AO22X1_RVT U146 ( .A1(n73), .A2(fifo[40]), .A3(n72), .A4(fifo[28]), .Y(n58)
         );
  AO22X1_RVT U143 ( .A1(n73), .A2(fifo[37]), .A3(n72), .A4(fifo[25]), .Y(n56)
         );
  OA22X1_RVT U140 ( .A1(n66), .A2(n267), .A3(n65), .A4(n284), .Y(n54) );
  AO22X1_RVT U133 ( .A1(n73), .A2(fifo[39]), .A3(n72), .A4(fifo[27]), .Y(n46)
         );
  OA22X1_RVT U124 ( .A1(n66), .A2(n269), .A3(n65), .A4(n286), .Y(n41) );
  OA22X1_RVT U121 ( .A1(n66), .A2(n265), .A3(n65), .A4(n282), .Y(n39) );
  NAND2X0_RVT U170 ( .A1(n93), .A2(n273), .Y(n87) );
  OR2X1_RVT U17 ( .A1(n67), .A2(n118), .Y(n23) );
  AND2X1_RVT U29 ( .A1(bottom[3]), .A2(n273), .Y(n94) );
  OA21X1_RVT U51 ( .A1(n97), .A2(n96), .A3(n95), .Y(n98) );
  AOI21X1_RVT U78 ( .A1(count[3]), .A2(n131), .A3(n130), .Y(n134) );
  OA21X1_RVT U94 ( .A1(n58), .A2(n57), .A3(n76), .Y(n59) );
  AO22X1_RVT U114 ( .A1(n126), .A2(n125), .A3(n124), .A4(count[4]), .Y(n232)
         );
  AND2X1_RVT U185 ( .A1(n100), .A2(n274), .Y(n103) );
  XNOR2X1_RVT U183 ( .A1(n101), .A2(n257), .Y(n99) );
  OR2X1_RVT U62 ( .A1(n65), .A2(n118), .Y(n26) );
  OR2X1_RVT U54 ( .A1(n66), .A2(n118), .Y(n20) );
  OR2X1_RVT U38 ( .A1(n92), .A2(n118), .Y(n33) );
  AOI21X1_RVT U46 ( .A1(n96), .A2(bottom[3]), .A3(n94), .Y(n95) );
  MUX21X1_RVT U166 ( .A1(n35), .A2(fifo[8]), .S0(n166), .Y(n181) );
  MUX21X1_RVT U179 ( .A1(fifo[23]), .A2(n35), .S0(n114), .Y(n196) );
  AO22X1_RVT U3 ( .A1(n115), .A2(fifo[21]), .A3(n114), .A4(n170), .Y(n194) );
  NOR2X1_RVT U4 ( .A1(n288), .A2(n252), .Y(n110) );
  OR4X1_RVT U26 ( .A1(n82), .A2(n81), .A3(n80), .A4(n79), .Y(data_out[2]) );
  NAND2X0_RVT U40 ( .A1(n6), .A2(n138), .Y(n141) );
  MUX21X1_RVT U42 ( .A1(n35), .A2(fifo[44]), .S0(n142), .Y(n217) );
  NAND2X0_RVT U48 ( .A1(n7), .A2(n138), .Y(n145) );
  MUX21X1_RVT U50 ( .A1(n35), .A2(fifo[47]), .S0(n146), .Y(n220) );
  NAND2X0_RVT U58 ( .A1(n8), .A2(n138), .Y(n151) );
  MUX21X1_RVT U60 ( .A1(n35), .A2(fifo[5]), .S0(n152), .Y(n178) );
  NAND2X0_RVT U65 ( .A1(n9), .A2(n138), .Y(n143) );
  MUX21X1_RVT U67 ( .A1(n35), .A2(fifo[17]), .S0(n144), .Y(n190) );
  NAND2X0_RVT U69 ( .A1(n10), .A2(n138), .Y(n157) );
  MUX21X1_RVT U71 ( .A1(n35), .A2(fifo[29]), .S0(n158), .Y(n202) );
  NAND2X0_RVT U73 ( .A1(n11), .A2(n138), .Y(n155) );
  MUX21X1_RVT U75 ( .A1(n35), .A2(fifo[26]), .S0(n156), .Y(n199) );
  NAND2X0_RVT U77 ( .A1(n12), .A2(n138), .Y(n147) );
  MUX21X1_RVT U79 ( .A1(n35), .A2(fifo[38]), .S0(n148), .Y(n211) );
  NAND2X0_RVT U81 ( .A1(n13), .A2(n138), .Y(n149) );
  MUX21X1_RVT U83 ( .A1(n35), .A2(fifo[41]), .S0(n150), .Y(n214) );
  NAND2X0_RVT U87 ( .A1(n14), .A2(n138), .Y(n153) );
  MUX21X1_RVT U89 ( .A1(n35), .A2(fifo[11]), .S0(n154), .Y(n184) );
  NAND2X0_RVT U91 ( .A1(n16), .A2(n138), .Y(n161) );
  NAND2X0_RVT U95 ( .A1(n19), .A2(n138), .Y(n159) );
  MUX21X1_RVT U97 ( .A1(n35), .A2(fifo[32]), .S0(n160), .Y(n205) );
  NAND2X0_RVT U99 ( .A1(n22), .A2(n138), .Y(n163) );
  MUX21X1_RVT U101 ( .A1(n35), .A2(fifo[2]), .S0(n164), .Y(n175) );
  NAND2X0_RVT U103 ( .A1(n25), .A2(n138), .Y(n165) );
  NAND2X0_RVT U106 ( .A1(n28), .A2(n138), .Y(n167) );
  MUX21X1_RVT U108 ( .A1(n35), .A2(fifo[14]), .S0(n168), .Y(n187) );
  NAND2X0_RVT U110 ( .A1(n30), .A2(n138), .Y(n171) );
  MUX21X1_RVT U112 ( .A1(n35), .A2(fifo[20]), .S0(n233), .Y(n193) );
  AND3X1_RVT U115 ( .A1(n137), .A2(n138), .A3(n34), .Y(n115) );
  AND3X1_RVT U120 ( .A1(n138), .A2(n112), .A3(n37), .Y(n224) );
  AOI21X1_RVT U123 ( .A1(n39), .A2(n38), .A3(n4), .Y(n50) );
  AOI21X1_RVT U126 ( .A1(n41), .A2(n40), .A3(n97), .Y(n49) );
  OA21X1_RVT U132 ( .A1(n43), .A2(n42), .A3(n94), .Y(n48) );
  OA21X1_RVT U136 ( .A1(n46), .A2(n45), .A3(n76), .Y(n47) );
  AOI21X1_RVT U139 ( .A1(n52), .A2(n51), .A3(n4), .Y(n62) );
  AOI21X1_RVT U142 ( .A1(n54), .A2(n53), .A3(n97), .Y(n61) );
  OA21X1_RVT U145 ( .A1(n56), .A2(n55), .A3(n94), .Y(n60) );
  OR4X1_RVT U149 ( .A1(n62), .A2(n61), .A3(n60), .A4(n59), .Y(data_out[1]) );
  AOI21X1_RVT U152 ( .A1(n64), .A2(n63), .A3(n4), .Y(n82) );
  NOR2X1_RVT U164 ( .A1(n254), .A2(count[0]), .Y(n84) );
  AO21X1_RVT U165 ( .A1(n132), .A2(count[0]), .A3(n84), .Y(n256) );
  AND3X1_RVT U174 ( .A1(n88), .A2(count[4]), .A3(n119), .Y(n91) );
  NOR2X1_RVT U184 ( .A1(fifo_reset), .A2(n99), .Y(n226) );
  AOI21X1_RVT U190 ( .A1(n126), .A2(n104), .A3(n132), .Y(n252) );
  AOI21X1_RVT U194 ( .A1(n108), .A2(n107), .A3(n254), .Y(n109) );
  OR2X1_RVT U195 ( .A1(n110), .A2(n109), .Y(n230) );
  OAI22X1_RVT U200 ( .A1(n3), .A2(n135), .A3(n136), .A4(n113), .Y(n222) );
  AND3X1_RVT U201 ( .A1(push), .A2(data_in[0]), .A3(n138), .Y(n170) );
  AND3X1_RVT U202 ( .A1(push), .A2(data_in[1]), .A3(n138), .Y(n169) );
  AO22X1_RVT U203 ( .A1(n115), .A2(fifo[22]), .A3(n114), .A4(n169), .Y(n195)
         );
  AND3X1_RVT U205 ( .A1(n117), .A2(count[3]), .A3(n119), .Y(n125) );
  OAI22X1_HVT U212 ( .A1(n249), .A2(n129), .A3(n128), .A4(n127), .Y(n130) );
  OAI22X1_RVT U215 ( .A1(n254), .A2(n134), .A3(n287), .A4(n133), .Y(n231) );
  AO22X1_RVT U218 ( .A1(top[3]), .A2(n140), .A3(n139), .A4(n138), .Y(n221) );
  AO22X1_RVT U219 ( .A1(n142), .A2(fifo[43]), .A3(n141), .A4(n169), .Y(n216)
         );
  AO22X1_RVT U220 ( .A1(n142), .A2(fifo[42]), .A3(n141), .A4(n170), .Y(n215)
         );
  AO22X1_RVT U221 ( .A1(n144), .A2(fifo[15]), .A3(n143), .A4(n170), .Y(n188)
         );
  AO22X1_RVT U222 ( .A1(n144), .A2(fifo[16]), .A3(n143), .A4(n169), .Y(n189)
         );
  AO22X1_RVT U223 ( .A1(n146), .A2(fifo[45]), .A3(n145), .A4(n170), .Y(n218)
         );
  AO22X1_RVT U224 ( .A1(n146), .A2(fifo[46]), .A3(n145), .A4(n169), .Y(n219)
         );
  AO22X1_RVT U225 ( .A1(n148), .A2(fifo[37]), .A3(n147), .A4(n169), .Y(n210)
         );
  AO22X1_RVT U226 ( .A1(n150), .A2(fifo[39]), .A3(n149), .A4(n170), .Y(n212)
         );
  AO22X1_RVT U228 ( .A1(n152), .A2(fifo[3]), .A3(n151), .A4(n170), .Y(n176) );
  AO22X1_RVT U229 ( .A1(n152), .A2(fifo[4]), .A3(n151), .A4(n169), .Y(n177) );
  AO22X1_RVT U230 ( .A1(n154), .A2(fifo[9]), .A3(n153), .A4(n170), .Y(n182) );
  AO22X1_RVT U233 ( .A1(n156), .A2(fifo[24]), .A3(n155), .A4(n170), .Y(n197)
         );
  AO22X1_RVT U234 ( .A1(n158), .A2(fifo[27]), .A3(n157), .A4(n170), .Y(n200)
         );
  AO22X1_RVT U235 ( .A1(n158), .A2(fifo[28]), .A3(n157), .A4(n169), .Y(n201)
         );
  AO22X1_RVT U236 ( .A1(n160), .A2(fifo[31]), .A3(n159), .A4(n169), .Y(n204)
         );
  AO22X1_RVT U237 ( .A1(n160), .A2(fifo[30]), .A3(n159), .A4(n170), .Y(n203)
         );
  AO22X1_RVT U238 ( .A1(n162), .A2(fifo[34]), .A3(n161), .A4(n169), .Y(n207)
         );
  AO22X1_RVT U239 ( .A1(n162), .A2(fifo[33]), .A3(n161), .A4(n170), .Y(n206)
         );
  AO22X1_RVT U240 ( .A1(n164), .A2(fifo[0]), .A3(n163), .A4(n170), .Y(n173) );
  AO22X1_RVT U241 ( .A1(n164), .A2(fifo[1]), .A3(n163), .A4(n169), .Y(n174) );
  AO22X1_RVT U242 ( .A1(n166), .A2(fifo[7]), .A3(n165), .A4(n169), .Y(n180) );
  AO22X1_RVT U243 ( .A1(n168), .A2(fifo[13]), .A3(n167), .A4(n169), .Y(n186)
         );
  AO22X1_RVT U244 ( .A1(n168), .A2(fifo[12]), .A3(n167), .A4(n170), .Y(n185)
         );
  AO22X1_RVT U245 ( .A1(n233), .A2(fifo[19]), .A3(n171), .A4(n169), .Y(n192)
         );
  AO22X1_RVT U246 ( .A1(n233), .A2(fifo[18]), .A3(n171), .A4(n170), .Y(n191)
         );
  OAI22X1_RVT U22 ( .A1(n254), .A2(n253), .A3(n255), .A4(n252), .Y(n229) );
  AO22X1_RVT U21 ( .A1(n148), .A2(fifo[36]), .A3(n147), .A4(n170), .Y(n209) );
  AO22X1_RVT U20 ( .A1(n166), .A2(fifo[6]), .A3(n165), .A4(n170), .Y(n179) );
  AO21X1_RVT U5 ( .A1(n272), .A2(n249), .A3(count[1]), .Y(n250) );
  NAND4X0_RVT U261 ( .A1(n245), .A2(n244), .A3(n243), .A4(n242), .Y(n246) );
  NAND4X0_RVT U256 ( .A1(n241), .A2(n240), .A3(n239), .A4(n238), .Y(n247) );
  NAND4X0_RVT U251 ( .A1(n237), .A2(n236), .A3(n235), .A4(n234), .Y(n248) );
  NAND2X0_RVT U231 ( .A1(n111), .A2(n271), .Y(n293) );
  AOI21X1_RVT U208 ( .A1(n2), .A2(n112), .A3(n135), .Y(n223) );
  AO22X1_RVT U198 ( .A1(n150), .A2(fifo[40]), .A3(n149), .A4(n169), .Y(n213)
         );
  AO22X1_RVT U169 ( .A1(n156), .A2(fifo[25]), .A3(n155), .A4(n169), .Y(n198)
         );
  AO22X1_RVT U155 ( .A1(n154), .A2(fifo[10]), .A3(n153), .A4(n169), .Y(n183)
         );
  MUX21X1_RVT U117 ( .A1(n35), .A2(fifo[35]), .S0(n162), .Y(n208) );
  OR2X1_RVT U72 ( .A1(bottom[3]), .A2(n273), .Y(n97) );
  INVX0_LVT U116 ( .A(n115), .Y(n114) );
  NAND2X0_RVT U196 ( .A1(top[1]), .A2(n111), .Y(n113) );
  MUX21X1_HVT U189 ( .A1(n119), .A2(n121), .S0(count[0]), .Y(n104) );
  OR2X1_RVT U45 ( .A1(n271), .A2(n112), .Y(n15) );
  OR2X1_RVT U163 ( .A1(fifo_reset), .A2(n132), .Y(n254) );
  NOR3X0_RVT U187 ( .A1(fifo_reset), .A2(n103), .A3(n102), .Y(n225) );
  AO22X1_HVT U207 ( .A1(n121), .A2(n120), .A3(n127), .A4(n119), .Y(n131) );
  INVX0_RVT U217 ( .A(n137), .Y(n139) );
  INVX0_LVT U214 ( .A(n132), .Y(n133) );
  INVX0_LVT U188 ( .A(n254), .Y(n126) );
  AND3X1_RVT U160 ( .A1(n100), .A2(n138), .A3(n87), .Y(n228) );
  OA21X1_RVT U159 ( .A1(overrun), .A2(n91), .A3(n90), .Y(n172) );
  NOR2X1_RVT U148 ( .A1(fifo_reset), .A2(n98), .Y(n227) );
  AOI21X1_RVT U138 ( .A1(n69), .A2(n68), .A3(n97), .Y(n81) );
  AND2X1_RVT U176 ( .A1(n89), .A2(n138), .Y(n90) );
  OAI21X1_RVT U37 ( .A1(count[4]), .A2(n129), .A3(n121), .Y(n118) );
  OR3X1_HVT U8 ( .A1(top[0]), .A2(top[3]), .A3(n36), .Y(n29) );
  INVX0_RVT U92 ( .A(n161), .Y(n162) );
  INVX0_HVT U137 ( .A(n153), .Y(n154) );
  INVX0_HVT U105 ( .A(n155), .Y(n156) );
  INVX0_HVT U96 ( .A(n159), .Y(n160) );
  INVX0_HVT U41 ( .A(n141), .Y(n142) );
  INVX0_HVT U111 ( .A(n171), .Y(n233) );
  INVX0_HVT U107 ( .A(n167), .Y(n168) );
  INVX0_HVT U104 ( .A(n165), .Y(n166) );
  INVX0_HVT U100 ( .A(n163), .Y(n164) );
  INVX0_HVT U66 ( .A(n143), .Y(n144) );
  OR2X1_HVT U9 ( .A1(count[4]), .A2(push), .Y(n85) );
  OR3X1_HVT U18 ( .A1(top[0]), .A2(n271), .A3(n36), .Y(n18) );
  OR2X1_HVT U27 ( .A1(n97), .A2(n33), .Y(n34) );
  OA22X1_HVT U31 ( .A1(n66), .A2(n266), .A3(n65), .A4(n283), .Y(n64) );
  AO22X1_HVT U74 ( .A1(n73), .A2(fifo[36]), .A3(n72), .A4(fifo[24]), .Y(n43)
         );
  INVX0_HVT U76 ( .A(n157), .Y(n158) );
  AND3X1_HVT U93 ( .A1(push), .A2(data_in[2]), .A3(n138), .Y(n35) );
  OAI22X1_HVT U128 ( .A1(n123), .A2(fifo_reset), .A3(n122), .A4(n254), .Y(n124) );
  OA21X1_HVT U150 ( .A1(n78), .A2(n77), .A3(n76), .Y(n79) );
  OA22X1_HVT U181 ( .A1(n21), .A2(n18), .A3(n17), .A4(n20), .Y(n11) );
  NAND2X0_RVT U213 ( .A1(bottom[0]), .A2(bottom[3]), .Y(n44) );
endmodule


module uart_receiver ( clk, wb_rst_i, lcr, srx_pad_i, enable, counter_t, 
        rf_count, rf_data_out, rf_error_bit, rf_overrun, rx_reset, lsr_mask, 
        rstate, rf_push_pulse, rf_pop_BAR );
  input [7:0] lcr;
  output [9:0] counter_t;
  output [4:0] rf_count;
  output [10:0] rf_data_out;
  output [3:0] rstate;
  input clk, wb_rst_i, srx_pad_i, enable, rx_reset, lsr_mask, rf_pop_BAR;
  output rf_error_bit, rf_overrun, rf_push_pulse;
  wire   rparity, rparity_xor, rframing_error, rparity_error, rf_push, n150,
         n151, n152, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n187, n188, n189, n190, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n28, n29,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n81, n82, n84, n86, n88, n89, n92, n93, n94,
         n96, n97, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n115, n116, n117, n118, n120, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n244, n245, n246, n247, n248, n249, n250, n252, n253, n254, n255,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n321, n326, n327, n328, n330, n331, n335, n337, n340, n343,
         n344, n345, n346, n351, n354, n355, n357, n358, n360, n364, n365,
         n366, n367, n368, n369, n370, n371, n373, n374, n375, n376, n377,
         n378, n379, n380;
  wire   [7:0] counter_b;
  wire   [10:0] rf_data_in;
  wire   [3:0] rcounter16;
  wire   [7:0] rshift;
  wire   [2:0] rbit_counter;

  DFFASX1_HVT counter_b_reg_0_ ( .D(n298), .CLK(clk), .SETB(n311), .Q(
        counter_b[0]) );
  DFFASX1_HVT counter_b_reg_3_ ( .D(n197), .CLK(clk), .SETB(n311), .Q(
        counter_b[3]) );
  DFFASX1_HVT counter_b_reg_2_ ( .D(n196), .CLK(clk), .SETB(n311), .Q(
        counter_b[2]) );
  DFFASX1_HVT counter_b_reg_1_ ( .D(n195), .CLK(clk), .SETB(n311), .Q(
        counter_b[1]) );
  DFFASX1_HVT counter_t_reg_9_ ( .D(n158), .CLK(clk), .SETB(n311), .Q(
        counter_t[9]) );
  DFFASX1_HVT counter_t_reg_6_ ( .D(n155), .CLK(clk), .SETB(n311), .Q(
        counter_t[6]) );
  DFFASX1_HVT counter_t_reg_3_ ( .D(n152), .CLK(clk), .SETB(n311), .Q(
        counter_t[3]), .QN(n302) );
  DFFARX1_HVT counter_b_reg_6_ ( .D(n200), .CLK(clk), .RSTB(n311), .Q(
        counter_b[6]), .QN(n306) );
  DFFARX1_HVT counter_b_reg_5_ ( .D(n199), .CLK(clk), .RSTB(n312), .Q(
        counter_b[5]) );
  DFFARX1_HVT rstate_reg_3_ ( .D(n184), .CLK(clk), .RSTB(n313), .Q(rstate[3]), 
        .QN(n294) );
  DFFARX1_HVT rframing_error_reg ( .D(n171), .CLK(clk), .RSTB(n314), .Q(
        rframing_error), .QN(n292) );
  DFFARX1_HVT rcounter16_reg_0_ ( .D(n173), .CLK(clk), .RSTB(n313), .Q(
        rcounter16[0]), .QN(n285) );
  DFFARX1_HVT rstate_reg_2_ ( .D(n190), .CLK(clk), .RSTB(n313), .Q(rstate[2]), 
        .QN(n290) );
  DFFARX1_HVT rstate_reg_1_ ( .D(n365), .CLK(clk), .RSTB(n314), .Q(rstate[1]), 
        .QN(n283) );
  DFFARX1_HVT rstate_reg_0_ ( .D(n185), .CLK(clk), .RSTB(n313), .Q(rstate[0]), 
        .QN(n291) );
  DFFARX1_HVT rbit_counter_reg_1_ ( .D(n188), .CLK(clk), .RSTB(n314), .Q(
        rbit_counter[1]) );
  DFFARX1_HVT rbit_counter_reg_0_ ( .D(n189), .CLK(clk), .RSTB(n314), .Q(
        rbit_counter[0]), .QN(n284) );
  DFFARX1_HVT rbit_counter_reg_2_ ( .D(n187), .CLK(clk), .RSTB(n314), .Q(
        rbit_counter[2]) );
  DFFARX1_HVT rcounter16_reg_1_ ( .D(n193), .CLK(clk), .RSTB(n314), .Q(
        rcounter16[1]), .QN(n293) );
  DFFARX1_HVT rcounter16_reg_2_ ( .D(n326), .CLK(clk), .RSTB(n314), .Q(
        rcounter16[2]), .QN(n282) );
  DFFARX1_HVT rcounter16_reg_3_ ( .D(n370), .CLK(clk), .RSTB(n312), .Q(
        rcounter16[3]) );
  DFFARX1_HVT rparity_reg ( .D(n194), .CLK(clk), .RSTB(n313), .Q(rparity) );
  DFFARX1_HVT rshift_reg_7_ ( .D(n176), .CLK(clk), .RSTB(n312), .Q(rshift[7])
         );
  DFFARX1_HVT rshift_reg_6_ ( .D(n177), .CLK(clk), .RSTB(n312), .Q(rshift[6]), 
        .QN(n305) );
  DFFARX1_HVT rshift_reg_5_ ( .D(n178), .CLK(clk), .RSTB(n312), .Q(rshift[5]), 
        .QN(n296) );
  DFFARX1_HVT rshift_reg_4_ ( .D(n179), .CLK(clk), .RSTB(n312), .Q(rshift[4]), 
        .QN(n286) );
  DFFARX1_HVT rshift_reg_3_ ( .D(n180), .CLK(clk), .RSTB(n312), .Q(rshift[3]), 
        .QN(n310) );
  DFFARX1_HVT rshift_reg_2_ ( .D(n181), .CLK(clk), .RSTB(n312), .Q(rshift[2]), 
        .QN(n288) );
  DFFARX1_HVT rshift_reg_1_ ( .D(n182), .CLK(clk), .RSTB(n313), .Q(rshift[1]), 
        .QN(n309) );
  DFFARX1_HVT rshift_reg_0_ ( .D(n183), .CLK(clk), .RSTB(n313), .Q(rshift[0]), 
        .QN(n287) );
  DFFARX1_HVT rparity_xor_reg ( .D(n175), .CLK(clk), .RSTB(n313), .Q(
        rparity_xor), .QN(n308) );
  DFFARX1_HVT rparity_error_reg ( .D(n174), .CLK(clk), .RSTB(n312), .Q(
        rparity_error) );
  DFFARX1_HVT rf_push_reg ( .D(n172), .CLK(clk), .RSTB(n312), .Q(rf_push), 
        .QN(n367) );
  DFFARX1_HVT rf_push_q_reg ( .D(rf_push), .CLK(clk), .RSTB(n312), .QN(n289)
         );
  DFFARX1_HVT rf_data_in_reg_2_ ( .D(n168), .CLK(clk), .RSTB(n312), .Q(
        rf_data_in[2]) );
  DFFARX1_HVT rf_data_in_reg_0_ ( .D(n170), .CLK(clk), .RSTB(n312), .Q(
        rf_data_in[0]) );
  DFFARX1_HVT rf_data_in_reg_1_ ( .D(n169), .CLK(clk), .RSTB(n312), .Q(
        rf_data_in[1]) );
  DFFARX1_HVT rf_data_in_reg_3_ ( .D(n167), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[3]) );
  DFFARX1_HVT rf_data_in_reg_4_ ( .D(n166), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[4]) );
  DFFARX1_HVT rf_data_in_reg_5_ ( .D(n165), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[5]) );
  DFFARX1_HVT rf_data_in_reg_6_ ( .D(n164), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[6]) );
  DFFARX1_HVT rf_data_in_reg_7_ ( .D(n163), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[7]) );
  DFFARX1_HVT rf_data_in_reg_9_ ( .D(n161), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[9]) );
  DFFARX1_HVT rf_data_in_reg_10_ ( .D(n160), .CLK(clk), .RSTB(n313), .Q(
        rf_data_in[10]) );
  DFFARX1_HVT counter_t_reg_8_ ( .D(n157), .CLK(clk), .RSTB(n314), .Q(
        counter_t[8]) );
  DFFARX1_HVT counter_t_reg_7_ ( .D(n156), .CLK(clk), .RSTB(n313), .Q(
        counter_t[7]), .QN(n307) );
  INVX0_HVT U34 ( .A(n228), .Y(n226) );
  INVX0_HVT U38 ( .A(n133), .Y(n1) );
  INVX0_HVT U43 ( .A(lcr[3]), .Y(n133) );
  INVX0_HVT U57 ( .A(srx_pad_i), .Y(n220) );
  INVX0_HVT U67 ( .A(n92), .Y(n244) );
  INVX0_HVT U70 ( .A(n11), .Y(n13) );
  INVX0_HVT U77 ( .A(counter_b[3]), .Y(n20) );
  INVX0_HVT U84 ( .A(n15), .Y(n16) );
  INVX0_HVT U87 ( .A(lcr[2]), .Y(n17) );
  INVX0_HVT U94 ( .A(n62), .Y(n106) );
  INVX0_HVT U98 ( .A(lcr[1]), .Y(n39) );
  INVX0_HVT U107 ( .A(rf_pop_BAR), .Y(n28) );
  INVX0_HVT U116 ( .A(n218), .Y(n103) );
  INVX0_HVT U123 ( .A(n38), .Y(n232) );
  NAND2X0_HVT U125 ( .A1(rbit_counter[0]), .A2(n139), .Y(n37) );
  INVX0_HVT U132 ( .A(n144), .Y(n59) );
  INVX0_HVT U137 ( .A(n45), .Y(n47) );
  INVX0_HVT U141 ( .A(n49), .Y(n50) );
  INVX0_HVT U143 ( .A(n255), .Y(n54) );
  INVX0_HVT U152 ( .A(lcr[0]), .Y(n63) );
  INVX0_HVT U158 ( .A(n124), .Y(n70) );
  INVX0_HVT U188 ( .A(n211), .Y(n96) );
  INVX0_HVT U206 ( .A(n131), .Y(n117) );
  INVX0_HVT U207 ( .A(lcr[5]), .Y(n108) );
  HADDX1_HVT U209 ( .A0(lcr[4]), .B0(n109), .SO(n110) );
  INVX0_HVT U230 ( .A(n127), .Y(n128) );
  INVX0_HVT U236 ( .A(n139), .Y(n140) );
  INVX0_HVT U238 ( .A(n142), .Y(n143) );
  NAND2X0_HVT U248 ( .A1(counter_b[3]), .A2(counter_b[4]), .Y(n210) );
  INVX0_HVT U256 ( .A(n224), .Y(n227) );
  INVX0_HVT U261 ( .A(n252), .Y(n234) );
  INVX0_HVT U263 ( .A(n242), .Y(n236) );
  NOR2X0_HVT U286 ( .A1(n272), .A2(n271), .Y(n276) );
  NOR2X0_HVT U254 ( .A1(n272), .A2(n220), .Y(n221) );
  AOI21X1_HVT U253 ( .A1(lcr[1]), .A2(n219), .A3(n218), .Y(n272) );
  AND2X1_HVT U247 ( .A1(n265), .A2(srx_pad_i), .Y(n215) );
  NOR4X0_HVT U237 ( .A1(n1), .A2(rbit_counter[2]), .A3(n141), .A4(n140), .Y(
        n202) );
  OAI21X1_HVT U232 ( .A1(n133), .A2(n132), .A3(n131), .Y(n136) );
  AO22X1_HVT U229 ( .A1(n126), .A2(rf_data_in[10]), .A3(rshift[7]), .A4(n125), 
        .Y(n160) );
  AO22X1_HVT U228 ( .A1(n126), .A2(rf_data_in[8]), .A3(rshift[5]), .A4(n125), 
        .Y(n162) );
  AO22X1_HVT U227 ( .A1(n126), .A2(rf_data_in[7]), .A3(rshift[4]), .A4(n125), 
        .Y(n163) );
  AO22X1_HVT U226 ( .A1(n126), .A2(rf_data_in[9]), .A3(rshift[6]), .A4(n125), 
        .Y(n161) );
  AO22X1_HVT U225 ( .A1(n126), .A2(rf_data_in[5]), .A3(rshift[2]), .A4(n125), 
        .Y(n165) );
  AO22X1_HVT U224 ( .A1(n126), .A2(rf_data_in[0]), .A3(rframing_error), .A4(
        n125), .Y(n170) );
  AO22X1_HVT U223 ( .A1(n126), .A2(rf_data_in[3]), .A3(rshift[0]), .A4(n125), 
        .Y(n167) );
  AO22X1_HVT U222 ( .A1(n126), .A2(rf_data_in[4]), .A3(rshift[1]), .A4(n125), 
        .Y(n166) );
  AO22X1_HVT U221 ( .A1(n126), .A2(rf_data_in[6]), .A3(rshift[3]), .A4(n125), 
        .Y(n164) );
  AO22X1_HVT U220 ( .A1(n126), .A2(rf_data_in[1]), .A3(rparity_error), .A4(
        n125), .Y(n169) );
  NOR2X0_HVT U214 ( .A1(n117), .A2(n112), .Y(n113) );
  NOR2X0_HVT U213 ( .A1(n1), .A2(n132), .Y(n112) );
  OR3X1_HVT U212 ( .A1(rbit_counter[2]), .A2(n141), .A3(n111), .Y(n132) );
  OR2X1_HVT U211 ( .A1(rbit_counter[0]), .A2(rbit_counter[1]), .Y(n141) );
  OR2X1_HVT U201 ( .A1(n102), .A2(n209), .Y(n217) );
  OA21X1_HVT U172 ( .A1(counter_b[1]), .A2(n208), .A3(counter_b[2]), .Y(n86)
         );
  AO21X1_HVT U150 ( .A1(lcr[1]), .A2(n305), .A3(n57), .Y(n58) );
  AND2X1_HVT U144 ( .A1(n296), .A2(n55), .Y(n52) );
  AO21X1_HVT U142 ( .A1(n144), .A2(n50), .A3(n56), .Y(n255) );
  NOR3X0_HVT U122 ( .A1(rbit_counter[2]), .A2(rbit_counter[0]), .A3(
        rbit_counter[1]), .Y(n36) );
  NOR2X1_HVT U115 ( .A1(lcr[1]), .A2(n219), .Y(n218) );
  AO22X1_HVT U114 ( .A1(n1), .A2(lcr[2]), .A3(n32), .A4(lcr[0]), .Y(n219) );
  OR2X1_HVT U113 ( .A1(n1), .A2(lcr[2]), .Y(n32) );
  NOR3X0_HVT U106 ( .A1(rf_count[2]), .A2(rf_count[4]), .A3(n357), .Y(n29) );
  OR3X1_HVT U104 ( .A1(counter_t[5]), .A2(counter_t[6]), .A3(n44), .Y(n31) );
  OR2X1_HVT U89 ( .A1(n17), .A2(n55), .Y(n45) );
  OR2X1_HVT U88 ( .A1(lcr[0]), .A2(lcr[1]), .Y(n55) );
  XOR3X1_HVT U74 ( .A1(rshift[1]), .A2(rparity), .A3(n6), .Y(n7) );
  XOR3X1_HVT U73 ( .A1(rshift[0]), .A2(rshift[6]), .A3(rshift[7]), .Y(n6) );
  XNOR2X1_HVT U72 ( .A1(rshift[2]), .A2(rshift[3]), .Y(n8) );
  XOR2X1_HVT U71 ( .A1(rshift[4]), .A2(rshift[5]), .Y(n9) );
  OR2X1_HVT U69 ( .A1(n244), .A2(n5), .Y(n11) );
  NOR2X0_HVT U11 ( .A1(n303), .A2(n262), .Y(n263) );
  INVX0_HVT U138 ( .A(n264), .Y(n46) );
  DFFASX1_HVT counter_t_reg_4_ ( .D(n321), .CLK(clk), .SETB(n311), .Q(
        counter_t[4]), .QN(n303) );
  OR3X1_HVT U22 ( .A1(counter_t[2]), .A2(counter_t[1]), .A3(counter_t[3]), .Y(
        n331) );
  NOR2X0_HVT U140 ( .A1(n110), .A2(n354), .Y(n116) );
  INVX0_HVT U195 ( .A(n31), .Y(n330) );
  AND2X1_HVT U290 ( .A1(n260), .A2(n302), .Y(n262) );
  NOR3X0_HVT U231 ( .A1(n124), .A2(n123), .A3(n126), .Y(n125) );
  OR3X1_HVT U196 ( .A1(counter_t[0]), .A2(counter_t[4]), .A3(n331), .Y(n44) );
  AND2X1_HVT U193 ( .A1(n330), .A2(n346), .Y(n328) );
  OR2X1_HVT U177 ( .A1(n240), .A2(n364), .Y(n326) );
  INVX0_HVT U97 ( .A(n73), .Y(n248) );
  OR2X1_HVT U215 ( .A1(n354), .A2(n113), .Y(n115) );
  NOR2X0_HVT U99 ( .A1(n39), .A2(n354), .Y(n21) );
  NOR2X1_HVT U127 ( .A1(n354), .A2(n38), .Y(n64) );
  AO22X1_HVT U208 ( .A1(rparity_xor), .A2(n108), .A3(rparity), .A4(lcr[5]), 
        .Y(n109) );
  OR2X1_HVT U19 ( .A1(n354), .A2(n146), .Y(n62) );
  INVX1_HVT U135 ( .A(wb_rst_i), .Y(n314) );
  NAND3X0_HVT U147 ( .A1(n220), .A2(n208), .A3(n207), .Y(n298) );
  NOR3X0_HVT U183 ( .A1(counter_t[7]), .A2(counter_t[8]), .A3(counter_t[9]), 
        .Y(n346) );
  INVX0_HVT U36 ( .A(n122), .Y(n123) );
  DFFASX1_RVT counter_t_reg_2_ ( .D(n151), .CLK(clk), .SETB(n311), .Q(
        counter_t[2]), .QN(n297) );
  OR3X1_HVT U108 ( .A1(n29), .A2(n28), .A3(rf_push_pulse), .Y(n280) );
  AO21X1_HVT U179 ( .A1(n126), .A2(rf_data_in[2]), .A3(n71), .Y(n168) );
  INVX2_HVT U205 ( .A(wb_rst_i), .Y(n313) );
  NAND2X0_HVT U210 ( .A1(n227), .A2(n1), .Y(n355) );
  OR3X1_HVT U245 ( .A1(rf_count[0]), .A2(rf_count[1]), .A3(rf_count[3]), .Y(
        n357) );
  NOR2X0_HVT U257 ( .A1(n294), .A2(n118), .Y(n358) );
  OR2X1_HVT U60 ( .A1(n290), .A2(rstate[3]), .Y(n224) );
  AND2X1_HVT U259 ( .A1(n227), .A2(n291), .Y(n230) );
  NAND2X0_RVT U54 ( .A1(n290), .A2(n142), .Y(n246) );
  NOR4X1_RVT U51 ( .A1(rcounter16[3]), .A2(n282), .A3(n285), .A4(n293), .Y(n72) );
  NOR4X1_RVT U7 ( .A1(rcounter16[2]), .A2(rcounter16[1]), .A3(rcounter16[3]), 
        .A4(rcounter16[0]), .Y(n242) );
  NAND2X0_HVT U164 ( .A1(n327), .A2(rstate[3]), .Y(n343) );
  OR2X1_RVT U18 ( .A1(n291), .A2(n224), .Y(n111) );
  INVX0_RVT U187 ( .A(n205), .Y(n209) );
  NOR3X0_HVT U159 ( .A1(n70), .A2(n123), .A3(n126), .Y(n71) );
  OA21X1_HVT U266 ( .A1(rcounter16[2]), .A2(n238), .A3(rcounter16[3]), .Y(n239) );
  INVX0_HVT U170 ( .A(counter_b[0]), .Y(n206) );
  NOR2X0_HVT U15 ( .A1(n92), .A2(n118), .Y(n69) );
  DFFASX2_HVT counter_b_reg_4_ ( .D(n198), .CLK(clk), .SETB(n311), .Q(
        counter_b[4]), .QN(n304) );
  DFFASX1_RVT counter_t_reg_0_ ( .D(n159), .CLK(clk), .SETB(n311), .Q(
        counter_t[0]), .QN(n300) );
  DFFASX1_RVT counter_t_reg_5_ ( .D(n154), .CLK(clk), .SETB(n311), .Q(
        counter_t[5]), .QN(n299) );
  OR3X1_RVT U3 ( .A1(n270), .A2(n269), .A3(n268), .Y(n155) );
  DFFASX1_RVT counter_b_reg_7_ ( .D(n201), .CLK(clk), .SETB(n311), .Q(
        counter_b[7]), .QN(n295) );
  INVX1_RVT U24 ( .A(n148), .Y(n327) );
  NOR3X0_RVT U41 ( .A1(n93), .A2(n122), .A3(n139), .Y(n94) );
  OR2X1_RVT U75 ( .A1(rstate[1]), .A2(n224), .Y(n247) );
  NOR2X1_RVT U79 ( .A1(n304), .A2(n212), .Y(n213) );
  NOR2X0_RVT U95 ( .A1(counter_t[7]), .A2(n33), .Y(n274) );
  OR2X1_RVT U105 ( .A1(n59), .A2(n54), .Y(n254) );
  NOR2X1_RVT U110 ( .A1(n293), .A2(n234), .Y(n235) );
  NOR2X1_RVT U118 ( .A1(n31), .A2(n277), .Y(n270) );
  OR2X1_RVT U216 ( .A1(n283), .A2(n246), .Y(n84) );
  OR4X1_RVT U239 ( .A1(n283), .A2(n354), .A3(n2), .A4(n246), .Y(n3) );
  AND4X1_RVT U244 ( .A1(n249), .A2(n248), .A3(n247), .A4(n246), .Y(n253) );
  uart_rfifo_fifo_width11 fifo_rx ( .clk(clk), .wb_rst_i(wb_rst_i), .data_in(
        rf_data_in), .data_out(rf_data_out), .push(rf_push_pulse), .overrun(
        rf_overrun), .count(rf_count), .error_bit(rf_error_bit), .fifo_reset(
        rx_reset), .reset_status(lsr_mask), .pop_BAR(rf_pop_BAR) );
  XOR3X2_RVT U246 ( .A1(lcr[3]), .A2(lcr[2]), .A3(lcr[0]), .Y(n265) );
  OAI22X1_HVT U272 ( .A1(n253), .A2(n252), .A3(n285), .A4(n379), .Y(n173) );
  NOR2X0_HVT U264 ( .A1(n236), .A2(n250), .Y(n241) );
  OA21X1_HVT U260 ( .A1(n230), .A2(n229), .A3(n228), .Y(n231) );
  AOI21X1_HVT U249 ( .A1(n211), .A2(n210), .A3(n209), .Y(n214) );
  NOR2X1_RVT U233 ( .A1(n291), .A2(n340), .Y(n135) );
  AOI21X1_HVT U189 ( .A1(n205), .A2(n96), .A3(srx_pad_i), .Y(n216) );
  OR2X1_HVT U174 ( .A1(srx_pad_i), .A2(n366), .Y(n195) );
  AO21X1_HVT U169 ( .A1(n226), .A2(rstate[3]), .A3(n344), .Y(n184) );
  NOR2X0_HVT U145 ( .A1(n55), .A2(srx_pad_i), .Y(n51) );
  AOI22X1_HVT U90 ( .A1(srx_pad_i), .A2(n45), .A3(n18), .A4(n20), .Y(n19) );
  OR2X1_HVT U86 ( .A1(srx_pad_i), .A2(n18), .Y(n212) );
  MUX21X1_HVT U56 ( .A1(srx_pad_i), .A2(rparity), .S0(n3), .Y(n194) );
  MUX21X1_HVT U27 ( .A1(srx_pad_i), .A2(rshift[7]), .S0(lcr[0]), .Y(n22) );
  AO22X1_RVT U14 ( .A1(n74), .A2(rstate[2]), .A3(n242), .A4(n73), .Y(n81) );
  OR2X1_RVT U17 ( .A1(rframing_error), .A2(n130), .Y(n351) );
  NOR2X1_RVT U46 ( .A1(n277), .A2(n44), .Y(n264) );
  OAI22X1_RVT U63 ( .A1(n271), .A2(n103), .A3(counter_t[8]), .A4(n34), .Y(n35)
         );
  NOR3X0_RVT U81 ( .A1(n52), .A2(n51), .A3(n254), .Y(n53) );
  OAI22X1_RVT U120 ( .A1(n310), .A2(n255), .A3(n286), .A4(n254), .Y(n180) );
  AOI21X1_HVT U166 ( .A1(n247), .A2(n84), .A3(n226), .Y(n344) );
  NOR2X1_RVT U168 ( .A1(counter_t[0]), .A2(n277), .Y(n345) );
  AND2X1_RVT U191 ( .A1(n205), .A2(n92), .Y(n335) );
  NAND2X0_RVT U153 ( .A1(n66), .A2(n65), .Y(n189) );
  AOI21X1_RVT U131 ( .A1(n41), .A2(lcr[0]), .A3(n56), .Y(n43) );
  AO21X1_RVT U130 ( .A1(rbit_counter[1]), .A2(n107), .A3(n40), .Y(n188) );
  AND3X1_RVT U25 ( .A1(n144), .A2(n72), .A3(n21), .Y(n41) );
  OR2X1_RVT U55 ( .A1(rstate[1]), .A2(rstate[0]), .Y(n74) );
  OAI22X1_RVT U83 ( .A1(n103), .A2(n220), .A3(counter_b[6]), .A4(n217), .Y(
        n104) );
  OR2X1_RVT U85 ( .A1(n206), .A2(n205), .Y(n207) );
  AO21X1_RVT U91 ( .A1(n266), .A2(counter_t[5]), .A3(n48), .Y(n154) );
  AO22X1_RVT U100 ( .A1(n103), .A2(n280), .A3(n89), .A4(counter_t[9]), .Y(n158) );
  OAI21X1_RVT U47 ( .A1(n56), .A2(n55), .A3(n255), .Y(n61) );
  INVX2_RVT U37 ( .A(wb_rst_i), .Y(n311) );
  NOR2X0_RVT U44 ( .A1(rstate[2]), .A2(n248), .Y(n144) );
  NOR2X1_RVT U45 ( .A1(rstate[0]), .A2(n327), .Y(n92) );
  OAI21X1_RVT U48 ( .A1(n130), .A2(n129), .A3(n244), .Y(n138) );
  OAI21X1_RVT U49 ( .A1(n13), .A2(n308), .A3(n12), .Y(n175) );
  AND2X1_RVT U53 ( .A1(rstate[0]), .A2(n294), .Y(n142) );
  NOR3X0_RVT U61 ( .A1(n49), .A2(n74), .A3(n224), .Y(n4) );
  MUX21X1_RVT U62 ( .A1(rframing_error), .A2(n220), .S0(n4), .Y(n171) );
  OR2X1_RVT U76 ( .A1(n11), .A2(n10), .Y(n12) );
  OR2X1_RVT U80 ( .A1(counter_b[6]), .A2(counter_b[7]), .Y(n14) );
  OR2X1_RVT U92 ( .A1(n283), .A2(rstate[0]), .Y(n77) );
  OR2X1_RVT U93 ( .A1(n224), .A2(n77), .Y(n146) );
  NOR2X1_RVT U96 ( .A1(rstate[3]), .A2(n77), .Y(n73) );
  NAND3X0_RVT U102 ( .A1(n144), .A2(n22), .A3(n24), .Y(n23) );
  OR2X1_RVT U111 ( .A1(n280), .A2(n270), .Y(n273) );
  AO21X1_RVT U121 ( .A1(n88), .A2(counter_t[8]), .A3(n35), .Y(n157) );
  NOR3X0_RVT U124 ( .A1(n224), .A2(n283), .A3(n291), .Y(n139) );
  OAI22X1_RVT U129 ( .A1(rbit_counter[1]), .A2(n65), .A3(n62), .A4(n39), .Y(
        n40) );
  NOR3X0_RVT U133 ( .A1(n220), .A2(n59), .A3(n43), .Y(n42) );
  AO21X1_RVT U134 ( .A1(n43), .A2(rshift[7]), .A3(n42), .Y(n176) );
  AO21X1_RVT U148 ( .A1(n54), .A2(rshift[4]), .A3(n53), .Y(n179) );
  AO21X1_RVT U151 ( .A1(n61), .A2(rshift[5]), .A3(n60), .Y(n178) );
  OA21X1_RVT U160 ( .A1(rstate[2]), .A2(n142), .A3(n72), .Y(n82) );
  NAND2X0_RVT U171 ( .A1(n205), .A2(n206), .Y(n208) );
  OR2X1_RVT U173 ( .A1(n86), .A2(n212), .Y(n196) );
  AO21X1_RVT U175 ( .A1(counter_t[8]), .A2(n271), .A3(n88), .Y(n89) );
  AND2X1_RVT U180 ( .A1(n92), .A2(n294), .Y(n93) );
  AOI21X1_RVT U190 ( .A1(counter_b[5]), .A2(n205), .A3(n216), .Y(n101) );
  OAI22X1_RVT U192 ( .A1(n218), .A2(n220), .A3(n295), .A4(n97), .Y(n201) );
  NOR2X1_RVT U197 ( .A1(n297), .A2(n337), .Y(n99) );
  OR2X1_RVT U199 ( .A1(n260), .A2(n100), .Y(n151) );
  NOR2X1_RVT U200 ( .A1(n306), .A2(n101), .Y(n105) );
  OR2X1_RVT U203 ( .A1(n105), .A2(n104), .Y(n200) );
  AO221X1_RVT U204 ( .A1(rbit_counter[2]), .A2(rbit_counter[1]), .A3(
        rbit_counter[2]), .A4(n107), .A5(n106), .Y(n187) );
  OR2X1_RVT U234 ( .A1(n136), .A2(n135), .Y(n137) );
  OR2X1_RVT U240 ( .A1(n145), .A2(n144), .Y(n229) );
  AO21X1_RVT U241 ( .A1(rstate[3]), .A2(n148), .A3(n147), .Y(n149) );
  AND2X1_RVT U251 ( .A1(n216), .A2(counter_b[5]), .Y(n223) );
  OR3X1_RVT U255 ( .A1(n223), .A2(n222), .A3(n221), .Y(n199) );
  OR2X1_RVT U268 ( .A1(n327), .A2(n242), .Y(n245) );
  OAI22X1_RVT U274 ( .A1(n288), .A2(n255), .A3(n310), .A4(n254), .Y(n181) );
  OAI22X1_RVT U276 ( .A1(n287), .A2(n255), .A3(n309), .A4(n254), .Y(n183) );
  NOR2X1_RVT U278 ( .A1(n301), .A2(n345), .Y(n258) );
  NOR2X0_RVT U284 ( .A1(n277), .A2(n299), .Y(n267) );
  OA21X1_RVT U285 ( .A1(n267), .A2(n266), .A3(counter_t[6]), .Y(n268) );
  NOR2X0_RVT U287 ( .A1(n273), .A2(n307), .Y(n275) );
  NOR2X0_HVT U289 ( .A1(n300), .A2(n278), .Y(n281) );
  INVX0_RVT U252 ( .A(n217), .Y(n222) );
  NOR2X0_RVT U136 ( .A1(n280), .A2(n264), .Y(n266) );
  INVX2_RVT U64 ( .A(wb_rst_i), .Y(n312) );
  OAI21X1_RVT U29 ( .A1(n277), .A2(n307), .A3(n273), .Y(n88) );
  OA22X1_RVT U13 ( .A1(n64), .A2(n284), .A3(n63), .A4(n62), .Y(n66) );
  NOR3X0_RVT U10 ( .A1(n59), .A2(n58), .A3(n61), .Y(n60) );
  OR3X1_RVT U6 ( .A1(n276), .A2(n275), .A3(n274), .Y(n156) );
  NAND3X0_RVT U126 ( .A1(n232), .A2(enable), .A3(n37), .Y(n107) );
  OAI21X1_RVT U9 ( .A1(n20), .A2(n212), .A3(n19), .Y(n197) );
  OR3X1_RVT U186 ( .A1(n354), .A2(n280), .A3(n328), .Y(n277) );
  AND2X1_RVT U202 ( .A1(n345), .A2(n301), .Y(n337) );
  AND2X1_RVT U291 ( .A1(n297), .A2(n337), .Y(n260) );
  NOR2X1_RVT U178 ( .A1(rstate[2]), .A2(rstate[1]), .Y(n148) );
  OR3X1_RVT U161 ( .A1(n264), .A2(n280), .A3(n263), .Y(n321) );
  OAI22X1_RVT U157 ( .A1(n309), .A2(n255), .A3(n288), .A4(n254), .Y(n182) );
  AO22X1_RVT U156 ( .A1(n117), .A2(n116), .A3(n115), .A4(rparity_error), .Y(
        n174) );
  OA21X1_RVT U109 ( .A1(n306), .A2(n209), .A3(n101), .Y(n97) );
  OR2X1_RVT U66 ( .A1(rstate[0]), .A2(rstate[2]), .Y(n130) );
  OR2X1_RVT U65 ( .A1(rstate[1]), .A2(n111), .Y(n131) );
  OR2X1_RVT U26 ( .A1(n75), .A2(n294), .Y(n79) );
  OR3X1_RVT U33 ( .A1(n280), .A2(n261), .A3(n262), .Y(n152) );
  INVX0_RVT U117 ( .A(n270), .Y(n33) );
  INVX0_RVT U119 ( .A(n274), .Y(n34) );
  INVX0_RVT U279 ( .A(n260), .Y(n259) );
  NAND2X0_RVT U58 ( .A1(enable), .A2(n72), .Y(n49) );
  OR2X1_RVT U101 ( .A1(n56), .A2(n41), .Y(n24) );
  AO21X1_RVT U235 ( .A1(n228), .A2(n138), .A3(n137), .Y(n185) );
  AO21X1_RVT U243 ( .A1(n228), .A2(n204), .A3(n203), .Y(n190) );
  INVX1_LVT U273 ( .A(enable), .Y(n354) );
  INVX0_RVT U219 ( .A(n238), .Y(n237) );
  AOI21X1_HVT U275 ( .A1(n228), .A2(n355), .A3(n283), .Y(n233) );
  OAI21X1_RVT U182 ( .A1(n24), .A2(n305), .A3(n23), .Y(n177) );
  AND2X1_RVT U165 ( .A1(n280), .A2(n265), .Y(n269) );
  NOR2X0_HVT U149 ( .A1(n250), .A2(n94), .Y(n240) );
  OAI22X1_RVT U139 ( .A1(n271), .A2(n47), .A3(counter_t[5]), .A4(n46), .Y(n48)
         );
  AND2X1_RVT U103 ( .A1(n205), .A2(n16), .Y(n18) );
  AO21X1_RVT U78 ( .A1(n245), .A2(n244), .A3(n294), .Y(n249) );
  NOR3X0_HVT U35 ( .A1(srx_pad_i), .A2(n143), .A3(n327), .Y(n145) );
  NOR2X0_HVT U31 ( .A1(srx_pad_i), .A2(lcr[1]), .Y(n57) );
  NOR2X0_HVT U162 ( .A1(n77), .A2(n76), .Y(n78) );
  INVX0_HVT U52 ( .A(n72), .Y(n2) );
  DFFASRX1_HVT rf_data_in_reg_8_ ( .D(n162), .CLK(clk), .RSTB(n313), .SETB(
        1'b1), .Q(rf_data_in[8]) );
  DFFASX1_RVT counter_t_reg_1_ ( .D(n150), .CLK(clk), .SETB(n312), .Q(
        counter_t[1]), .QN(n301) );
  OR2X1_RVT U32 ( .A1(n79), .A2(n78), .Y(n360) );
  OR3X1_HVT U68 ( .A1(n36), .A2(n283), .A3(n224), .Y(n38) );
  INVX0_RVT U112 ( .A(n280), .Y(n271) );
  NAND3X0_RVT U128 ( .A1(n139), .A2(n64), .A3(n284), .Y(n65) );
  OR3X1_HVT U82 ( .A1(n202), .A2(n229), .A3(n149), .Y(n204) );
  XOR3X1_RVT U40 ( .A1(n9), .A2(n8), .A3(n7), .Y(n10) );
  OR3X1_HVT U30 ( .A1(n215), .A2(n214), .A3(n213), .Y(n198) );
  OR3X1_HVT U146 ( .A1(n280), .A2(n258), .A3(n337), .Y(n150) );
  OR3X1_HVT U4 ( .A1(n233), .A2(n232), .A3(n231), .Y(n365) );
  NOR2X1_RVT U5 ( .A1(n127), .A2(n354), .Y(n205) );
  AND2X1_RVT U8 ( .A1(rf_push), .A2(n289), .Y(rf_push_pulse) );
  OR3X1_RVT U12 ( .A1(counter_b[4]), .A2(counter_b[3]), .A3(n15), .Y(n211) );
  NOR3X0_HVT U16 ( .A1(rstate[1]), .A2(n242), .A3(n291), .Y(n75) );
  INVX0_HVT U20 ( .A(n76), .Y(n373) );
  OR2X1_HVT U21 ( .A1(n354), .A2(n294), .Y(n5) );
  NOR2X0_HVT U23 ( .A1(n242), .A2(n146), .Y(n147) );
  OR2X1_HVT U28 ( .A1(counter_b[5]), .A2(n211), .Y(n102) );
  INVX0_HVT U39 ( .A(n277), .Y(n278) );
  AND2X1_HVT U42 ( .A1(n378), .A2(n368), .Y(n377) );
  AND2X1_HVT U50 ( .A1(n242), .A2(n106), .Y(n56) );
  NOR2X0_HVT U59 ( .A1(n294), .A2(n128), .Y(n129) );
  OR2X1_HVT U154 ( .A1(n99), .A2(n280), .Y(n100) );
  NOR2X0_HVT U155 ( .A1(n290), .A2(n228), .Y(n203) );
  AND2X1_HVT U163 ( .A1(n259), .A2(counter_t[3]), .Y(n261) );
  OR3X1_HVT U167 ( .A1(n281), .A2(n280), .A3(n345), .Y(n159) );
  OR2X1_HVT U176 ( .A1(n376), .A2(n374), .Y(n172) );
  OR3X1_HVT U181 ( .A1(n237), .A2(n235), .A3(n240), .Y(n193) );
  XNOR2X1_RVT U184 ( .A1(n237), .A2(n282), .Y(n364) );
  INVX0_HVT U185 ( .A(n379), .Y(n250) );
  XNOR2X1_HVT U194 ( .A1(counter_b[1]), .A2(n208), .Y(n366) );
  OR2X1_HVT U198 ( .A1(n148), .A2(n118), .Y(n368) );
  OR2X1_HVT U217 ( .A1(n82), .A2(n81), .Y(n369) );
  OR3X1_HVT U218 ( .A1(n241), .A2(n240), .A3(n239), .Y(n370) );
  NOR3X0_HVT U242 ( .A1(rstate[2]), .A2(n294), .A3(n77), .Y(n122) );
  NOR2X0_HVT U250 ( .A1(n351), .A2(n127), .Y(n371) );
  OR2X1_LVT U262 ( .A1(n124), .A2(srx_pad_i), .Y(n127) );
  NOR2X0_LVT U265 ( .A1(n102), .A2(n14), .Y(n124) );
  OR2X1_RVT U267 ( .A1(rcounter16[1]), .A2(n252), .Y(n238) );
  OR2X1_RVT U269 ( .A1(rcounter16[0]), .A2(n250), .Y(n252) );
  NOR2X0_LVT U270 ( .A1(n123), .A2(n373), .Y(n118) );
  OR2X1_LVT U271 ( .A1(n292), .A2(n127), .Y(n76) );
  NOR2X1_RVT U277 ( .A1(n123), .A2(n375), .Y(n374) );
  INVX0_HVT U280 ( .A(n377), .Y(n375) );
  NOR2X0_RVT U281 ( .A1(n367), .A2(n377), .Y(n376) );
  INVX0_HVT U282 ( .A(n120), .Y(n378) );
  OA21X1_RVT U283 ( .A1(n343), .A2(n371), .A3(enable), .Y(n379) );
  OR2X1_LVT U288 ( .A1(n335), .A2(n340), .Y(n228) );
  OA21X1_LVT U292 ( .A1(n380), .A2(n369), .A3(enable), .Y(n340) );
  INVX0_LVT U293 ( .A(n360), .Y(n380) );
  OR2X1_LVT U294 ( .A1(n69), .A2(n120), .Y(n126) );
  OR2X1_LVT U295 ( .A1(n354), .A2(n358), .Y(n120) );
  OR3X1_RVT U296 ( .A1(counter_b[1]), .A2(counter_b[2]), .A3(counter_b[0]), 
        .Y(n15) );
endmodule


module uart_regs_clkgate ( clk, wb_rst_i, wb_addr_i, wb_dat_i, wb_dat_o, 
        wb_we_i, wb_re_i, modem_inputs, stx_pad_o, srx_pad_i, ier, iir, fcr, 
        mcr, lcr, msr, lsr, rf_count, tf_count, tstate, rstate, rts_pad_o, 
        dtr_pad_o, int_o );
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
  input clk, wb_rst_i, wb_we_i, wb_re_i, srx_pad_i;
  output stx_pad_o, rts_pad_o, dtr_pad_o, int_o;
  wire   n447, dcd_c, ri_c, dsr_c, cts_c, tf_push, enable, serial_out,
         tx_reset, lsr_mask, srx_pad, serial_in, rf_pop, rf_error_bit,
         rf_overrun, rx_reset, rf_push_pulse, msi_reset, N129, N130, start_dlc,
         N138, N152, N153, N154, N155, lsr0, lsr6, lsr7, N159, lsr1_d, N163,
         lsr2_d, N167, lsr3_d, N171, lsr4_d, N175, lsr5_d, N178, lsr6_d, N180,
         lsr7_d, N184, N221, N222, N223, N224, N225, N226, N227, N228, N229,
         N230, N232, N236, N237, rls_int, rda_int, thre_int, ms_int, ti_int,
         rls_int_pnd, N355, rda_int_pnd, N364, thre_int_pnd, N371, ms_int_pnd,
         N377, ti_int_pnd, N383, N396, N409, N410, N411, N412, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n198, n199, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n227, n228, n229, n230, n4, n7, n9, n11, n12,
         n13, n14, n15, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n67, n68, n69, n70, n71, n72, n73, n74,
         n76, n79, n80, n81, n82, n84, n85, n86, n93, n94, n95, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n135, n136, n138, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n164, n165, n166, n167, n168, n169, n170,
         n171, n226, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n262,
         n263, n264, n265, n267, n268, n270, n273, n274, n276, n277, n278,
         n281, n282, n286, n288, n290, n292, n293, n295, n300, n301, n302,
         n303, n304, n307, n308, n309, n312, n313, n314, n315, n316, n318,
         n319, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n348, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n449, n456, n460, n461, n463, n465, n468, n472, n475, n479, n483,
         n485, n486, n487, n492, n497, n502, n516, n517, n521, n523, n528,
         n529, n530, n535, n539, n547, n569, n570, n572, n573, n574, n575,
         n579, n580, n587, n589, n591, n593, n594, n595, n596, n607, n609,
         n610, n617, n619, n620, n621, n622, n624, n625, n626, n630, n631,
         n632, n633, n639, n640, n643, n644, n646, n647, n652, n654, n656,
         n657, n658, n659, n666, n667, n668, n669, n670, n671, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3;
  wire   [9:0] counter_t;
  wire   [10:0] rf_data_out;
  wire   [15:0] dl;
  wire   [7:1] scratch;
  wire   [3:0] delayed_modem_signals;
  wire   [15:0] dlc;
  wire   [7:0] block_cnt;
  assign rts_pad_o = mcr[1];
  assign dtr_pad_o = mcr[0];

  DFFARX1_HVT lcr_reg_7_ ( .D(n194), .CLK(clk), .RSTB(n443), .Q(lcr[7]), .QN(
        n372) );
  DFFARX1_HVT lcr_reg_6_ ( .D(n193), .CLK(clk), .RSTB(n437), .Q(lcr[6]), .QN(
        n377) );
  DFFARX1_HVT lcr_reg_5_ ( .D(n192), .CLK(clk), .RSTB(n438), .Q(lcr[5]), .QN(
        n400) );
  DFFARX1_HVT lcr_reg_4_ ( .D(n191), .CLK(clk), .RSTB(n437), .Q(lcr[4]), .QN(
        n376) );
  DFFARX1_HVT lcr_reg_3_ ( .D(n190), .CLK(clk), .RSTB(n437), .Q(lcr[3]), .QN(
        n397) );
  DFFARX1_HVT mcr_reg_4_ ( .D(n188), .CLK(clk), .RSTB(n437), .Q(mcr[4]), .QN(
        n572) );
  DFFARX1_HVT mcr_reg_3_ ( .D(n187), .CLK(clk), .RSTB(n439), .Q(mcr[3]) );
  DFFARX1_HVT mcr_reg_2_ ( .D(n186), .CLK(clk), .RSTB(n439), .Q(mcr[2]) );
  DFFARX1_HVT scratch_reg_7_ ( .D(n183), .CLK(clk), .RSTB(n9), .Q(scratch[7]), 
        .QN(n432) );
  DFFARX1_HVT scratch_reg_6_ ( .D(n182), .CLK(clk), .RSTB(n9), .Q(scratch[6]), 
        .QN(n431) );
  DFFARX1_HVT scratch_reg_5_ ( .D(n181), .CLK(clk), .RSTB(n9), .Q(scratch[5]), 
        .QN(n620) );
  DFFARX1_HVT scratch_reg_4_ ( .D(n180), .CLK(clk), .RSTB(n9), .Q(scratch[4]), 
        .QN(n379) );
  DFFARX1_HVT scratch_reg_3_ ( .D(n179), .CLK(clk), .RSTB(n9), .Q(scratch[3]), 
        .QN(n427) );
  DFFARX1_HVT scratch_reg_2_ ( .D(n178), .CLK(clk), .RSTB(n9), .Q(scratch[2]), 
        .QN(n426) );
  DFFARX1_HVT scratch_reg_1_ ( .D(n177), .CLK(clk), .RSTB(n9), .Q(scratch[1]), 
        .QN(n570) );
  DFFARX1_HVT scratch_reg_0_ ( .D(n176), .CLK(clk), .RSTB(n9), .QN(n411) );
  DFFARX1_HVT lsr_mask_d_reg ( .D(n442), .CLK(clk), .RSTB(n436), .QN(n399) );
  DFFARX1_HVT rf_pop_reg ( .D(n224), .CLK(clk), .RSTB(n437), .Q(rf_pop), .QN(
        n444) );
  DFFARX1_HVT dl_reg_15_ ( .D(n223), .CLK(clk), .RSTB(n443), .Q(dl[15]), .QN(
        n408) );
  DFFARX1_HVT dl_reg_14_ ( .D(n222), .CLK(clk), .RSTB(n436), .Q(dl[14]), .QN(
        n396) );
  DFFARX1_HVT dl_reg_13_ ( .D(n221), .CLK(clk), .RSTB(n436), .Q(dl[13]), .QN(
        n395) );
  DFFARX1_HVT dl_reg_12_ ( .D(n220), .CLK(clk), .RSTB(n436), .Q(dl[12]), .QN(
        n394) );
  DFFARX1_HVT dl_reg_11_ ( .D(n219), .CLK(clk), .RSTB(n9), .Q(n463), .QN(n393)
         );
  DFFARX1_HVT dl_reg_10_ ( .D(n218), .CLK(clk), .RSTB(n9), .Q(n465), .QN(n391)
         );
  DFFARX1_HVT dl_reg_9_ ( .D(n217), .CLK(clk), .RSTB(n9), .Q(dl[9]), .QN(n389)
         );
  DFFARX1_HVT dl_reg_8_ ( .D(n216), .CLK(clk), .RSTB(n9), .Q(dl[8]), .QN(n388)
         );
  DFFARX1_HVT ier_reg_3_ ( .D(n215), .CLK(clk), .RSTB(n438), .Q(ier[3]), .QN(
        n425) );
  DFFARX1_HVT ier_reg_2_ ( .D(n214), .CLK(clk), .RSTB(n438), .Q(ier[2]), .QN(
        n424) );
  DFFARX1_HVT ier_reg_1_ ( .D(n213), .CLK(clk), .RSTB(n437), .Q(ier[1]) );
  DFFARX1_HVT ier_reg_0_ ( .D(n212), .CLK(clk), .RSTB(n443), .Q(ier[0]), .QN(
        n390) );
  DFFARX1_HVT rx_reset_reg ( .D(N129), .CLK(clk), .RSTB(n443), .Q(rx_reset), 
        .QN(n410) );
  DFFARX1_HVT tx_reset_reg ( .D(N130), .CLK(clk), .RSTB(n443), .Q(tx_reset) );
  DFFARX1_HVT dl_reg_7_ ( .D(n211), .CLK(clk), .RSTB(n9), .Q(dl[7]), .QN(n371)
         );
  DFFARX1_HVT dl_reg_6_ ( .D(n210), .CLK(clk), .RSTB(n9), .Q(dl[6]), .QN(n370)
         );
  DFFARX1_HVT dl_reg_5_ ( .D(n209), .CLK(clk), .RSTB(n437), .Q(dl[5]), .QN(
        n381) );
  DFFARX1_HVT dl_reg_4_ ( .D(n208), .CLK(clk), .RSTB(n9), .Q(dl[4]), .QN(n383)
         );
  DFFARX1_HVT dl_reg_3_ ( .D(n207), .CLK(clk), .RSTB(n9), .Q(dl[3]), .QN(n368)
         );
  DFFARX1_HVT dl_reg_2_ ( .D(n206), .CLK(clk), .RSTB(n9), .Q(dl[2]), .QN(n367)
         );
  DFFARX1_HVT dl_reg_1_ ( .D(n205), .CLK(clk), .RSTB(n9), .Q(dl[1]), .QN(n380)
         );
  DFFARX1_HVT dl_reg_0_ ( .D(n204), .CLK(clk), .RSTB(n437), .Q(dl[0]), .QN(
        n366) );
  DFFARX1_HVT delayed_modem_signals_reg_3_ ( .D(n230), .CLK(clk), .RSTB(n443), 
        .Q(delayed_modem_signals[3]), .QN(n414) );
  DFFARX1_HVT delayed_modem_signals_reg_2_ ( .D(n229), .CLK(clk), .RSTB(n436), 
        .Q(delayed_modem_signals[2]), .QN(n413) );
  DFFARX1_HVT delayed_modem_signals_reg_1_ ( .D(n228), .CLK(clk), .RSTB(n9), 
        .Q(delayed_modem_signals[1]), .QN(n412) );
  DFFARX1_HVT delayed_modem_signals_reg_0_ ( .D(n227), .CLK(clk), .RSTB(n9), 
        .Q(delayed_modem_signals[0]), .QN(n415) );
  DFFARX1_HVT msr_reg_7_ ( .D(dcd_c), .CLK(clk), .RSTB(n439), .Q(msr[7]), .QN(
        n434) );
  DFFARX1_HVT msr_reg_6_ ( .D(ri_c), .CLK(clk), .RSTB(n439), .Q(msr[6]), .QN(
        n433) );
  DFFARX1_HVT msr_reg_4_ ( .D(cts_c), .CLK(clk), .RSTB(n439), .Q(msr[4]), .QN(
        n430) );
  DFFARX1_HVT msr_reg_3_ ( .D(N155), .CLK(clk), .RSTB(n438), .Q(msr[3]), .QN(
        n418) );
  DFFARX1_HVT msr_reg_2_ ( .D(N154), .CLK(clk), .RSTB(n443), .Q(msr[2]), .QN(
        n419) );
  DFFARX1_HVT msr_reg_1_ ( .D(N153), .CLK(clk), .RSTB(n443), .Q(msr[1]), .QN(
        n420) );
  DFFARX1_HVT msr_reg_0_ ( .D(N152), .CLK(clk), .RSTB(n438), .Q(msr[0]), .QN(
        n421) );
  DFFARX1_HVT dlc_reg_15_ ( .D(N236), .CLK(clk), .RSTB(n437), .Q(dlc[15]), 
        .QN(n406) );
  DFFARX1_HVT dlc_reg_14_ ( .D(n622), .CLK(clk), .RSTB(n436), .Q(dlc[14]) );
  DFFARX1_HVT dlc_reg_13_ ( .D(n579), .CLK(clk), .RSTB(n436), .Q(dlc[13]) );
  DFFARX1_HVT dlc_reg_12_ ( .D(n483), .CLK(clk), .RSTB(n436), .Q(dlc[12]) );
  DFFARX1_HVT dlc_reg_11_ ( .D(N232), .CLK(clk), .RSTB(n436), .Q(dlc[11]) );
  DFFARX1_HVT dlc_reg_10_ ( .D(n624), .CLK(clk), .RSTB(n436), .Q(dlc[10]) );
  DFFARX1_HVT dlc_reg_9_ ( .D(N230), .CLK(clk), .RSTB(n436), .Q(dlc[9]) );
  DFFARX1_HVT dlc_reg_8_ ( .D(N229), .CLK(clk), .RSTB(n9), .Q(dlc[8]) );
  DFFARX1_HVT dlc_reg_7_ ( .D(N228), .CLK(clk), .RSTB(n436), .Q(dlc[7]) );
  DFFARX1_HVT dlc_reg_6_ ( .D(N227), .CLK(clk), .RSTB(n436), .Q(dlc[6]) );
  DFFARX1_HVT dlc_reg_5_ ( .D(N226), .CLK(clk), .RSTB(n9), .Q(dlc[5]) );
  DFFARX1_HVT dlc_reg_4_ ( .D(N225), .CLK(clk), .RSTB(n9), .Q(dlc[4]) );
  DFFARX1_HVT dlc_reg_3_ ( .D(N224), .CLK(clk), .RSTB(n437), .Q(dlc[3]) );
  DFFARX1_HVT dlc_reg_2_ ( .D(N223), .CLK(clk), .RSTB(n437), .Q(dlc[2]) );
  DFFARX1_HVT dlc_reg_1_ ( .D(N222), .CLK(clk), .RSTB(n437), .Q(dlc[1]) );
  DFFARX1_HVT dlc_reg_0_ ( .D(N221), .CLK(clk), .RSTB(n437), .Q(dlc[0]) );
  DFFARX1_HVT enable_reg ( .D(N237), .CLK(clk), .RSTB(n437), .Q(enable), .QN(
        n392) );
  DFFARX1_HVT lsr1r_reg ( .D(N163), .CLK(clk), .RSTB(n438), .Q(lsr[1]), .QN(
        n523) );
  DFFARX1_HVT lsr7_d_reg ( .D(lsr7), .CLK(clk), .RSTB(n443), .Q(lsr7_d) );
  DFFARX1_HVT lsr7r_reg ( .D(N184), .CLK(clk), .RSTB(n439), .Q(lsr[7]), .QN(
        n429) );
  DFFARX1_HVT lsr3_d_reg ( .D(rf_data_out[0]), .CLK(clk), .RSTB(n438), .Q(
        lsr3_d) );
  DFFARX1_HVT lsr3r_reg ( .D(N171), .CLK(clk), .RSTB(n438), .Q(lsr[3]), .QN(
        n422) );
  DFFARX1_HVT lsr2_d_reg ( .D(rf_data_out[1]), .CLK(clk), .RSTB(n437), .Q(
        lsr2_d) );
  DFFARX1_HVT lsr2r_reg ( .D(N167), .CLK(clk), .RSTB(n438), .Q(lsr[2]), .QN(
        n423) );
  DFFARX1_HVT lsr4_d_reg ( .D(rf_data_out[2]), .CLK(clk), .RSTB(n9), .Q(lsr4_d) );
  DFFARX1_HVT lsr4r_reg ( .D(N175), .CLK(clk), .RSTB(n438), .Q(lsr[4]), .QN(
        n428) );
  DFFARX1_HVT lsr0_d_reg ( .D(lsr0), .CLK(clk), .RSTB(n436), .QN(n416) );
  DFFARX1_HVT lsr0r_reg ( .D(N159), .CLK(clk), .RSTB(n439), .Q(lsr[0]) );
  DFFARX1_HVT block_cnt_reg_0_ ( .D(n203), .CLK(clk), .RSTB(n438), .Q(
        block_cnt[0]) );
  DFFARX1_HVT block_cnt_reg_7_ ( .D(n202), .CLK(clk), .RSTB(n439), .Q(
        block_cnt[7]), .QN(n409) );
  DFFARX1_HVT block_cnt_reg_6_ ( .D(n456), .CLK(clk), .RSTB(n439), .Q(
        block_cnt[6]), .QN(n404) );
  DFFARX1_HVT block_cnt_reg_5_ ( .D(n521), .CLK(clk), .RSTB(n439), .Q(
        block_cnt[5]), .QN(n460) );
  DFFARX1_HVT block_cnt_reg_4_ ( .D(n199), .CLK(clk), .RSTB(n438), .Q(
        block_cnt[4]), .QN(n486) );
  DFFARX1_HVT block_cnt_reg_3_ ( .D(n198), .CLK(clk), .RSTB(n438), .Q(
        block_cnt[3]), .QN(n407) );
  DFFARX1_HVT block_cnt_reg_2_ ( .D(n617), .CLK(clk), .RSTB(n438), .Q(
        block_cnt[2]) );
  DFFARX1_HVT block_cnt_reg_1_ ( .D(n195), .CLK(clk), .RSTB(n438), .Q(
        block_cnt[1]), .QN(n417) );
  DFFARX1_HVT rls_int_d_reg ( .D(rls_int), .CLK(clk), .RSTB(n9), .QN(n386) );
  DFFARX1_HVT rda_int_d_reg ( .D(rda_int), .CLK(clk), .RSTB(n439), .QN(n384)
         );
  DFFARX1_HVT thre_int_d_reg ( .D(thre_int), .CLK(clk), .RSTB(n443), .QN(n403)
         );
  DFFARX1_HVT ms_int_d_reg ( .D(ms_int), .CLK(clk), .RSTB(n438), .QN(n385) );
  DFFARX1_HVT ti_int_d_reg ( .D(ti_int), .CLK(clk), .RSTB(n9), .QN(n405) );
  DFFARX1_HVT rls_int_pnd_reg ( .D(N355), .CLK(clk), .RSTB(n9), .Q(rls_int_pnd), .QN(n369) );
  DFFARX1_HVT rda_int_pnd_reg ( .D(N364), .CLK(clk), .RSTB(n9), .Q(rda_int_pnd) );
  DFFARX1_HVT ms_int_pnd_reg ( .D(N377), .CLK(clk), .RSTB(n9), .Q(ms_int_pnd), 
        .QN(n398) );
  DFFARX1_HVT ti_int_pnd_reg ( .D(N383), .CLK(clk), .RSTB(n439), .Q(ti_int_pnd), .QN(n387) );
  DFFARX1_HVT iir_reg_3_ ( .D(N412), .CLK(clk), .RSTB(n9), .Q(iir[3]), .QN(
        n374) );
  DFFARX1_HVT iir_reg_2_ ( .D(N411), .CLK(clk), .RSTB(n436), .Q(iir[2]), .QN(
        n375) );
  DFFARX1_HVT thre_int_pnd_reg ( .D(N371), .CLK(clk), .RSTB(n438), .Q(
        thre_int_pnd) );
  DFFARX1_HVT iir_reg_1_ ( .D(N410), .CLK(clk), .RSTB(n9), .Q(iir[1]), .QN(
        n378) );
  DFFASX1_HVT lsr6r_reg ( .D(N180), .CLK(clk), .SETB(n443), .Q(lsr[6]) );
  DFFASX1_HVT lsr5r_reg ( .D(N178), .CLK(clk), .SETB(n443), .Q(lsr[5]), .QN(
        n402) );
  DFFASX1_HVT lcr_reg_1_ ( .D(n175), .CLK(clk), .SETB(n443), .Q(lcr[1]), .QN(
        n569) );
  DFFARX1_HVT lcr_reg_2_ ( .D(n189), .CLK(clk), .RSTB(n443), .Q(n447), .QN(
        n373) );
  DFFARX1_HVT mcr_reg_0_ ( .D(n184), .CLK(clk), .RSTB(n439), .Q(mcr[0]) );
  OR2X1_HVT U6 ( .A1(mcr[4]), .A2(serial_out), .Y(stx_pad_o) );
  OR3X1_HVT U8 ( .A1(msr[1]), .A2(msr[2]), .A3(msr[3]), .Y(n256) );
  OR3X1_HVT U9 ( .A1(lsr[2]), .A2(lsr[3]), .A3(lsr[4]), .Y(n273) );
  OR3X1_HVT U10 ( .A1(lcr[3]), .A2(lcr[2]), .A3(lcr[0]), .Y(n164) );
  OR3X1_HVT U11 ( .A1(n353), .A2(n352), .A3(n351), .Y(n355) );
  OR2X1_HVT U16 ( .A1(rf_overrun), .A2(rf_error_bit), .Y(lsr7) );
  NBUFFX4_HVT U44 ( .A(n443), .Y(n438) );
  NBUFFX4_HVT U45 ( .A(n443), .Y(n436) );
  NBUFFX4_HVT U46 ( .A(n443), .Y(n437) );
  NBUFFX4_HVT U47 ( .A(n443), .Y(n439) );
  NBUFFX4_HVT U48 ( .A(n443), .Y(n9) );
  INVX0_HVT U49 ( .A(n373), .Y(lcr[2]) );
  INVX0_HVT U83 ( .A(modem_inputs[1]), .Y(n229) );
  INVX0_HVT U84 ( .A(modem_inputs[0]), .Y(n230) );
  INVX0_HVT U85 ( .A(modem_inputs[3]), .Y(n227) );
  INVX0_HVT U86 ( .A(modem_inputs[2]), .Y(n228) );
  INVX0_HVT U88 ( .A(wb_dat_i[0]), .Y(n12) );
  INVX0_HVT U91 ( .A(wb_dat_i[1]), .Y(n14) );
  INVX0_HVT U100 ( .A(n22), .Y(N221) );
  INVX0_HVT U163 ( .A(rf_count[2]), .Y(n341) );
  NAND2X0_HVT U166 ( .A1(fcr[1]), .A2(fcr[0]), .Y(n336) );
  INVX0_HVT U168 ( .A(n332), .Y(n70) );
  INVX0_HVT U197 ( .A(n170), .Y(n233) );
  INVX0_HVT U200 ( .A(wb_dat_i[4]), .Y(n97) );
  INVX0_HVT U203 ( .A(wb_dat_i[3]), .Y(n99) );
  INVX0_HVT U206 ( .A(wb_dat_i[2]), .Y(n101) );
  INVX0_HVT U210 ( .A(rf_count[0]), .Y(n324) );
  INVX0_HVT U226 ( .A(msi_reset), .Y(n125) );
  NAND2X0_HVT U227 ( .A1(delayed_modem_signals[2]), .A2(modem_inputs[1]), .Y(
        n114) );
  NAND2X0_HVT U228 ( .A1(n413), .A2(n229), .Y(n113) );
  NAND2X0_HVT U231 ( .A1(delayed_modem_signals[3]), .A2(modem_inputs[0]), .Y(
        n117) );
  NAND2X0_HVT U232 ( .A1(n414), .A2(n230), .Y(n116) );
  NAND2X0_HVT U235 ( .A1(delayed_modem_signals[0]), .A2(modem_inputs[3]), .Y(
        n120) );
  NAND2X0_HVT U236 ( .A1(n415), .A2(n227), .Y(n119) );
  NAND2X0_HVT U239 ( .A1(delayed_modem_signals[1]), .A2(modem_inputs[2]), .Y(
        n123) );
  NAND2X0_HVT U240 ( .A1(n412), .A2(n228), .Y(n122) );
  INVX0_HVT U247 ( .A(wb_re_i), .Y(n128) );
  INVX0_HVT U252 ( .A(rf_overrun), .Y(n130) );
  INVX0_HVT U259 ( .A(lcr[1]), .Y(n354) );
  INVX0_HVT U310 ( .A(n361), .Y(n166) );
  INVX0_HVT U317 ( .A(iir[0]), .Y(n262) );
  INVX0_HVT U319 ( .A(n300), .Y(n171) );
  INVX0_RVT U323 ( .A(n235), .Y(n258) );
  INVX0_HVT U336 ( .A(rda_int), .Y(n259) );
  INVX0_HVT U338 ( .A(rf_data_out[0]), .Y(n248) );
  INVX0_HVT U341 ( .A(rf_data_out[1]), .Y(n250) );
  INVX0_HVT U344 ( .A(rf_data_out[2]), .Y(n252) );
  INVX0_HVT U349 ( .A(lsr[6]), .Y(n301) );
  INVX0_HVT U404 ( .A(lsr7), .Y(n321) );
  NAND2X0_HVT U409 ( .A1(n325), .A2(n324), .Y(n326) );
  INVX0_HVT U415 ( .A(n335), .Y(n338) );
  NAND2X0_HVT U416 ( .A1(rf_count[1]), .A2(n336), .Y(n337) );
  NOR2X1_HVT U427 ( .A1(n7), .A2(lcr[2]), .Y(n351) );
  NOR2X1_HVT U426 ( .A1(lcr[0]), .A2(n397), .Y(n352) );
  NOR2X1_HVT U425 ( .A1(n373), .A2(lcr[3]), .Y(n353) );
  NOR2X0_HVT U405 ( .A1(lsr7_d), .A2(n321), .Y(n323) );
  AO22X1_HVT U365 ( .A1(rls_int_pnd), .A2(ier[2]), .A3(rls_int), .A4(n386), 
        .Y(n274) );
  OA21X1_HVT U364 ( .A1(lsr[1]), .A2(n273), .A3(ier[2]), .Y(rls_int) );
  AO22X1_HVT U353 ( .A1(ms_int_pnd), .A2(ier[3]), .A3(ms_int), .A4(n385), .Y(
        n257) );
  OA21X1_HVT U352 ( .A1(msr[0]), .A2(n256), .A3(ier[3]), .Y(ms_int) );
  NOR2X0_HVT U345 ( .A1(lsr4_d), .A2(n252), .Y(n253) );
  NOR2X0_HVT U342 ( .A1(lsr2_d), .A2(n250), .Y(n251) );
  NOR2X0_HVT U339 ( .A1(lsr3_d), .A2(n248), .Y(n249) );
  AND2X1_HVT U335 ( .A1(thre_int_pnd), .A2(n387), .Y(n247) );
  OA21X1_HVT U333 ( .A1(lsr5_d), .A2(n245), .A3(n402), .Y(n246) );
  AND2X1_HVT U308 ( .A1(n447), .A2(lcr[3]), .Y(n165) );
  AO21X1_HVT U291 ( .A1(n162), .A2(wb_dat_i[7]), .A3(n154), .Y(n223) );
  AO21X1_HVT U282 ( .A1(n152), .A2(wb_dat_i[7]), .A3(n148), .Y(n194) );
  NOR2X1_HVT U253 ( .A1(n130), .A2(lsr1_d), .Y(n131) );
  AO21X1_HVT U244 ( .A1(n129), .A2(wb_dat_i[7]), .A3(n126), .Y(n173) );
  AND2X1_HVT U242 ( .A1(n125), .A2(n124), .Y(N153) );
  AND2X1_HVT U238 ( .A1(n125), .A2(n121), .Y(N152) );
  AND2X1_HVT U234 ( .A1(n125), .A2(n118), .Y(N155) );
  AND2X1_HVT U230 ( .A1(n125), .A2(n115), .Y(N154) );
  AND2X1_HVT U221 ( .A1(n111), .A2(n112), .Y(N237) );
  NOR4X1_HVT U218 ( .A1(dl[8]), .A2(dl[9]), .A3(n465), .A4(n463), .Y(n108) );
  OR2X1_HVT U183 ( .A1(wb_addr_i[2]), .A2(wb_addr_i[0]), .Y(n79) );
  OR2X1_HVT U167 ( .A1(n341), .A2(fcr[0]), .Y(n332) );
  NAND2X0_HVT U165 ( .A1(n365), .A2(n382), .Y(n340) );
  NAND2X0_HVT U164 ( .A1(fcr[0]), .A2(n341), .Y(n71) );
  MUX21X1_HVT U74 ( .A1(scratch[7]), .A2(wb_dat_i[7]), .S0(n4), .Y(n183) );
  MUX21X1_HVT U67 ( .A1(dl[7]), .A2(wb_dat_i[7]), .S0(N138), .Y(n211) );
  IBUFFX4_HVT U4 ( .A(wb_rst_i), .Y(n443) );
  DFFASRX1_HVT lsr1_d_reg ( .D(rf_overrun), .CLK(clk), .RSTB(n439), .SETB(1'b1), .Q(lsr1_d) );
  DFFARX1_HVT mcr_reg_1_ ( .D(n185), .CLK(clk), .RSTB(n439), .Q(mcr[1]) );
  NAND3X0_HVT U241 ( .A1(n123), .A2(n420), .A3(n122), .Y(n124) );
  NAND3X0_HVT U237 ( .A1(n120), .A2(n421), .A3(n119), .Y(n121) );
  NAND3X0_HVT U233 ( .A1(n117), .A2(n418), .A3(n116), .Y(n118) );
  NAND3X0_HVT U229 ( .A1(n114), .A2(n419), .A3(n113), .Y(n115) );
  NAND3X0_HVT U331 ( .A1(lcr[2]), .A2(n7), .A3(n354), .Y(n242) );
  NOR2X0_HVT U105 ( .A1(n367), .A2(n657), .Y(n24) );
  DFFASRX1_HVT tf_push_reg ( .D(n440), .CLK(clk), .RSTB(n437), .SETB(1'b1), 
        .Q(tf_push) );
  DFFASRX1_HVT int_o_reg ( .D(N396), .CLK(clk), .RSTB(n9), .SETB(1'b1), .Q(
        int_o) );
  OR3X1_HVT U23 ( .A1(block_cnt[1]), .A2(block_cnt[2]), .A3(block_cnt[0]), .Y(
        n136) );
  INVX0_HVT U171 ( .A(n308), .Y(n492) );
  OA22X1_HVT U395 ( .A1(n377), .A2(n312), .A3(n433), .A4(n314), .Y(n302) );
  OA22X1_HVT U394 ( .A1(n370), .A2(n308), .A3(n431), .A4(n313), .Y(n303) );
  OA21X1_HVT U393 ( .A1(n301), .A2(n516), .A3(n300), .Y(n304) );
  OA22X1_HVT U385 ( .A1(n373), .A2(n312), .A3(n423), .A4(n516), .Y(n295) );
  OA22X1_HVT U376 ( .A1(n397), .A2(n312), .A3(n422), .A4(n516), .Y(n286) );
  OA22X1_HVT U371 ( .A1(n372), .A2(n312), .A3(n434), .A4(n314), .Y(n276) );
  NOR2X0_RVT U256 ( .A1(n312), .A2(n153), .Y(n152) );
  OR2X1_HVT U72 ( .A1(n76), .A2(n81), .Y(n313) );
  OA22X1_HVT U52 ( .A1(n376), .A2(n312), .A3(n428), .A4(n516), .Y(n316) );
  AOI22X1_HVT U309 ( .A1(lcr[0]), .A2(n165), .A3(lcr[1]), .A4(n164), .Y(n360)
         );
  DFFASRX1_HVT lsr5_d_reg ( .D(n441), .CLK(clk), .RSTB(1'b1), .SETB(n443), .Q(
        lsr5_d) );
  DFFASX1_RVT fcr_reg_1_ ( .D(n173), .CLK(clk), .SETB(n443), .Q(fcr[1]), .QN(
        n365) );
  AND2X1_HVT U15 ( .A1(n277), .A2(n278), .Y(n472) );
  AO22X1_HVT U27 ( .A1(lsr[5]), .A2(n265), .A3(n644), .A4(lcr[5]), .Y(n93) );
  NOR2X0_HVT U38 ( .A1(n383), .A2(n657), .Y(n30) );
  AO21X1_HVT U98 ( .A1(n630), .A2(dlc[8]), .A3(n42), .Y(n44) );
  INVX0_RVT U120 ( .A(wb_addr_i[2]), .Y(n547) );
  OA22X1_HVT U124 ( .A1(n367), .A2(n308), .A3(n426), .A4(n313), .Y(n517) );
  OA21X1_HVT U174 ( .A1(n408), .A2(n657), .A3(n64), .Y(n449) );
  NOR2X0_HVT U175 ( .A1(n395), .A2(n657), .Y(n57) );
  AO21X1_HVT U179 ( .A1(n657), .A2(dlc[13]), .A3(n57), .Y(n59) );
  NOR2X0_HVT U180 ( .A1(n394), .A2(n657), .Y(n54) );
  NOR2X0_HVT U182 ( .A1(n393), .A2(n657), .Y(n51) );
  NOR2X0_HVT U190 ( .A1(n391), .A2(n657), .Y(n48) );
  NOR2X0_HVT U194 ( .A1(n389), .A2(n657), .Y(n45) );
  NOR2X0_HVT U195 ( .A1(n371), .A2(n657), .Y(n39) );
  NOR2X0_HVT U199 ( .A1(n370), .A2(n657), .Y(n36) );
  NOR2X0_HVT U265 ( .A1(n381), .A2(n657), .Y(n33) );
  AO21X1_HVT U266 ( .A1(n657), .A2(dlc[2]), .A3(n24), .Y(n26) );
  AO21X1_HVT U267 ( .A1(n657), .A2(dlc[4]), .A3(n30), .Y(n32) );
  NOR2X0_HVT U268 ( .A1(n368), .A2(n657), .Y(n27) );
  AO21X1_HVT U270 ( .A1(n657), .A2(dlc[3]), .A3(n27), .Y(n29) );
  OAI22X1_HVT U447 ( .A1(n569), .A2(n312), .A3(n516), .A4(n523), .Y(n86) );
  AND2X1_HVT U400 ( .A1(dl[0]), .A2(n63), .Y(n20) );
  AO21X1_HVT U337 ( .A1(n630), .A2(dlc[6]), .A3(n36), .Y(n38) );
  AO21X1_HVT U118 ( .A1(n657), .A2(dlc[5]), .A3(n33), .Y(n35) );
  AO21X1_HVT U151 ( .A1(n657), .A2(dlc[14]), .A3(n60), .Y(n62) );
  OR2X1_HVT U184 ( .A1(n80), .A2(n79), .Y(n300) );
  AND2X1_HVT U361 ( .A1(n267), .A2(ier[0]), .Y(n268) );
  OA22X1_HVT U370 ( .A1(n371), .A2(n308), .A3(n432), .A4(n313), .Y(n277) );
  OA22X1_HVT U374 ( .A1(n374), .A2(n300), .A3(n418), .A4(n314), .Y(n282) );
  OA22X1_HVT U375 ( .A1(n368), .A2(n308), .A3(n427), .A4(n313), .Y(n281) );
  OA22X1_HVT U401 ( .A1(n430), .A2(n314), .A3(n379), .A4(n313), .Y(n315) );
  OR2X1_HVT U29 ( .A1(n307), .A2(n394), .Y(n318) );
  NAND2X0_HVT U260 ( .A1(n472), .A2(n276), .Y(n487) );
  OA21X1_HVT U369 ( .A1(n429), .A2(n516), .A3(n300), .Y(n278) );
  OR2X1_HVT U153 ( .A1(n406), .A2(n63), .Y(n64) );
  AO21X1_HVT U145 ( .A1(n657), .A2(dlc[12]), .A3(n54), .Y(n56) );
  NOR2X0_HVT U101 ( .A1(n380), .A2(n657), .Y(n21) );
  DFFASRX1_HVT msi_reset_reg ( .D(n225), .CLK(clk), .RSTB(1'b1), .SETB(n443), 
        .Q(msi_reset) );
  DFFASRX1_HVT msr_reg_5_ ( .D(dsr_c), .CLK(clk), .RSTB(n439), .SETB(1'b1), 
        .Q(msr[5]) );
  DFFASX1_RVT fcr_reg_0_ ( .D(n172), .CLK(clk), .SETB(n443), .Q(fcr[0]), .QN(
        n382) );
  OA22X1_HVT U14 ( .A1(n262), .A2(n300), .A3(n421), .A4(n314), .Y(n264) );
  OAI22X1_HVT U17 ( .A1(n378), .A2(n300), .A3(n420), .A4(n314), .Y(n82) );
  OR2X1_HVT U21 ( .A1(n84), .A2(n86), .Y(n475) );
  INVX0_HVT U28 ( .A(n152), .Y(n528) );
  INVX0_HVT U39 ( .A(wb_addr_i[0]), .Y(n76) );
  NOR3X0_HVT U60 ( .A1(n361), .A2(n404), .A3(n359), .Y(n363) );
  AO21X1_HVT U96 ( .A1(n129), .A2(wb_dat_i[6]), .A3(n127), .Y(n172) );
  NOR2X0_HVT U99 ( .A1(n255), .A2(n440), .Y(N180) );
  OR2X1_HVT U109 ( .A1(n361), .A2(n619), .Y(n195) );
  AND2X1_HVT U152 ( .A1(n587), .A2(n463), .Y(n573) );
  NAND2X0_HVT U160 ( .A1(n669), .A2(n535), .Y(n574) );
  NOR2X0_HVT U172 ( .A1(n292), .A2(n425), .Y(n575) );
  AO22X1_HVT U189 ( .A1(lcr[0]), .A2(n644), .A3(n265), .A4(lsr[0]), .Y(n580)
         );
  INVX0_HVT U363 ( .A(n73), .Y(n589) );
  NAND2X0_HVT U459 ( .A1(n502), .A2(n293), .Y(n610) );
  OR2X1_HVT U454 ( .A1(dlc[3]), .A2(dlc[1]), .Y(n609) );
  OR2X1_HVT U452 ( .A1(n94), .A2(n95), .Y(n607) );
  OR2X1_HVT U443 ( .A1(n59), .A2(n58), .Y(n61) );
  OR2X1_HVT U398 ( .A1(n270), .A2(n260), .Y(n595) );
  OR2X1_HVT U379 ( .A1(dlc[10]), .A2(dlc[11]), .Y(n594) );
  OR2X1_HVT U377 ( .A1(dlc[8]), .A2(dlc[9]), .Y(n593) );
  AND2X1_HVT U368 ( .A1(n587), .A2(dl[15]), .Y(n591) );
  NOR3X0_HVT U424 ( .A1(n361), .A2(n460), .A3(n350), .Y(n358) );
  NOR2X0_HVT U330 ( .A1(n407), .A2(n240), .Y(n244) );
  NOR3X0_HVT U313 ( .A1(n361), .A2(n409), .A3(n364), .Y(n168) );
  NOR3X0_RVT U248 ( .A1(n309), .A2(n128), .A3(n646), .Y(n334) );
  AND2X1_HVT U188 ( .A1(n267), .A2(ier[1]), .Y(n84) );
  OR2X1_HVT U388 ( .A1(n292), .A2(n424), .Y(n293) );
  OR2X1_HVT U432 ( .A1(n391), .A2(n307), .Y(n502) );
  NOR2X0_HVT U20 ( .A1(n388), .A2(n307), .Y(n260) );
  OA22X1_HVT U358 ( .A1(n366), .A2(n308), .A3(n411), .A4(n313), .Y(n263) );
  NOR2X0_HVT U322 ( .A1(n233), .A2(n314), .Y(n235) );
  NOR2X0_HVT U198 ( .A1(n516), .A2(n233), .Y(n442) );
  NOR2X0_RVT U191 ( .A1(n395), .A2(n307), .Y(n95) );
  NOR2X1_RVT U173 ( .A1(n389), .A2(n307), .Y(n74) );
  INVX0_RVT U305 ( .A(n348), .Y(n461) );
  NOR2X0_HVT U89 ( .A1(n292), .A2(n153), .Y(n143) );
  OR2X1_RVT U378 ( .A1(n396), .A2(n307), .Y(n535) );
  AND2X1_HVT U435 ( .A1(n596), .A2(n11), .Y(n440) );
  OR2X1_HVT U466 ( .A1(n313), .A2(n153), .Y(n145) );
  INVX0_HVT U289 ( .A(n528), .Y(n530) );
  INVX0_HVT U288 ( .A(n528), .Y(n529) );
  OR3X1_HVT U136 ( .A1(n359), .A2(n358), .A3(n357), .Y(n521) );
  NOR2X1_RVT U102 ( .A1(n153), .A2(n307), .Y(n162) );
  NAND2X0_HVT U80 ( .A1(n346), .A2(n417), .Y(n141) );
  NAND2X0_HVT U51 ( .A1(n264), .A2(n263), .Y(n270) );
  OR2X1_HVT U186 ( .A1(n621), .A2(n82), .Y(n85) );
  OA22X1_HVT U382 ( .A1(n375), .A2(n300), .A3(n419), .A4(n314), .Y(n290) );
  OAI222X1_HVT U135 ( .A1(n479), .A2(n166), .A3(n485), .A4(n625), .A5(n240), 
        .A6(n486), .Y(n199) );
  MUX21X1_HVT U64 ( .A1(dl[4]), .A2(wb_dat_i[4]), .S0(N138), .Y(n208) );
  MUX21X1_HVT U65 ( .A1(dl[6]), .A2(wb_dat_i[6]), .S0(N138), .Y(n210) );
  MUX21X1_HVT U75 ( .A1(scratch[6]), .A2(wb_dat_i[6]), .S0(n4), .Y(n182) );
  MUX21X1_HVT U76 ( .A1(scratch[4]), .A2(wb_dat_i[4]), .S0(n4), .Y(n180) );
  OR2X1_HVT U214 ( .A1(n104), .A2(rf_push_pulse), .Y(n105) );
  NOR4X1_HVT U219 ( .A1(dl[12]), .A2(dl[13]), .A3(dl[14]), .A4(dl[15]), .Y(
        n107) );
  OR2X1_HVT U269 ( .A1(n361), .A2(n241), .Y(n240) );
  NOR2X0_HVT U272 ( .A1(block_cnt[0]), .A2(n625), .Y(n346) );
  AO21X1_HVT U286 ( .A1(n152), .A2(wb_dat_i[6]), .A3(n150), .Y(n193) );
  AO21X1_HVT U295 ( .A1(n162), .A2(wb_dat_i[4]), .A3(n156), .Y(n220) );
  AO21X1_HVT U299 ( .A1(n162), .A2(wb_dat_i[6]), .A3(n158), .Y(n222) );
  NOR2X0_RVT U302 ( .A1(n389), .A2(n633), .Y(n160) );
  NOR2X0_HVT U312 ( .A1(n167), .A2(n625), .Y(n364) );
  NOR3X0_HVT U321 ( .A1(n232), .A2(n231), .A3(n440), .Y(N371) );
  AO22X1_HVT U332 ( .A1(n361), .A2(n242), .A3(n241), .A4(n407), .Y(n243) );
  NOR2X0_HVT U334 ( .A1(n246), .A2(n440), .Y(N178) );
  AND2X1_HVT U421 ( .A1(n625), .A2(block_cnt[0]), .Y(n345) );
  AND2X1_HVT U429 ( .A1(n361), .A2(n356), .Y(n357) );
  AND2X1_HVT U431 ( .A1(n361), .A2(n360), .Y(n362) );
  INVX0_HVT U348 ( .A(lsr6), .Y(n254) );
  AO21X1_HVT U42 ( .A1(n152), .A2(wb_dat_i[4]), .A3(n146), .Y(n191) );
  OR2X1_HVT U37 ( .A1(n244), .A2(n243), .Y(n198) );
  OR3X1_HVT U3 ( .A1(n361), .A2(n346), .A3(n345), .Y(n203) );
  DFFASRX1_HVT lsr6_d_reg ( .D(lsr6), .CLK(clk), .RSTB(1'b1), .SETB(n443), .Q(
        lsr6_d) );
  DFFASRX1_HVT start_dlc_reg ( .D(N138), .CLK(clk), .RSTB(n436), .SETB(1'b1), 
        .Q(start_dlc) );
  OR3X1_RVT U170 ( .A1(block_cnt[4]), .A2(block_cnt[3]), .A3(n136), .Y(n348)
         );
  OR3X1_HVT U30 ( .A1(tf_count[3]), .A2(tf_count[1]), .A3(tf_count[0]), .Y(n68) );
  NOR2X1_RVT U22 ( .A1(n398), .A2(n235), .Y(n236) );
  AND3X1_RVT U34 ( .A1(n170), .A2(n262), .A3(n374), .Y(n226) );
  OA22X1_RVT U35 ( .A1(rf_count[0]), .A2(n340), .A3(rf_count[1]), .A4(n336), 
        .Y(n333) );
  NOR2X0_HVT U40 ( .A1(n388), .A2(n657), .Y(n42) );
  NOR2X0_RVT U63 ( .A1(n7), .A2(n529), .Y(n132) );
  OA21X1_RVT U69 ( .A1(lsr6_d), .A2(n254), .A3(n301), .Y(n255) );
  OR2X1_RVT U78 ( .A1(n365), .A2(rf_count[3]), .Y(n331) );
  NOR2X1_RVT U81 ( .A1(n360), .A2(n166), .Y(n169) );
  INVX1_RVT U82 ( .A(lsr_mask), .Y(n322) );
  NOR2X0_RVT U104 ( .A1(n411), .A2(n4), .Y(n144) );
  NOR2X1_RVT U114 ( .A1(n377), .A2(n529), .Y(n150) );
  MUX21X1_RVT U140 ( .A1(ier[3]), .A2(wb_dat_i[3]), .S0(n143), .Y(n215) );
  MUX21X1_RVT U142 ( .A1(scratch[3]), .A2(wb_dat_i[3]), .S0(n4), .Y(n179) );
  NOR2X1_RVT U176 ( .A1(wb_addr_i[4]), .A2(wb_addr_i[3]), .Y(n319) );
  INVX0_RVT U177 ( .A(n319), .Y(n646) );
  INVX0_HVT U181 ( .A(wb_addr_i[1]), .Y(n80) );
  INVX0_HVT U185 ( .A(n644), .Y(n312) );
  OAI22X1_HVT U187 ( .A1(n308), .A2(n380), .A3(n313), .A4(n570), .Y(n621) );
  INVX0_HVT U275 ( .A(n162), .Y(n631) );
  INVX0_HVT U276 ( .A(n631), .Y(n632) );
  INVX0_HVT U277 ( .A(n631), .Y(n633) );
  AO21X1_RVT U279 ( .A1(n632), .A2(wb_dat_i[5]), .A3(n157), .Y(n221) );
  AO21X1_RVT U280 ( .A1(n633), .A2(wb_dat_i[2]), .A3(n159), .Y(n218) );
  AO21X1_RVT U281 ( .A1(n162), .A2(wb_dat_i[1]), .A3(n160), .Y(n217) );
  AO21X1_RVT U284 ( .A1(n162), .A2(wb_dat_i[3]), .A3(n161), .Y(n219) );
  NOR2X1_RVT U285 ( .A1(n391), .A2(n632), .Y(n159) );
  NOR2X1_RVT U303 ( .A1(n395), .A2(n632), .Y(n157) );
  NOR2X1_RVT U304 ( .A1(n393), .A2(n632), .Y(n161) );
  NOR2X1_RVT U307 ( .A1(n394), .A2(n633), .Y(n156) );
  NOR2X1_RVT U318 ( .A1(n396), .A2(n632), .Y(n158) );
  NOR2X1_RVT U324 ( .A1(n408), .A2(n633), .Y(n154) );
  INVX0_HVT U406 ( .A(msr[5]), .Y(n639) );
  OR2X1_HVT U467 ( .A1(n594), .A2(n593), .Y(n658) );
  OR2X1_HVT U468 ( .A1(n666), .A2(n609), .Y(n659) );
  uart_transmitter_clkgate transmitter ( .clk(clk), .wb_rst_i(wb_rst_i), .lcr(
        {SYNOPSYS_UNCONNECTED_1, lcr[6:0]}), .tf_push(tf_push), .wb_dat_i(
        wb_dat_i), .enable(enable), .stx_pad_o(serial_out), .tstate(tstate), 
        .tf_count(tf_count), .tx_reset(tx_reset) );
  uart_sync_flops_1_1 i_uart_sync_flops ( .rst_i(wb_rst_i), .clk_i(clk), 
        .async_dat_i(srx_pad_i), .sync_dat_o(srx_pad) );
  uart_receiver receiver ( .clk(clk), .wb_rst_i(wb_rst_i), .lcr({
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, lcr[5:3], n447, 
        lcr[1:0]}), .srx_pad_i(serial_in), .enable(enable), .counter_t(
        counter_t), .rf_count(rf_count), .rf_data_out(rf_data_out), 
        .rf_error_bit(rf_error_bit), .rf_overrun(rf_overrun), .rx_reset(
        rx_reset), .lsr_mask(lsr_mask), .rstate(rstate), .rf_push_pulse(
        rf_push_pulse), .rf_pop_BAR(n444) );
  OR2X1_HVT U462 ( .A1(dlc[6]), .A2(dlc[7]), .Y(n656) );
  OR2X1_HVT U460 ( .A1(dlc[4]), .A2(dlc[5]), .Y(n654) );
  OR2X1_RVT U456 ( .A1(n573), .A2(n575), .Y(n652) );
  OR2X1_HVT U444 ( .A1(wb_addr_i[1]), .A2(n547), .Y(n647) );
  INVX0_RVT U440 ( .A(n587), .Y(n307) );
  NOR2X0_HVT U434 ( .A1(block_cnt[5]), .A2(n643), .Y(n359) );
  OAI22X1_HVT U408 ( .A1(n314), .A2(n639), .A3(n313), .A4(n620), .Y(n94) );
  NOR2X0_HVT U386 ( .A1(n625), .A2(n136), .Y(n241) );
  AND2X1_HVT U381 ( .A1(n440), .A2(lsr[5]), .Y(n361) );
  OA21X1_HVT U367 ( .A1(n308), .A2(n383), .A3(n626), .Y(n640) );
  AO21X1_HVT U146 ( .A1(n141), .A2(block_cnt[2]), .A3(n240), .Y(n617) );
  NOR2X0_HVT U143 ( .A1(n308), .A2(n153), .Y(N138) );
  NOR2X1_RVT U243 ( .A1(n365), .A2(n129), .Y(n126) );
  MUX21X1_RVT U225 ( .A1(modem_inputs[0]), .A2(mcr[3]), .S0(mcr[4]), .Y(dcd_c)
         );
  MUX21X1_RVT U224 ( .A1(modem_inputs[3]), .A2(mcr[1]), .S0(mcr[4]), .Y(cts_c)
         );
  MUX21X1_RVT U223 ( .A1(modem_inputs[1]), .A2(mcr[2]), .S0(mcr[4]), .Y(ri_c)
         );
  MUX21X1_RVT U222 ( .A1(modem_inputs[2]), .A2(mcr[0]), .S0(mcr[4]), .Y(dsr_c)
         );
  NOR4X1_HVT U217 ( .A1(dl[4]), .A2(dl[5]), .A3(dl[6]), .A4(dl[7]), .Y(n109)
         );
  AO21X1_RVT U212 ( .A1(n416), .A2(lsr0), .A3(lsr[0]), .Y(n106) );
  AO21X1_RVT U202 ( .A1(n103), .A2(mcr[4]), .A3(n98), .Y(n188) );
  NOR3X0_HVT U157 ( .A1(tf_count[4]), .A2(tf_count[2]), .A3(n68), .Y(n69) );
  OR2X1_RVT U70 ( .A1(n238), .A2(n237), .Y(n239) );
  AOI22X1_RVT U79 ( .A1(ier[0]), .A2(ti_int_pnd), .A3(ti_int), .A4(n405), .Y(
        n330) );
  INVX0_LVT U106 ( .A(n145), .Y(n4) );
  AO22X1_RVT U110 ( .A1(rls_int_pnd), .A2(n322), .A3(n369), .A4(n239), .Y(N396) );
  NOR4X1_RVT U113 ( .A1(tstate[0]), .A2(tstate[1]), .A3(tstate[2]), .A4(n245), 
        .Y(lsr6) );
  MUX21X1_RVT U116 ( .A1(ier[1]), .A2(wb_dat_i[1]), .S0(n143), .Y(n213) );
  MUX21X1_RVT U117 ( .A1(scratch[1]), .A2(wb_dat_i[1]), .S0(n4), .Y(n177) );
  AO21X1_RVT U290 ( .A1(n530), .A2(wb_dat_i[0]), .A3(n132), .Y(n174) );
  AO21X1_RVT U293 ( .A1(n529), .A2(wb_dat_i[1]), .A3(n133), .Y(n175) );
  NOR2X0_RVT U294 ( .A1(n354), .A2(n530), .Y(n133) );
  AO21X1_RVT U296 ( .A1(n152), .A2(wb_dat_i[5]), .A3(n151), .Y(n192) );
  AO21X1_RVT U297 ( .A1(n152), .A2(wb_dat_i[2]), .A3(n149), .Y(n189) );
  AO21X1_RVT U298 ( .A1(n152), .A2(wb_dat_i[3]), .A3(n147), .Y(n190) );
  NOR2X0_RVT U306 ( .A1(n400), .A2(n529), .Y(n151) );
  NOR2X0_RVT U311 ( .A1(n397), .A2(n529), .Y(n147) );
  NOR2X1_RVT U326 ( .A1(n376), .A2(n530), .Y(n146) );
  NOR2X0_RVT U327 ( .A1(n372), .A2(n530), .Y(n148) );
  AND3X1_RVT U215 ( .A1(n106), .A2(n410), .A3(n105), .Y(N159) );
  OR2X1_RVT U54 ( .A1(rda_int_pnd), .A2(n234), .Y(n238) );
  NOR2X1_RVT U71 ( .A1(n12), .A2(n103), .Y(n13) );
  OR2X1_RVT U108 ( .A1(n169), .A2(n168), .Y(n202) );
  NOR2X0_HVT U53 ( .A1(n300), .A2(n153), .Y(n129) );
  AO21X1_RVT U90 ( .A1(n103), .A2(mcr[0]), .A3(n13), .Y(n184) );
  NOR2X0_RVT U92 ( .A1(n14), .A2(n103), .Y(n15) );
  AO21X1_RVT U93 ( .A1(n103), .A2(mcr[1]), .A3(n15), .Y(n185) );
  XNOR2X1_RVT U103 ( .A1(n23), .A2(n22), .Y(N222) );
  XNOR2X1_RVT U107 ( .A1(n26), .A2(n25), .Y(N223) );
  XNOR2X1_RVT U111 ( .A1(n29), .A2(n28), .Y(N224) );
  XNOR2X1_RVT U115 ( .A1(n32), .A2(n31), .Y(N225) );
  XNOR2X1_RVT U119 ( .A1(n35), .A2(n34), .Y(N226) );
  XNOR2X1_RVT U122 ( .A1(n38), .A2(n37), .Y(N227) );
  XNOR2X1_RVT U126 ( .A1(n41), .A2(n40), .Y(N228) );
  OA221X1_RVT U169 ( .A1(n335), .A2(n331), .A3(n335), .A4(n72), .A5(ier[0]), 
        .Y(rda_int) );
  NOR2X1_RVT U201 ( .A1(n97), .A2(n103), .Y(n98) );
  NOR2X1_RVT U204 ( .A1(n99), .A2(n103), .Y(n100) );
  AO21X1_RVT U205 ( .A1(n103), .A2(mcr[3]), .A3(n100), .Y(n187) );
  NOR2X0_RVT U207 ( .A1(n101), .A2(n103), .Y(n102) );
  AO21X1_RVT U208 ( .A1(n103), .A2(mcr[2]), .A3(n102), .Y(n186) );
  NOR4X1_RVT U209 ( .A1(rf_count[4]), .A2(rf_count[3]), .A3(rf_count[2]), .A4(
        rf_count[1]), .Y(n325) );
  NAND3X0_RVT U213 ( .A1(rf_count[0]), .A2(n325), .A3(rf_pop), .Y(n104) );
  AND2X1_RVT U249 ( .A1(n334), .A2(n444), .Y(n224) );
  AND2X1_RVT U251 ( .A1(wb_dat_i[1]), .A2(n129), .Y(N129) );
  OA21X1_RVT U255 ( .A1(lsr[1]), .A2(n131), .A3(n322), .Y(N163) );
  OA21X1_RVT U328 ( .A1(thre_int_pnd), .A2(n236), .A3(n387), .Y(n237) );
  OA21X1_RVT U343 ( .A1(lsr[2]), .A2(n251), .A3(n322), .Y(N167) );
  OA21X1_RVT U346 ( .A1(lsr[4]), .A2(n253), .A3(n322), .Y(N175) );
  AND3X1_RVT U347 ( .A1(ti_int_pnd), .A2(n259), .A3(n369), .Y(N412) );
  AND2X1_RVT U354 ( .A1(n258), .A2(n257), .Y(N377) );
  NAND3X0_RVT U355 ( .A1(n259), .A2(n369), .A3(n387), .Y(N411) );
  NOR3X0_RVT U356 ( .A1(thre_int_pnd), .A2(ms_int_pnd), .A3(N411), .Y(N409) );
  AND2X1_RVT U366 ( .A1(n322), .A2(n274), .Y(N355) );
  NOR4X1_RVT U407 ( .A1(counter_t[2]), .A2(counter_t[3]), .A3(counter_t[4]), 
        .A4(counter_t[7]), .Y(n328) );
  NOR4X1_RVT U411 ( .A1(counter_t[9]), .A2(counter_t[0]), .A3(n390), .A4(n329), 
        .Y(ti_int) );
  NOR2X0_RVT U413 ( .A1(n334), .A2(n330), .Y(N383) );
  NAND3X0_RVT U417 ( .A1(n339), .A2(n338), .A3(n337), .Y(n344) );
  AO22X1_RVT U418 ( .A1(fcr[0]), .A2(n341), .A3(rf_count[0]), .A4(n340), .Y(
        n343) );
  AO22X1_RVT U419 ( .A1(ier[0]), .A2(rda_int_pnd), .A3(rda_int), .A4(n384), 
        .Y(n342) );
  OA21X1_RVT U420 ( .A1(n344), .A2(n343), .A3(n342), .Y(N364) );
  AO221X1_RVT U18 ( .A1(n71), .A2(rf_count[1]), .A3(n71), .A4(n333), .A5(n70), 
        .Y(n72) );
  AOI21X1_RVT U258 ( .A1(block_cnt[3]), .A2(block_cnt[4]), .A3(n461), .Y(n485)
         );
  AO21X1_RVT U149 ( .A1(n4), .A2(wb_dat_i[0]), .A3(n144), .Y(n176) );
  AO21X1_RVT U148 ( .A1(n143), .A2(wb_dat_i[0]), .A3(n142), .Y(n212) );
  OA21X1_RVT U139 ( .A1(lsr[3]), .A2(n249), .A3(n322), .Y(N171) );
  NOR2X1_RVT U25 ( .A1(n387), .A2(n334), .Y(n234) );
  AND3X1_HVT U211 ( .A1(n325), .A2(rf_push_pulse), .A3(n324), .Y(lsr0) );
  NOR4X0_RVT U216 ( .A1(dl[0]), .A2(dl[1]), .A3(dl[2]), .A4(dl[3]), .Y(n110)
         );
  XNOR2X1_RVT U130 ( .A1(n44), .A2(n43), .Y(N229) );
  XNOR2X1_RVT U134 ( .A1(n47), .A2(n46), .Y(N230) );
  XNOR3X1_RVT U262 ( .A1(lcr[3]), .A2(n447), .A3(n7), .Y(n479) );
  MUX21X1_RVT U129 ( .A1(scratch[2]), .A2(wb_dat_i[2]), .S0(n4), .Y(n178) );
  MUX21X1_RVT U127 ( .A1(ier[2]), .A2(wb_dat_i[2]), .S0(n143), .Y(n214) );
  NOR2X0_RVT U77 ( .A1(n390), .A2(n143), .Y(n142) );
  AO21X1_RVT U58 ( .A1(rf_count[3]), .A2(n365), .A3(rf_count[4]), .Y(n335) );
  AND4X1_RVT U43 ( .A1(n226), .A2(iir[1]), .A3(n171), .A4(n375), .Y(n231) );
  NOR2X1_RVT U41 ( .A1(n382), .A2(n129), .Y(n127) );
  AND3X1_HVT U36 ( .A1(n319), .A2(wb_re_i), .A3(n372), .Y(n170) );
  NOR4X1_RVT U31 ( .A1(counter_t[5]), .A2(counter_t[1]), .A3(counter_t[8]), 
        .A4(counter_t[6]), .Y(n327) );
  OR2X1_RVT U33 ( .A1(n392), .A2(n135), .Y(n497) );
  AND2X1_RVT U13 ( .A1(n282), .A2(n281), .Y(n288) );
  NOR2X1_RVT U32 ( .A1(block_cnt[7]), .A2(n167), .Y(n135) );
  AND2X1_RVT U158 ( .A1(n135), .A2(n69), .Y(n441) );
  NOR2X0_HVT U150 ( .A1(n396), .A2(n657), .Y(n60) );
  AO21X1_HVT U141 ( .A1(n630), .A2(dlc[11]), .A3(n51), .Y(n53) );
  AO21X1_HVT U137 ( .A1(n657), .A2(dlc[10]), .A3(n48), .Y(n50) );
  AO21X1_HVT U133 ( .A1(n657), .A2(dlc[9]), .A3(n45), .Y(n47) );
  AO21X1_HVT U125 ( .A1(n630), .A2(dlc[7]), .A3(n39), .Y(n41) );
  AND2X1_RVT U59 ( .A1(wb_we_i), .A2(n319), .Y(n11) );
  AND2X1_RVT U56 ( .A1(n442), .A2(n399), .Y(lsr_mask) );
  XNOR2X1_RVT U428 ( .A1(n355), .A2(n354), .Y(n356) );
  AND2X1_RVT U24 ( .A1(n288), .A2(n286), .Y(n468) );
  AND2X1_RVT U315 ( .A1(lsr[5]), .A2(ier[1]), .Y(thre_int) );
  AOI22X1_HVT U316 ( .A1(ier[1]), .A2(thre_int_pnd), .A3(n403), .A4(thre_int), 
        .Y(n232) );
  DFFASRX1_HVT iir_reg_0_ ( .D(N409), .CLK(clk), .RSTB(1'b1), .SETB(n443), .Q(
        iir[0]) );
  DFFASX1_RVT lcr_reg_0_ ( .D(n174), .CLK(clk), .SETB(n443), .Q(lcr[0]), .QN(
        n7) );
  INVX0_HVT U433 ( .A(n625), .Y(n138) );
  NAND3X0_RVT U410 ( .A1(n328), .A2(n327), .A3(n326), .Y(n329) );
  NAND4X0_RVT U220 ( .A1(n110), .A2(n109), .A3(n108), .A4(n107), .Y(n111) );
  NAND4X0_RVT U87 ( .A1(n80), .A2(n76), .A3(n11), .A4(wb_addr_i[2]), .Y(n103)
         );
  XNOR2X1_RVT U7 ( .A1(n58), .A2(n59), .Y(n579) );
  XNOR2X1_RVT U196 ( .A1(n55), .A2(n56), .Y(n483) );
  XOR2X1_RVT U5 ( .A1(n67), .A2(n449), .Y(N236) );
  OR2X1_RVT U12 ( .A1(n647), .A2(n76), .Y(n516) );
  OR3X1_RVT U19 ( .A1(lcr[7]), .A2(wb_addr_i[0]), .A3(n73), .Y(n309) );
  OR2X1_HVT U26 ( .A1(n580), .A2(n268), .Y(n690) );
  OR2X1_RVT U50 ( .A1(start_dlc), .A2(n112), .Y(n63) );
  AND2X1_HVT U55 ( .A1(n492), .A2(dl[5]), .Y(n683) );
  OR2X1_HVT U57 ( .A1(n690), .A2(n595), .Y(n684) );
  OR3X1_HVT U61 ( .A1(block_cnt[6]), .A2(block_cnt[5]), .A3(n348), .Y(n167) );
  AND4X1_HVT U62 ( .A1(n334), .A2(n333), .A3(n332), .A4(n331), .Y(n339) );
  AND2X1_HVT U66 ( .A1(n138), .A2(n461), .Y(n350) );
  OR2X1_HVT U68 ( .A1(dlc[13]), .A2(dlc[15]), .Y(n699) );
  INVX0_HVT U73 ( .A(n63), .Y(n630) );
  OR3X1_HVT U94 ( .A1(lcr[7]), .A2(n73), .A3(n76), .Y(n292) );
  OR3X1_RVT U95 ( .A1(n607), .A2(n93), .A3(n683), .Y(n697) );
  INVX0_HVT U97 ( .A(n441), .Y(n245) );
  NOR2X0_HVT U112 ( .A1(n373), .A2(n530), .Y(n149) );
  OR2X1_RVT U121 ( .A1(n35), .A2(n34), .Y(n37) );
  XOR2X1_RVT U123 ( .A1(n61), .A2(n62), .Y(n691) );
  NOR2X0_HVT U128 ( .A1(n388), .A2(n633), .Y(n155) );
  NOR2X0_HVT U131 ( .A1(msi_reset), .A2(n258), .Y(n225) );
  AO21X1_HVT U132 ( .A1(n247), .A2(n259), .A3(rls_int_pnd), .Y(N410) );
  INVX0_HVT U138 ( .A(n678), .Y(n456) );
  OA21X1_HVT U144 ( .A1(lsr[7]), .A2(n323), .A3(n322), .Y(N184) );
  INVX0_HVT U147 ( .A(n682), .Y(N232) );
  AND2X1_HVT U154 ( .A1(wb_dat_i[2]), .A2(n129), .Y(N130) );
  AO21X1_HVT U155 ( .A1(n162), .A2(wb_dat_i[0]), .A3(n155), .Y(n216) );
  MUX21X1_HVT U156 ( .A1(scratch[5]), .A2(wb_dat_i[5]), .S0(n4), .Y(n181) );
  OR2X1_HVT U159 ( .A1(dlc[2]), .A2(dlc[0]), .Y(n666) );
  AOI21X1_HVT U161 ( .A1(rf_data_out[10]), .A2(n596), .A3(n671), .Y(n667) );
  OR2X1_HVT U162 ( .A1(n610), .A2(n539), .Y(n668) );
  AND3X1_HVT U178 ( .A1(n303), .A2(n302), .A3(n304), .Y(n669) );
  AOI21X1_RVT U192 ( .A1(n596), .A2(rf_data_out[9]), .A3(n574), .Y(n670) );
  OR2X1_HVT U193 ( .A1(n591), .A2(n487), .Y(n671) );
  INVX2_RVT U245 ( .A(n63), .Y(n657) );
  MUX21X1_HVT U246 ( .A1(dl[0]), .A2(wb_dat_i[0]), .S0(N138), .Y(n204) );
  MUX21X1_HVT U250 ( .A1(dl[5]), .A2(wb_dat_i[5]), .S0(N138), .Y(n209) );
  MUX21X1_HVT U254 ( .A1(dl[1]), .A2(wb_dat_i[1]), .S0(N138), .Y(n205) );
  MUX21X1_HVT U257 ( .A1(dl[2]), .A2(wb_dat_i[2]), .S0(N138), .Y(n206) );
  MUX21X1_HVT U261 ( .A1(dl[3]), .A2(wb_dat_i[3]), .S0(N138), .Y(n207) );
  OR3X1_HVT U263 ( .A1(n372), .A2(wb_addr_i[0]), .A3(n73), .Y(n308) );
  INVX0_HVT U271 ( .A(n11), .Y(n153) );
  OR2X1_RVT U274 ( .A1(n23), .A2(n22), .Y(n25) );
  AO21X1_RVT U278 ( .A1(n630), .A2(dlc[0]), .A3(n20), .Y(n22) );
  INVX0_RVT U283 ( .A(n673), .Y(n624) );
  XOR2X1_RVT U292 ( .A1(n49), .A2(n50), .Y(n673) );
  AND2X1_RVT U301 ( .A1(rf_data_out[6]), .A2(n596), .Y(n693) );
  INVX0_HVT U350 ( .A(n309), .Y(n674) );
  AOI21X1_LVT U351 ( .A1(n674), .A2(rf_data_out[5]), .A3(n668), .Y(n688) );
  NOR2X0_LVT U357 ( .A1(n646), .A2(n675), .Y(wb_dat_o[4]) );
  OA21X1_LVT U359 ( .A1(n677), .A2(n676), .A3(n640), .Y(n675) );
  INVX0_LVT U360 ( .A(rf_data_out[7]), .Y(n676) );
  INVX0_HVT U362 ( .A(n596), .Y(n677) );
  INVX1_LVT U372 ( .A(n309), .Y(n596) );
  INVX0_LVT U373 ( .A(n350), .Y(n643) );
  NOR3X0_RVT U380 ( .A1(n364), .A2(n363), .A3(n362), .Y(n678) );
  AO21X1_RVT U383 ( .A1(n657), .A2(dlc[1]), .A3(n21), .Y(n23) );
  OR2X1_LVT U384 ( .A1(n38), .A2(n37), .Y(n40) );
  OR2X1_LVT U387 ( .A1(n56), .A2(n55), .Y(n58) );
  OR2X1_LVT U389 ( .A1(n53), .A2(n52), .Y(n55) );
  INVX0_RVT U390 ( .A(n679), .Y(n702) );
  NOR2X0_LVT U391 ( .A1(n656), .A2(n654), .Y(n679) );
  OR2X1_RVT U392 ( .A1(n61), .A2(n62), .Y(n67) );
  INVX0_RVT U396 ( .A(n292), .Y(n267) );
  NOR4X1_RVT U397 ( .A1(n74), .A2(n85), .A3(n696), .A4(n475), .Y(n695) );
  OR2X1_RVT U399 ( .A1(wb_addr_i[0]), .A2(n81), .Y(n314) );
  INVX0_LVT U402 ( .A(n680), .Y(n81) );
  AND2X1_RVT U403 ( .A1(wb_addr_i[1]), .A2(wb_addr_i[2]), .Y(n680) );
  INVX0_RVT U412 ( .A(n681), .Y(n626) );
  NAND3X0_RVT U414 ( .A1(n315), .A2(n318), .A3(n316), .Y(n681) );
  OR2X1_LVT U422 ( .A1(wb_addr_i[2]), .A2(wb_addr_i[1]), .Y(n73) );
  NOR2X0_RVT U423 ( .A1(n646), .A2(n670), .Y(wb_dat_o[6]) );
  AND3X1_RVT U430 ( .A1(n589), .A2(wb_addr_i[0]), .A3(lcr[7]), .Y(n587) );
  NOR4X1_LVT U436 ( .A1(n699), .A2(n659), .A3(n658), .A4(n700), .Y(n112) );
  OR2X1_LVT U437 ( .A1(n44), .A2(n43), .Y(n46) );
  OR2X1_LVT U438 ( .A1(n41), .A2(n40), .Y(n43) );
  OR2X1_LVT U439 ( .A1(n29), .A2(n28), .Y(n31) );
  OR2X1_LVT U441 ( .A1(n26), .A2(n25), .Y(n28) );
  XOR2X1_RVT U442 ( .A1(n52), .A2(n53), .Y(n682) );
  INVX0_LVT U445 ( .A(n516), .Y(n265) );
  NOR2X0_LVT U446 ( .A1(n685), .A2(n684), .Y(n689) );
  AND2X1_RVT U448 ( .A1(rf_data_out[3]), .A2(n596), .Y(n685) );
  AO22X1_LVT U449 ( .A1(n572), .A2(srx_pad), .A3(serial_out), .A4(mcr[4]), .Y(
        serial_in) );
  OR2X1_LVT U450 ( .A1(n497), .A2(n361), .Y(n625) );
  INVX0_RVT U451 ( .A(n686), .Y(n619) );
  XOR2X1_RVT U453 ( .A1(n417), .A2(n346), .Y(n686) );
  INVX0_RVT U455 ( .A(n687), .Y(n539) );
  AND3X1_RVT U457 ( .A1(n517), .A2(n295), .A3(n290), .Y(n687) );
  NOR2X0_LVT U458 ( .A1(n646), .A2(n688), .Y(wb_dat_o[2]) );
  NOR2X0_LVT U461 ( .A1(n646), .A2(n689), .Y(wb_dat_o[0]) );
  OR2X1_LVT U463 ( .A1(n50), .A2(n49), .Y(n52) );
  OR2X1_LVT U464 ( .A1(n47), .A2(n46), .Y(n49) );
  OR2X1_LVT U465 ( .A1(n32), .A2(n31), .Y(n34) );
  INVX0_RVT U469 ( .A(n691), .Y(n622) );
  OA21X1_RVT U470 ( .A1(n694), .A2(n692), .A3(n319), .Y(wb_dat_o[3]) );
  OR2X1_RVT U471 ( .A1(n652), .A2(n693), .Y(n692) );
  INVX0_HVT U472 ( .A(n468), .Y(n694) );
  NOR2X0_RVT U473 ( .A1(n646), .A2(n667), .Y(wb_dat_o[7]) );
  AND3X1_RVT U474 ( .A1(wb_addr_i[0]), .A2(wb_addr_i[1]), .A3(n547), .Y(n644)
         );
  NOR2X0_RVT U475 ( .A1(n646), .A2(n695), .Y(wb_dat_o[1]) );
  AND2X1_RVT U476 ( .A1(rf_data_out[4]), .A2(n596), .Y(n696) );
  OA21X1_RVT U477 ( .A1(n698), .A2(n697), .A3(n319), .Y(wb_dat_o[5]) );
  AND2X1_RVT U478 ( .A1(rf_data_out[8]), .A2(n596), .Y(n698) );
  OR2X1_RVT U479 ( .A1(n702), .A2(n701), .Y(n700) );
  OR2X1_RVT U480 ( .A1(dlc[12]), .A2(dlc[14]), .Y(n701) );
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
  wire   n2, n3, n5, n6, n10, n11, n12, n13;

  AO22X1_HVT U2 ( .A1(n12), .A2(lcr[5]), .A3(n5), .A4(mcr[4]), .Y(
        wb_dat32_o[21]) );
  AO22X1_HVT U41 ( .A1(n6), .A2(lcr[4]), .A3(n5), .A4(mcr[3]), .Y(
        wb_dat32_o[20]) );
  AO22X1_HVT U40 ( .A1(n6), .A2(iir[2]), .A3(n5), .A4(rf_count[2]), .Y(
        wb_dat32_o[14]) );
  AO22X1_HVT U39 ( .A1(n6), .A2(iir[0]), .A3(n5), .A4(rf_count[0]), .Y(
        wb_dat32_o[12]) );
  AO22X1_HVT U31 ( .A1(n12), .A2(lsr[2]), .A3(n5), .A4(tstate[2]), .Y(
        wb_dat32_o[2]) );
  AO22X1_HVT U30 ( .A1(n12), .A2(ier[1]), .A3(n5), .A4(rstate[1]), .Y(
        wb_dat32_o[9]) );
  AO22X1_HVT U27 ( .A1(n12), .A2(lcr[1]), .A3(n5), .A4(mcr[0]), .Y(
        wb_dat32_o[17]) );
  AO22X1_HVT U26 ( .A1(n6), .A2(lcr[7]), .A3(n5), .A4(fcr[1]), .Y(
        wb_dat32_o[23]) );
  AO22X1_HVT U23 ( .A1(n6), .A2(lcr[0]), .A3(n5), .A4(rf_count[4]), .Y(
        wb_dat32_o[16]) );
  AO22X1_HVT U22 ( .A1(n12), .A2(lsr[0]), .A3(n5), .A4(tstate[0]), .Y(
        wb_dat32_o[0]) );
  AO22X1_HVT U7 ( .A1(n6), .A2(lsr[7]), .A3(n5), .A4(tf_count[4]), .Y(
        wb_dat32_o[7]) );
  AO22X1_HVT U11 ( .A1(n12), .A2(lcr[6]), .A3(n5), .A4(fcr[0]), .Y(
        wb_dat32_o[22]) );
  AO22X1_HVT U20 ( .A1(n12), .A2(lsr[3]), .A3(n5), .A4(tf_count[0]), .Y(
        wb_dat32_o[3]) );
  AO22X1_HVT U21 ( .A1(n6), .A2(ier[0]), .A3(n5), .A4(rstate[0]), .Y(
        wb_dat32_o[8]) );
  AO22X1_HVT U24 ( .A1(n6), .A2(lsr[6]), .A3(n5), .A4(tf_count[3]), .Y(
        wb_dat32_o[6]) );
  AO22X1_HVT U25 ( .A1(n12), .A2(lsr[5]), .A3(n5), .A4(tf_count[2]), .Y(
        wb_dat32_o[5]) );
  AO22X1_HVT U28 ( .A1(n6), .A2(lcr[2]), .A3(n5), .A4(mcr[1]), .Y(
        wb_dat32_o[18]) );
  AO22X1_HVT U29 ( .A1(n12), .A2(lcr[3]), .A3(n5), .A4(mcr[2]), .Y(
        wb_dat32_o[19]) );
  AO22X1_HVT U33 ( .A1(n6), .A2(iir[3]), .A3(n5), .A4(rf_count[3]), .Y(
        wb_dat32_o[15]) );
  AO22X1_HVT U34 ( .A1(n12), .A2(lsr[1]), .A3(n5), .A4(tstate[1]), .Y(
        wb_dat32_o[1]) );
  AO22X1_HVT U35 ( .A1(n6), .A2(lsr[4]), .A3(n5), .A4(tf_count[1]), .Y(
        wb_dat32_o[4]) );
  AO22X1_HVT U37 ( .A1(n12), .A2(iir[1]), .A3(n5), .A4(rf_count[1]), .Y(
        wb_dat32_o[13]) );
  AO22X1_HVT U38 ( .A1(n6), .A2(ier[3]), .A3(n5), .A4(rstate[3]), .Y(
        wb_dat32_o[11]) );
  AO22X1_HVT U4 ( .A1(n6), .A2(ier[2]), .A3(n5), .A4(rstate[2]), .Y(
        wb_dat32_o[10]) );
  AND2X1_RVT U12 ( .A1(n12), .A2(msr[6]), .Y(wb_dat32_o[30]) );
  AND2X1_RVT U14 ( .A1(n12), .A2(msr[7]), .Y(wb_dat32_o[31]) );
  AND2X1_RVT U15 ( .A1(n12), .A2(msr[4]), .Y(wb_dat32_o[28]) );
  AND2X1_RVT U16 ( .A1(n12), .A2(msr[1]), .Y(wb_dat32_o[25]) );
  AND2X1_RVT U17 ( .A1(n12), .A2(msr[2]), .Y(wb_dat32_o[26]) );
  AND2X1_RVT U18 ( .A1(n12), .A2(msr[3]), .Y(wb_dat32_o[27]) );
  AND2X1_RVT U6 ( .A1(n6), .A2(msr[0]), .Y(wb_dat32_o[24]) );
  OR2X1_HVT U36 ( .A1(wb_adr_i[2]), .A2(n3), .Y(n2) );
  OR2X1_RVT U32 ( .A1(n11), .A2(wb_adr_i[4]), .Y(n10) );
  INVX2_RVT U8 ( .A(n2), .Y(n12) );
  INVX0_RVT U10 ( .A(n2), .Y(n6) );
  AND2X1_RVT U3 ( .A1(n13), .A2(wb_adr_i[2]), .Y(n5) );
  OR3X1_RVT U5 ( .A1(n10), .A2(wb_adr_i[1]), .A3(wb_adr_i[0]), .Y(n3) );
  INVX0_RVT U9 ( .A(wb_adr_i[3]), .Y(n11) );
  AND2X1_HVT U13 ( .A1(n6), .A2(msr[5]), .Y(wb_dat32_o[29]) );
  INVX0_HVT U19 ( .A(n3), .Y(n13) );
endmodule


module uart_top_clkgate ( wb_clk_i, wb_rst_i, wb_adr_i, wb_dat_i, wb_dat_o, 
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
  wire   we_o, n3, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [7:0] wb_dat8_i;
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
  wire   [4:0] rf_count;
  wire   [4:0] tf_count;
  wire   [2:0] tstate;
  wire   [3:0] rstate;

  uart_wb wb_interface ( .clk(wb_clk_i), .wb_rst_i(wb_rst_i), .wb_we_i(wb_we_i), .wb_stb_i(wb_stb_i), .wb_cyc_i(wb_cyc_i), .wb_ack_o(wb_ack_o), .wb_adr_i({
        wb_adr_i[4:2], SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), 
        .wb_adr_int(wb_adr_int), .wb_dat_i(wb_dat_i), .wb_dat_o(wb_dat_o), 
        .wb_dat8_i(wb_dat8_i), .wb_dat8_o(wb_dat8_o), .wb_dat32_o(wb_dat32_o), 
        .wb_sel_i(wb_sel_i), .we_o(we_o), .re_o(n3) );
  uart_regs_clkgate regs ( .clk(wb_clk_i), .wb_rst_i(wb_rst_i), .wb_addr_i(
        wb_adr_int), .wb_dat_i(wb_dat8_i), .wb_dat_o(wb_dat8_o), .wb_we_i(we_o), .wb_re_i(n3), .modem_inputs({cts_pad_i, dsr_pad_i, ri_pad_i, dcd_pad_i}), 
        .stx_pad_o(stx_pad_o), .srx_pad_i(srx_pad_i), .ier(ier), .iir(iir), 
        .fcr(fcr), .mcr(mcr), .lcr(lcr), .msr(msr), .lsr(lsr), .rf_count(
        rf_count), .tf_count(tf_count), .tstate(tstate), .rstate(rstate), 
        .rts_pad_o(rts_pad_o), .dtr_pad_o(dtr_pad_o), .int_o(int_o) );
  uart_debug_if dbg ( .wb_dat32_o(wb_dat32_o), .wb_adr_i(wb_adr_int), .ier(ier), .iir(iir), .fcr(fcr), .mcr(mcr), .lcr(lcr), .msr(msr), .lsr(lsr), .rf_count(
        rf_count), .tf_count(tf_count), .tstate(tstate), .rstate(rstate) );
endmodule

