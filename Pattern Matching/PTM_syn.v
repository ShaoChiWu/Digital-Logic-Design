/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Apr 20 00:45:24 2018
/////////////////////////////////////////////////////////////


module PTM_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N73, n1, n3, n5, n7, n9, n10, n11, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54, n56, n57;
  wire   [9:0] ans;
  wire   [2:0] state;
  wire   [2:0] next_state;
  wire   [9:0] next_num;
  assign en = 1'b1;

  PTM_DW01_inc_0 add_91 ( .A(ans), .SUM({N66, N65, N64, N63, N62, N61, N60, 
        N59, N58, N57}) );
  PTM_DW01_inc_1 add_82 ( .A(addr), .SUM({N50, N49, N48, N47, N46, N45, N44, 
        N43, N42, N41}) );
  DFFRX1 \ans_reg[9]  ( .D(n39), .CK(clk), .RN(n54), .Q(ans[9]), .QN(n28) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n54), .Q(addr[8]), .QN(
        n25) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n54), .Q(addr[9]) );
  DFFRX1 \ans_reg[8]  ( .D(n48), .CK(clk), .RN(n54), .Q(ans[8]), .QN(n37) );
  DFFRX1 \ans_reg[2]  ( .D(n45), .CK(clk), .RN(n54), .Q(ans[2]), .QN(n34) );
  DFFRX1 \ans_reg[3]  ( .D(n44), .CK(clk), .RN(n54), .Q(ans[3]), .QN(n33) );
  DFFRX1 \ans_reg[4]  ( .D(n43), .CK(clk), .RN(n54), .Q(ans[4]), .QN(n32) );
  DFFRX1 \ans_reg[5]  ( .D(n42), .CK(clk), .RN(n54), .Q(ans[5]), .QN(n31) );
  DFFRX1 \ans_reg[6]  ( .D(n41), .CK(clk), .RN(n54), .Q(ans[6]), .QN(n30) );
  DFFRX1 \ans_reg[7]  ( .D(n40), .CK(clk), .RN(n54), .Q(ans[7]), .QN(n29) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n54), .Q(addr[3]), .QN(
        n24) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n54), .Q(addr[4]), .QN(
        n22) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n54), .Q(addr[5]), .QN(
        n23) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n54), .Q(addr[6]), .QN(
        n26) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n54), .Q(addr[7]), .QN(
        n27) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n54), .Q(addr[2]) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n54), .Q(addr[1]) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n54), .Q(state[0]), 
        .QN(n49) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n54), .Q(state[1]), 
        .QN(n50) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n54), .Q(addr[0]) );
  DFFRX1 \ans_reg[1]  ( .D(n46), .CK(clk), .RN(n54), .Q(ans[1]), .QN(n35) );
  DFFRX1 \ans_reg[0]  ( .D(n47), .CK(clk), .RN(n54), .Q(ans[0]), .QN(n36) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n54), .Q(state[2]), 
        .QN(n51) );
  NOR2X1 U60 ( .A(n10), .B(n49), .Y(N73) );
  NOR2X1 U61 ( .A(n10), .B(n49), .Y(flag) );
  NAND3X1 U62 ( .A(n49), .B(n50), .C(n16), .Y(n17) );
  OAI2BB1X1 U63 ( .A0N(N49), .A1N(n17), .B0(n18), .Y(next_num[8]) );
  OAI2BB1X1 U64 ( .A0N(N48), .A1N(n17), .B0(n18), .Y(next_num[7]) );
  OAI2BB1X1 U65 ( .A0N(N47), .A1N(n17), .B0(n18), .Y(next_num[6]) );
  OAI2BB1X1 U66 ( .A0N(N46), .A1N(n17), .B0(n18), .Y(next_num[5]) );
  OAI2BB1X1 U67 ( .A0N(N45), .A1N(n17), .B0(n18), .Y(next_num[4]) );
  OAI2BB1X1 U68 ( .A0N(N44), .A1N(n17), .B0(n18), .Y(next_num[3]) );
  OAI2BB1X1 U69 ( .A0N(N43), .A1N(n17), .B0(n18), .Y(next_num[2]) );
  OAI2BB1X1 U70 ( .A0N(N42), .A1N(n17), .B0(n18), .Y(next_num[1]) );
  CLKINVX1 U71 ( .A(n16), .Y(n57) );
  CLKINVX1 U72 ( .A(n52), .Y(fin) );
  OAI2BB2XL U73 ( .B0(n28), .B1(flag), .A0N(N66), .A1N(flag), .Y(n39) );
  NAND3X1 U74 ( .A(data[0]), .B(state[2]), .C(state[1]), .Y(n10) );
  OR4X1 U75 ( .A(start), .B(state[0]), .C(state[1]), .D(state[2]), .Y(n18) );
  NAND2X1 U76 ( .A(state[2]), .B(n49), .Y(n16) );
  OAI2BB2XL U77 ( .B0(n29), .B1(flag), .A0N(N64), .A1N(flag), .Y(n40) );
  OAI2BB2XL U78 ( .B0(n30), .B1(N73), .A0N(N63), .A1N(N73), .Y(n41) );
  OAI2BB2XL U79 ( .B0(n31), .B1(flag), .A0N(N62), .A1N(flag), .Y(n42) );
  OAI2BB2XL U80 ( .B0(n32), .B1(N73), .A0N(N61), .A1N(N73), .Y(n43) );
  OAI2BB2XL U81 ( .B0(n33), .B1(flag), .A0N(N60), .A1N(flag), .Y(n44) );
  OAI2BB2XL U82 ( .B0(n34), .B1(N73), .A0N(N59), .A1N(N73), .Y(n45) );
  OAI2BB2XL U83 ( .B0(n35), .B1(flag), .A0N(N58), .A1N(flag), .Y(n46) );
  OAI2BB2XL U84 ( .B0(n36), .B1(N73), .A0N(N57), .A1N(N73), .Y(n47) );
  OAI2BB2XL U85 ( .B0(n37), .B1(N73), .A0N(N65), .A1N(N73), .Y(n48) );
  AOI2BB1X1 U86 ( .A0N(state[2]), .A1N(n49), .B0(n57), .Y(n3) );
  OAI2BB1X1 U87 ( .A0N(N50), .A1N(n17), .B0(n18), .Y(next_num[9]) );
  OAI2BB1X1 U88 ( .A0N(N41), .A1N(n17), .B0(n18), .Y(next_num[0]) );
  OAI32X1 U89 ( .A0(n50), .A1(n3), .A2(n56), .B0(n5), .B1(n51), .Y(
        next_state[2]) );
  AOI22X1 U90 ( .A0(n7), .A1(n50), .B0(state[0]), .B1(n56), .Y(n5) );
  NAND2X1 U91 ( .A(data[0]), .B(n49), .Y(n7) );
  OAI211X1 U92 ( .A0(data[0]), .A1(n3), .B0(n14), .C0(n15), .Y(next_state[0])
         );
  NAND4X1 U93 ( .A(start), .B(n49), .C(n50), .D(n51), .Y(n15) );
  OAI21XL U94 ( .A0(n57), .A1(n56), .B0(state[1]), .Y(n14) );
  OAI211X1 U95 ( .A0(n49), .A1(n9), .B0(n10), .C0(n11), .Y(next_state[1]) );
  NAND2X1 U96 ( .A(n13), .B(n50), .Y(n9) );
  AOI32X1 U97 ( .A0(n49), .A1(n51), .A2(state[1]), .B0(n57), .B1(data[0]), .Y(
        n11) );
  XOR2X1 U98 ( .A(state[2]), .B(data[0]), .Y(n13) );
  CLKINVX1 U99 ( .A(rst), .Y(n54) );
  NAND3X1 U100 ( .A(addr[0]), .B(addr[2]), .C(addr[1]), .Y(n21) );
  CLKBUFX3 U101 ( .A(n1), .Y(n52) );
  NAND4X1 U102 ( .A(start), .B(addr[9]), .C(n19), .D(n20), .Y(n1) );
  NOR3X1 U103 ( .A(n27), .B(n25), .C(n26), .Y(n19) );
  NOR4X1 U104 ( .A(n21), .B(n24), .C(n22), .D(n23), .Y(n20) );
  NOR2X1 U105 ( .A(n36), .B(n52), .Y(result[0]) );
  NOR2X1 U106 ( .A(n35), .B(n52), .Y(result[1]) );
  NOR2X1 U107 ( .A(n34), .B(n52), .Y(result[2]) );
  NOR2X1 U108 ( .A(n33), .B(n52), .Y(result[3]) );
  NOR2X1 U109 ( .A(n32), .B(n52), .Y(result[4]) );
  NOR2X1 U110 ( .A(n31), .B(n52), .Y(result[5]) );
  NOR2X1 U111 ( .A(n30), .B(n52), .Y(result[6]) );
  NOR2X1 U112 ( .A(n29), .B(n52), .Y(result[7]) );
  NOR2X1 U113 ( .A(n37), .B(n52), .Y(result[8]) );
  NOR2X1 U114 ( .A(n28), .B(n52), .Y(result[9]) );
  CLKINVX1 U115 ( .A(data[0]), .Y(n56) );
endmodule

