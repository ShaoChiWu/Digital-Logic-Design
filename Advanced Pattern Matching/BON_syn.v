/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Apr 22 00:31:02 2018
/////////////////////////////////////////////////////////////


module BON_DW01_inc_0 ( A, SUM );
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


module BON_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module BON ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N86, N87, N88, N89,
         N90, N91, N92, N93, N94, N95, N105, n1, n5, n8, n9, n10, n11, n12,
         n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n123, n124, n125,
         n127, n128, n129, n130, n131, n133, n134, n135;
  wire   [9:0] ans;
  wire   [2:0] state;
  wire   [2:0] next_state;
  wire   [9:0] next_num;
  assign en = 1'b1;

  BON_DW01_inc_0 add_114 ( .A(ans), .SUM({N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86}) );
  BON_DW01_inc_1 add_85 ( .A(addr), .SUM({N54, N53, N52, N51, N50, N49, N48, 
        N47, N46, N45}) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n131), .Q(addr[9]), 
        .QN(n29) );
  DFFRX1 \ans_reg[9]  ( .D(n42), .CK(clk), .RN(n131), .Q(ans[9]), .QN(n30) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n131), .Q(addr[8]) );
  DFFRX1 again_reg ( .D(n52), .CK(clk), .RN(n131), .QN(n40) );
  DFFRX1 \ans_reg[2]  ( .D(n49), .CK(clk), .RN(n131), .Q(ans[2]), .QN(n37) );
  DFFRX1 \ans_reg[3]  ( .D(n48), .CK(clk), .RN(n131), .Q(ans[3]), .QN(n36) );
  DFFRX1 \ans_reg[4]  ( .D(n47), .CK(clk), .RN(n131), .Q(ans[4]), .QN(n35) );
  DFFRX1 \ans_reg[5]  ( .D(n46), .CK(clk), .RN(n131), .Q(ans[5]), .QN(n34) );
  DFFRX1 \ans_reg[6]  ( .D(n45), .CK(clk), .RN(n131), .Q(ans[6]), .QN(n33) );
  DFFRX1 \ans_reg[7]  ( .D(n44), .CK(clk), .RN(n131), .Q(ans[7]), .QN(n32) );
  DFFRX1 \ans_reg[8]  ( .D(n43), .CK(clk), .RN(n131), .Q(ans[8]), .QN(n31) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n131), .Q(addr[7]), 
        .QN(n26) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n131), .Q(addr[6]), 
        .QN(n28) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n131), .Q(addr[5]), 
        .QN(n27) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n131), .Q(addr[4]), 
        .QN(n24) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n131), .Q(addr[2]), 
        .QN(n25) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n131), .Q(addr[1]) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n131), .Q(addr[3]) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n131), .Q(state[0]), 
        .QN(n123) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n131), .Q(addr[0]) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n131), .Q(state[1]), 
        .QN(n125) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n131), .Q(state[2]), 
        .QN(n124) );
  DFFRX1 \ans_reg[1]  ( .D(n50), .CK(clk), .RN(n131), .Q(ans[1]), .QN(n38) );
  DFFRX1 \ans_reg[0]  ( .D(n51), .CK(clk), .RN(n131), .Q(ans[0]), .QN(n39) );
  CLKINVX1 U124 ( .A(n128), .Y(n130) );
  CLKINVX1 U125 ( .A(n9), .Y(n135) );
  CLKINVX1 U126 ( .A(n127), .Y(fin) );
  OAI2BB2XL U127 ( .B0(n30), .B1(flag), .A0N(N95), .A1N(flag), .Y(n42) );
  NOR3X1 U128 ( .A(n123), .B(n40), .C(n12), .Y(N105) );
  NOR3X1 U129 ( .A(n123), .B(n40), .C(n12), .Y(flag) );
  NAND2BX1 U130 ( .AN(start), .B(n128), .Y(n129) );
  NAND3X1 U131 ( .A(state[1]), .B(data[0]), .C(state[2]), .Y(n12) );
  NOR2X1 U132 ( .A(n123), .B(state[2]), .Y(n10) );
  NAND2X1 U133 ( .A(state[1]), .B(n123), .Y(n9) );
  OAI2BB2XL U134 ( .B0(n31), .B1(N105), .A0N(N94), .A1N(N105), .Y(n43) );
  OAI2BB2XL U135 ( .B0(n32), .B1(flag), .A0N(N93), .A1N(flag), .Y(n44) );
  OAI2BB2XL U136 ( .B0(n33), .B1(N105), .A0N(N92), .A1N(N105), .Y(n45) );
  OAI2BB2XL U137 ( .B0(n34), .B1(flag), .A0N(N91), .A1N(flag), .Y(n46) );
  OAI2BB2XL U138 ( .B0(n35), .B1(N105), .A0N(N90), .A1N(N105), .Y(n47) );
  OAI2BB2XL U139 ( .B0(n36), .B1(flag), .A0N(N89), .A1N(flag), .Y(n48) );
  OAI2BB2XL U140 ( .B0(n37), .B1(N105), .A0N(N88), .A1N(N105), .Y(n49) );
  OAI2BB2XL U141 ( .B0(n38), .B1(flag), .A0N(N87), .A1N(flag), .Y(n50) );
  OAI2BB2XL U142 ( .B0(n39), .B1(N105), .A0N(N86), .A1N(N105), .Y(n51) );
  OAI22XL U143 ( .A0(n40), .A1(n18), .B0(n123), .B1(n12), .Y(n52) );
  AOI221XL U144 ( .A0(n19), .A1(n124), .B0(n133), .B1(n125), .C0(n20), .Y(n18)
         );
  OAI22XL U145 ( .A0(n135), .A1(n133), .B0(state[0]), .B1(data[0]), .Y(n19) );
  OAI31XL U146 ( .A0(n124), .A1(data[0]), .A2(n123), .B0(n12), .Y(n20) );
  OAI32X1 U147 ( .A0(n125), .A1(n134), .A2(n133), .B0(n5), .B1(n124), .Y(
        next_state[2]) );
  CLKINVX1 U148 ( .A(n10), .Y(n134) );
  AOI2BB1X1 U149 ( .A0N(state[1]), .A1N(n123), .B0(n8), .Y(n5) );
  XOR2X1 U150 ( .A(n9), .B(data[0]), .Y(n8) );
  OAI221XL U151 ( .A0(data[0]), .A1(n16), .B0(n9), .B1(n124), .C0(n17), .Y(
        next_state[0]) );
  NAND4X1 U152 ( .A(start), .B(n123), .C(n125), .D(n124), .Y(n17) );
  AOI211X1 U153 ( .A0(state[2]), .A1(n123), .B0(state[1]), .C0(n10), .Y(n16)
         );
  OAI211X1 U154 ( .A0(n123), .A1(n11), .B0(n12), .C0(n13), .Y(next_state[1])
         );
  AOI32X1 U155 ( .A0(data[0]), .A1(n123), .A2(state[2]), .B0(n135), .B1(n124), 
        .Y(n13) );
  NAND2X1 U156 ( .A(n15), .B(n125), .Y(n11) );
  XOR2X1 U157 ( .A(state[2]), .B(data[0]), .Y(n15) );
  INVX3 U158 ( .A(rst), .Y(n131) );
  NAND3X1 U159 ( .A(addr[0]), .B(addr[1]), .C(addr[3]), .Y(n23) );
  CLKBUFX3 U160 ( .A(n1), .Y(n127) );
  NAND4X1 U161 ( .A(start), .B(addr[8]), .C(n21), .D(n22), .Y(n1) );
  NOR3X1 U162 ( .A(n29), .B(n27), .C(n28), .Y(n21) );
  NOR4X1 U163 ( .A(n23), .B(n26), .C(n24), .D(n25), .Y(n22) );
  NOR2X1 U164 ( .A(n39), .B(n127), .Y(result[0]) );
  NOR2X1 U165 ( .A(n38), .B(n127), .Y(result[1]) );
  NOR2X1 U166 ( .A(n37), .B(n127), .Y(result[2]) );
  NOR2X1 U167 ( .A(n36), .B(n127), .Y(result[3]) );
  NOR2X1 U168 ( .A(n35), .B(n127), .Y(result[4]) );
  NOR2X1 U169 ( .A(n34), .B(n127), .Y(result[5]) );
  NOR2X1 U170 ( .A(n33), .B(n127), .Y(result[6]) );
  NOR2X1 U171 ( .A(n32), .B(n127), .Y(result[7]) );
  NOR2X1 U172 ( .A(n31), .B(n127), .Y(result[8]) );
  NOR2X1 U173 ( .A(n30), .B(n127), .Y(result[9]) );
  CLKINVX1 U174 ( .A(data[0]), .Y(n133) );
  NOR3X1 U175 ( .A(state[2]), .B(state[0]), .C(state[1]), .Y(n128) );
  OAI2BB1X1 U176 ( .A0N(N45), .A1N(n130), .B0(n129), .Y(next_num[0]) );
  OAI2BB1X1 U177 ( .A0N(N46), .A1N(n130), .B0(n129), .Y(next_num[1]) );
  OAI2BB1X1 U178 ( .A0N(N47), .A1N(n130), .B0(n129), .Y(next_num[2]) );
  OAI2BB1X1 U179 ( .A0N(N48), .A1N(n130), .B0(n129), .Y(next_num[3]) );
  OAI2BB1X1 U180 ( .A0N(N49), .A1N(n130), .B0(n129), .Y(next_num[4]) );
  OAI2BB1X1 U181 ( .A0N(N50), .A1N(n130), .B0(n129), .Y(next_num[5]) );
  OAI2BB1X1 U182 ( .A0N(N51), .A1N(n130), .B0(n129), .Y(next_num[6]) );
  OAI2BB1X1 U183 ( .A0N(N52), .A1N(n130), .B0(n129), .Y(next_num[7]) );
  OAI2BB1X1 U184 ( .A0N(N53), .A1N(n130), .B0(n129), .Y(next_num[8]) );
  OAI2BB1X1 U185 ( .A0N(N54), .A1N(n130), .B0(n129), .Y(next_num[9]) );
endmodule

