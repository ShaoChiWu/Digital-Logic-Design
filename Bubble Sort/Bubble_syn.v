/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Jun 11 23:21:51 2018
/////////////////////////////////////////////////////////////


module Bubble_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [31:0] A;
  input [31:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323;

  OAI2BB1X1 U157 ( .A0N(n280), .A1N(n226), .B0(n269), .Y(n267) );
  OA22X1 U158 ( .A0(n275), .A1(n276), .B0(n277), .B1(n275), .Y(n226) );
  CLKINVX1 U159 ( .A(n307), .Y(n239) );
  CLKINVX1 U160 ( .A(n272), .Y(n231) );
  CLKINVX1 U161 ( .A(n286), .Y(n228) );
  CLKINVX1 U162 ( .A(B[1]), .Y(n242) );
  CLKINVX1 U163 ( .A(n317), .Y(n232) );
  CLKINVX1 U164 ( .A(A[15]), .Y(n260) );
  CLKINVX1 U165 ( .A(B[31]), .Y(n227) );
  CLKINVX1 U166 ( .A(A[27]), .Y(n248) );
  CLKINVX1 U167 ( .A(A[20]), .Y(n255) );
  CLKINVX1 U168 ( .A(A[24]), .Y(n251) );
  CLKINVX1 U169 ( .A(A[14]), .Y(n261) );
  CLKINVX1 U170 ( .A(A[18]), .Y(n257) );
  CLKINVX1 U171 ( .A(A[22]), .Y(n253) );
  CLKINVX1 U172 ( .A(A[30]), .Y(n246) );
  CLKINVX1 U173 ( .A(A[26]), .Y(n249) );
  CLKINVX1 U174 ( .A(A[2]), .Y(n247) );
  CLKINVX1 U175 ( .A(A[6]), .Y(n244) );
  CLKINVX1 U176 ( .A(A[16]), .Y(n259) );
  CLKINVX1 U177 ( .A(A[3]), .Y(n245) );
  CLKINVX1 U178 ( .A(A[17]), .Y(n258) );
  CLKINVX1 U179 ( .A(A[7]), .Y(n243) );
  CLKINVX1 U180 ( .A(A[19]), .Y(n256) );
  CLKINVX1 U181 ( .A(A[23]), .Y(n252) );
  CLKINVX1 U182 ( .A(A[21]), .Y(n254) );
  CLKINVX1 U183 ( .A(A[25]), .Y(n250) );
  CLKINVX1 U184 ( .A(B[12]), .Y(n234) );
  CLKINVX1 U185 ( .A(B[28]), .Y(n230) );
  CLKINVX1 U186 ( .A(B[4]), .Y(n241) );
  CLKINVX1 U187 ( .A(B[10]), .Y(n236) );
  CLKINVX1 U188 ( .A(B[8]), .Y(n238) );
  CLKINVX1 U189 ( .A(B[13]), .Y(n233) );
  CLKINVX1 U190 ( .A(B[5]), .Y(n240) );
  CLKINVX1 U191 ( .A(B[11]), .Y(n235) );
  CLKINVX1 U192 ( .A(B[9]), .Y(n237) );
  CLKINVX1 U193 ( .A(B[29]), .Y(n229) );
  OAI31XL U194 ( .A0(n262), .A1(n263), .A2(n264), .B0(n265), .Y(GE_LT_GT_LE)
         );
  OAI22XL U195 ( .A0(n266), .A1(n267), .B0(n268), .B1(n266), .Y(n265) );
  OAI22XL U196 ( .A0(n270), .A1(n271), .B0(n272), .B1(n270), .Y(n269) );
  OAI32X1 U197 ( .A0(n255), .A1(B[20]), .A2(n273), .B0(B[21]), .B1(n254), .Y(
        n271) );
  OAI32X1 U198 ( .A0(n253), .A1(B[22]), .A2(n274), .B0(B[23]), .B1(n252), .Y(
        n270) );
  OAI32X1 U199 ( .A0(n259), .A1(B[16]), .A2(n278), .B0(B[17]), .B1(n258), .Y(
        n276) );
  OAI32X1 U200 ( .A0(n257), .A1(B[18]), .A2(n279), .B0(B[19]), .B1(n256), .Y(
        n275) );
  OAI21XL U201 ( .A0(n281), .A1(n282), .B0(n283), .Y(n266) );
  OAI22XL U202 ( .A0(n284), .A1(n228), .B0(n285), .B1(n284), .Y(n283) );
  AOI32X1 U203 ( .A0(A[28]), .A1(n230), .A2(n287), .B0(n229), .B1(A[29]), .Y(
        n286) );
  OAI32X1 U204 ( .A0(n246), .A1(B[30]), .A2(n288), .B0(A[31]), .B1(n227), .Y(
        n284) );
  OAI22XL U205 ( .A0(n289), .A1(n290), .B0(n291), .B1(n289), .Y(n282) );
  OAI32X1 U206 ( .A0(n251), .A1(B[24]), .A2(n292), .B0(B[25]), .B1(n250), .Y(
        n290) );
  OAI32X1 U207 ( .A0(n249), .A1(B[26]), .A2(n293), .B0(B[27]), .B1(n248), .Y(
        n289) );
  OAI22XL U208 ( .A0(n294), .A1(n295), .B0(n296), .B1(n294), .Y(n264) );
  NOR3X1 U209 ( .A(n297), .B(n298), .C(n299), .Y(n296) );
  OAI21XL U210 ( .A0(A[8]), .A1(n238), .B0(n300), .Y(n297) );
  OAI31XL U211 ( .A0(n301), .A1(n302), .A2(n303), .B0(n304), .Y(n295) );
  AO22X1 U212 ( .A0(n239), .A1(n305), .B0(n303), .B1(n239), .Y(n304) );
  AOI32X1 U213 ( .A0(A[4]), .A1(n241), .A2(n306), .B0(n240), .B1(A[5]), .Y(
        n305) );
  OAI32X1 U214 ( .A0(n244), .A1(B[6]), .A2(n308), .B0(B[7]), .B1(n243), .Y(
        n307) );
  AO21X1 U215 ( .A0(n244), .A1(B[6]), .B0(n308), .Y(n303) );
  NOR2BX1 U216 ( .AN(B[7]), .B(A[7]), .Y(n308) );
  AOI221XL U217 ( .A0(A[1]), .A1(n242), .B0(n309), .B1(A[0]), .C0(n310), .Y(
        n302) );
  AOI2BB1X1 U218 ( .A0N(n242), .A1N(A[1]), .B0(B[0]), .Y(n309) );
  OAI221XL U219 ( .A0(A[4]), .A1(n241), .B0(n311), .B1(n310), .C0(n306), .Y(
        n301) );
  OR2X1 U220 ( .A(A[5]), .B(n240), .Y(n306) );
  OAI32X1 U221 ( .A0(n247), .A1(B[2]), .A2(n312), .B0(B[3]), .B1(n245), .Y(
        n310) );
  AOI21X1 U222 ( .A0(B[2]), .A1(n247), .B0(n312), .Y(n311) );
  AND2X1 U223 ( .A(B[3]), .B(n245), .Y(n312) );
  OAI21XL U224 ( .A0(n298), .A1(n313), .B0(n314), .Y(n294) );
  OAI22XL U225 ( .A0(n315), .A1(n232), .B0(n316), .B1(n315), .Y(n314) );
  AOI32X1 U226 ( .A0(A[12]), .A1(n234), .A2(n318), .B0(n233), .B1(A[13]), .Y(
        n317) );
  OAI32X1 U227 ( .A0(n261), .A1(B[14]), .A2(n319), .B0(B[15]), .B1(n260), .Y(
        n315) );
  AO22X1 U228 ( .A0(n320), .A1(n321), .B0(n299), .B1(n320), .Y(n313) );
  OAI21XL U229 ( .A0(A[10]), .A1(n236), .B0(n322), .Y(n299) );
  AOI32X1 U230 ( .A0(A[8]), .A1(n238), .A2(n300), .B0(n237), .B1(A[9]), .Y(
        n321) );
  OR2X1 U231 ( .A(A[9]), .B(n237), .Y(n300) );
  AOI32X1 U232 ( .A0(A[10]), .A1(n236), .A2(n322), .B0(n235), .B1(A[11]), .Y(
        n320) );
  OR2X1 U233 ( .A(A[11]), .B(n235), .Y(n322) );
  OAI211X1 U234 ( .A0(A[12]), .A1(n234), .B0(n318), .C0(n316), .Y(n298) );
  AOI21X1 U235 ( .A0(n261), .A1(B[14]), .B0(n319), .Y(n316) );
  NOR2BX1 U236 ( .AN(B[15]), .B(A[15]), .Y(n319) );
  OR2X1 U237 ( .A(A[13]), .B(n233), .Y(n318) );
  AO21X1 U238 ( .A0(n259), .A1(B[16]), .B0(n278), .Y(n263) );
  AND2X1 U239 ( .A(B[17]), .B(n258), .Y(n278) );
  NAND3X1 U240 ( .A(n268), .B(n280), .C(n277), .Y(n262) );
  AOI21X1 U241 ( .A0(n257), .A1(B[18]), .B0(n279), .Y(n277) );
  NOR2BX1 U242 ( .AN(B[19]), .B(A[19]), .Y(n279) );
  AOI211X1 U243 ( .A0(n255), .A1(B[20]), .B0(n273), .C0(n231), .Y(n280) );
  AOI21X1 U244 ( .A0(n253), .A1(B[22]), .B0(n274), .Y(n272) );
  NOR2BX1 U245 ( .AN(B[23]), .B(A[23]), .Y(n274) );
  NOR2BX1 U246 ( .AN(B[21]), .B(A[21]), .Y(n273) );
  AOI211X1 U247 ( .A0(n251), .A1(B[24]), .B0(n292), .C0(n323), .Y(n268) );
  NAND2BX1 U248 ( .AN(n281), .B(n291), .Y(n323) );
  AOI21X1 U249 ( .A0(n249), .A1(B[26]), .B0(n293), .Y(n291) );
  NOR2BX1 U250 ( .AN(B[27]), .B(A[27]), .Y(n293) );
  OAI211X1 U251 ( .A0(A[28]), .A1(n230), .B0(n287), .C0(n285), .Y(n281) );
  AOI21X1 U252 ( .A0(n246), .A1(B[30]), .B0(n288), .Y(n285) );
  NOR2BX1 U253 ( .AN(A[31]), .B(B[31]), .Y(n288) );
  OR2X1 U254 ( .A(A[29]), .B(n229), .Y(n287) );
  NOR2BX1 U255 ( .AN(B[25]), .B(A[25]), .Y(n292) );
endmodule


module Bubble_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module Bubble ( clk, rst, Start, RData, RAddr, WAddr, WData, Wen, Finish );
  input [31:0] RData;
  output [9:0] RAddr;
  output [9:0] WAddr;
  output [31:0] WData;
  input clk, rst, Start;
  output Wen, Finish;
  wire   N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N42, N43, N44, N45,
         N46, N47, N48, N49, N50, N51, N121, N123, N124, N125, N126, N127,
         N128, N129, N130, N143, N145, N146, N147, N148, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, n29, n31,
         n95, n96, n97, n99, n103, n104, n105, n107, n109, n111, n113, n115,
         n117, n119, n121, n123, n127, n128, n129, n130, n131, n133, n135,
         n136, n137, n138, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, \sub_122_2_aco/B[0] , n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433;
  wire   [2:0] state;
  wire   [31:0] temp1;
  wire   [9:0] size;
  wire   [9:0] next_Addr;
  wire   [2:0] next_state;
  wire   [10:0] \sub_122_2_aco/carry ;
  wire   [9:1] \add_119_2/carry ;
  wire   [10:0] \r338/carry ;
  assign RAddr[9] = WAddr[9];
  assign RAddr[8] = WAddr[8];
  assign RAddr[7] = WAddr[7];
  assign RAddr[6] = WAddr[6];
  assign RAddr[5] = WAddr[5];
  assign RAddr[4] = WAddr[4];
  assign RAddr[3] = WAddr[3];
  assign RAddr[2] = WAddr[2];
  assign RAddr[1] = WAddr[1];
  assign RAddr[0] = N143;
  assign WAddr[0] = N143;

  Bubble_DW_cmp_0 r337 ( .A(temp1), .B(RData), .TC(1'b1), .GE_LT(1'b0), 
        .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N51) );
  Bubble_DW01_inc_0 r335 ( .A({WAddr[9:1], N143}), .SUM({N40, N39, N38, N37, 
        N36, N35, N34, N33, N32, N31}) );
  DFFRX1 Wen_reg ( .D(n199), .CK(n396), .RN(n381), .Q(Wen), .QN(n163) );
  DFFRX1 \WData_reg[31]  ( .D(n231), .CK(n396), .RN(n378), .Q(WData[31]), .QN(
        n195) );
  DFFRX1 \WData_reg[30]  ( .D(n230), .CK(n396), .RN(n378), .Q(WData[30]), .QN(
        n194) );
  DFFRX1 \WData_reg[29]  ( .D(n229), .CK(n396), .RN(n378), .Q(WData[29]), .QN(
        n193) );
  DFFRX1 \WData_reg[28]  ( .D(n228), .CK(n396), .RN(n378), .Q(WData[28]), .QN(
        n192) );
  DFFRX1 \WData_reg[27]  ( .D(n227), .CK(n396), .RN(n379), .Q(WData[27]), .QN(
        n191) );
  DFFRX1 \WData_reg[26]  ( .D(n226), .CK(n396), .RN(n379), .Q(WData[26]), .QN(
        n190) );
  DFFRX1 \WData_reg[25]  ( .D(n225), .CK(n396), .RN(n379), .Q(WData[25]), .QN(
        n189) );
  DFFRX1 \WData_reg[24]  ( .D(n224), .CK(n396), .RN(n379), .Q(WData[24]), .QN(
        n188) );
  DFFRX1 \WData_reg[23]  ( .D(n223), .CK(n396), .RN(n379), .Q(WData[23]), .QN(
        n187) );
  DFFRX1 \WData_reg[22]  ( .D(n222), .CK(n396), .RN(n379), .Q(WData[22]), .QN(
        n186) );
  DFFRX1 \WData_reg[21]  ( .D(n221), .CK(n396), .RN(n379), .Q(WData[21]), .QN(
        n185) );
  DFFRX1 \WData_reg[20]  ( .D(n220), .CK(n396), .RN(n379), .Q(WData[20]), .QN(
        n184) );
  DFFRX1 \WData_reg[19]  ( .D(n219), .CK(n396), .RN(n379), .Q(WData[19]), .QN(
        n183) );
  DFFRX1 \WData_reg[18]  ( .D(n218), .CK(n396), .RN(n379), .Q(WData[18]), .QN(
        n182) );
  DFFRX1 \WData_reg[17]  ( .D(n217), .CK(n396), .RN(n379), .Q(WData[17]), .QN(
        n181) );
  DFFRX1 \WData_reg[16]  ( .D(n216), .CK(n396), .RN(n379), .Q(WData[16]), .QN(
        n180) );
  DFFRX1 \WData_reg[15]  ( .D(n215), .CK(n396), .RN(n380), .Q(WData[15]), .QN(
        n179) );
  DFFRX1 \WData_reg[14]  ( .D(n214), .CK(n396), .RN(n380), .Q(WData[14]), .QN(
        n178) );
  DFFRX1 \WData_reg[13]  ( .D(n213), .CK(n396), .RN(n380), .Q(WData[13]), .QN(
        n177) );
  DFFRX1 \WData_reg[12]  ( .D(n212), .CK(n396), .RN(n380), .Q(WData[12]), .QN(
        n176) );
  DFFRX1 \WData_reg[11]  ( .D(n211), .CK(n396), .RN(n380), .Q(WData[11]), .QN(
        n175) );
  DFFRX1 \WData_reg[10]  ( .D(n210), .CK(n396), .RN(n380), .Q(WData[10]), .QN(
        n174) );
  DFFRX1 \WData_reg[9]  ( .D(n209), .CK(n396), .RN(n380), .Q(WData[9]), .QN(
        n173) );
  DFFRX1 \WData_reg[8]  ( .D(n208), .CK(n396), .RN(n380), .Q(WData[8]), .QN(
        n172) );
  DFFRX1 \WData_reg[7]  ( .D(n207), .CK(n396), .RN(n380), .Q(WData[7]), .QN(
        n171) );
  DFFRX1 \WData_reg[6]  ( .D(n206), .CK(n396), .RN(n380), .Q(WData[6]), .QN(
        n170) );
  DFFRX1 \WData_reg[5]  ( .D(n205), .CK(n396), .RN(n380), .Q(WData[5]), .QN(
        n169) );
  DFFRX1 \WData_reg[4]  ( .D(n204), .CK(n396), .RN(n380), .Q(WData[4]), .QN(
        n168) );
  DFFRX1 \WData_reg[3]  ( .D(n203), .CK(n396), .RN(n381), .Q(WData[3]), .QN(
        n167) );
  DFFRX1 \WData_reg[2]  ( .D(n202), .CK(n396), .RN(n381), .Q(WData[2]), .QN(
        n166) );
  DFFRX1 \WData_reg[1]  ( .D(n201), .CK(n396), .RN(n381), .Q(WData[1]), .QN(
        n165) );
  DFFRX1 \WData_reg[0]  ( .D(n200), .CK(n396), .RN(n381), .Q(WData[0]), .QN(
        n164) );
  DFFRX1 Finish_reg ( .D(n232), .CK(n396), .RN(n378), .Q(Finish), .QN(n196) );
  DFFRX1 swap_reg ( .D(n233), .CK(n396), .RN(n378), .QN(n347) );
  DFFNSRX1 \Addr_reg[5]  ( .D(next_Addr[5]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[5]), .QN(n160) );
  DFFNSRX1 \Addr_reg[4]  ( .D(next_Addr[4]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[4]), .QN(n162) );
  DFFNSRX1 \Addr_reg[2]  ( .D(next_Addr[2]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[2]), .QN(n159) );
  DFFNSRX1 \Addr_reg[1]  ( .D(next_Addr[1]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[1]), .QN(n161) );
  DFFRX1 \temp1_reg[0]  ( .D(n265), .CK(n396), .RN(n375), .Q(temp1[0]), .QN(
        n344) );
  DFFRX1 \temp1_reg[1]  ( .D(n244), .CK(n396), .RN(n377), .Q(temp1[1]), .QN(
        n331) );
  DFFRX1 \temp1_reg[31]  ( .D(n257), .CK(n396), .RN(n376), .Q(temp1[31]), .QN(
        n330) );
  DFFRX1 \temp1_reg[9]  ( .D(n264), .CK(n396), .RN(n375), .Q(temp1[9]), .QN(
        n326) );
  DFFRX1 \temp1_reg[5]  ( .D(n260), .CK(n396), .RN(n376), .Q(temp1[5]), .QN(
        n325) );
  DFFRX1 \temp1_reg[29]  ( .D(n254), .CK(n396), .RN(n376), .Q(temp1[29]), .QN(
        n329) );
  DFFRX1 \temp1_reg[13]  ( .D(n237), .CK(n396), .RN(n378), .Q(temp1[13]), .QN(
        n328) );
  DFFRX1 \temp1_reg[11]  ( .D(n235), .CK(n396), .RN(n378), .Q(temp1[11]), .QN(
        n327) );
  DFFRX1 \temp1_reg[8]  ( .D(n263), .CK(n396), .RN(n376), .Q(temp1[8]), .QN(
        n323) );
  DFFRX1 \temp1_reg[10]  ( .D(n234), .CK(n396), .RN(n378), .Q(temp1[10]), .QN(
        n324) );
  DFFRX1 \temp1_reg[4]  ( .D(n259), .CK(n396), .RN(n376), .Q(temp1[4]), .QN(
        n322) );
  DFFRX1 \temp1_reg[28]  ( .D(n253), .CK(n396), .RN(n376), .Q(temp1[28]), .QN(
        n314) );
  DFFRX1 \temp1_reg[12]  ( .D(n236), .CK(n396), .RN(n378), .Q(temp1[12]), .QN(
        n313) );
  DFFRX1 \temp1_reg[6]  ( .D(n261), .CK(n396), .RN(n376), .Q(temp1[6]), .QN(
        n334) );
  DFFRX1 \temp1_reg[3]  ( .D(n258), .CK(n396), .RN(n376), .Q(temp1[3]), .QN(
        n333) );
  DFFRX1 \temp1_reg[30]  ( .D(n256), .CK(n396), .RN(n376), .Q(temp1[30]), .QN(
        n343) );
  DFFRX1 \temp1_reg[2]  ( .D(n255), .CK(n396), .RN(n376), .Q(temp1[2]), .QN(
        n332) );
  DFFRX1 \temp1_reg[26]  ( .D(n251), .CK(n396), .RN(n377), .Q(temp1[26]), .QN(
        n342) );
  DFFRX1 \temp1_reg[24]  ( .D(n249), .CK(n396), .RN(n377), .Q(temp1[24]), .QN(
        n341) );
  DFFRX1 \temp1_reg[22]  ( .D(n247), .CK(n396), .RN(n377), .Q(temp1[22]), .QN(
        n340) );
  DFFRX1 \temp1_reg[20]  ( .D(n245), .CK(n396), .RN(n377), .Q(temp1[20]), .QN(
        n339) );
  DFFRX1 \temp1_reg[18]  ( .D(n242), .CK(n396), .RN(n377), .Q(temp1[18]), .QN(
        n338) );
  DFFRX1 \temp1_reg[17]  ( .D(n241), .CK(n396), .RN(n377), .Q(temp1[17]), .QN(
        n337) );
  DFFRX1 \temp1_reg[16]  ( .D(n240), .CK(n396), .RN(n377), .Q(temp1[16]), .QN(
        n336) );
  DFFRX1 \temp1_reg[14]  ( .D(n238), .CK(n396), .RN(n378), .Q(temp1[14]), .QN(
        n335) );
  DFFRX1 \temp1_reg[27]  ( .D(n252), .CK(n396), .RN(n376), .Q(temp1[27]), .QN(
        n321) );
  DFFRX1 \temp1_reg[25]  ( .D(n250), .CK(n396), .RN(n377), .Q(temp1[25]), .QN(
        n320) );
  DFFRX1 \temp1_reg[23]  ( .D(n248), .CK(n396), .RN(n377), .Q(temp1[23]), .QN(
        n319) );
  DFFRX1 \temp1_reg[21]  ( .D(n246), .CK(n396), .RN(n377), .Q(temp1[21]), .QN(
        n318) );
  DFFRX1 \temp1_reg[19]  ( .D(n243), .CK(n396), .RN(n377), .Q(temp1[19]), .QN(
        n317) );
  DFFRX1 \temp1_reg[15]  ( .D(n239), .CK(n396), .RN(n378), .Q(temp1[15]), .QN(
        n316) );
  DFFNSRX1 \Addr_reg[9]  ( .D(next_Addr[9]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[9]) );
  DFFRX1 \size_reg[7]  ( .D(n273), .CK(n396), .RN(n375), .Q(size[7]), .QN(n309) );
  DFFRX1 \size_reg[0]  ( .D(n266), .CK(n396), .RN(n375), .Q(N121), .QN(n310)
         );
  DFFNSRX1 \Addr_reg[3]  ( .D(next_Addr[3]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[3]) );
  DFFNSRX1 \Addr_reg[6]  ( .D(next_Addr[6]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[6]) );
  DFFNSRX1 \Addr_reg[8]  ( .D(next_Addr[8]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[8]) );
  DFFRX1 \size_reg[9]  ( .D(n274), .CK(n396), .RN(n375), .Q(size[9]), .QN(n346) );
  DFFRX1 \temp1_reg[7]  ( .D(n262), .CK(n396), .RN(n376), .Q(temp1[7]), .QN(
        n315) );
  DFFRX1 \size_reg[8]  ( .D(n275), .CK(n396), .RN(n375), .Q(size[8]), .QN(n345) );
  DFFNSRX1 \Addr_reg[7]  ( .D(next_Addr[7]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(WAddr[7]), .QN(n307) );
  DFFNSRX1 \Addr_reg[0]  ( .D(next_Addr[0]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(N143), .QN(n305) );
  DFFRX1 \size_reg[6]  ( .D(n272), .CK(n396), .RN(n375), .Q(size[6]), .QN(n303) );
  DFFRX1 \size_reg[5]  ( .D(n271), .CK(n396), .RN(n375), .Q(size[5]), .QN(n301) );
  DFFRX1 \size_reg[4]  ( .D(n270), .CK(n396), .RN(n375), .Q(size[4]), .QN(n304) );
  DFFRX1 \size_reg[3]  ( .D(n269), .CK(n396), .RN(n375), .Q(size[3]), .QN(n302) );
  DFFRX1 \size_reg[2]  ( .D(n268), .CK(n396), .RN(n375), .Q(size[2]), .QN(n311) );
  DFFNSRX1 \state_reg[0]  ( .D(next_state[0]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(state[0]), .QN(n306) );
  DFFNSRX1 \state_reg[1]  ( .D(next_state[1]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(state[1]) );
  DFFRX1 \size_reg[1]  ( .D(n267), .CK(n396), .RN(n375), .Q(size[1]), .QN(n312) );
  DFFNSRX1 \state_reg[2]  ( .D(next_state[2]), .CKN(clk), .SN(1'b1), .RN(n381), 
        .Q(state[2]), .QN(n308) );
  OAI21XL U255 ( .A0(n306), .A1(n433), .B0(n432), .Y(n300) );
  NAND3X1 U256 ( .A(state[0]), .B(n308), .C(state[1]), .Y(n99) );
  CLKINVX1 U257 ( .A(rst), .Y(n397) );
  AND2X2 U258 ( .A(n95), .B(n135), .Y(n374) );
  AND2X2 U259 ( .A(n95), .B(n135), .Y(n137) );
  NAND2X1 U260 ( .A(n366), .B(n398), .Y(n95) );
  CLKBUFX3 U261 ( .A(n31), .Y(n383) );
  CLKBUFX3 U262 ( .A(n31), .Y(n382) );
  CLKBUFX3 U263 ( .A(n29), .Y(n386) );
  CLKBUFX3 U264 ( .A(n29), .Y(n385) );
  NAND2X1 U265 ( .A(n127), .B(n128), .Y(next_state[2]) );
  CLKBUFX3 U266 ( .A(n29), .Y(n387) );
  CLKBUFX3 U267 ( .A(n31), .Y(n384) );
  CLKINVX1 U268 ( .A(n140), .Y(\sub_122_2_aco/B[0] ) );
  NAND2X1 U269 ( .A(N51), .B(n366), .Y(n136) );
  NAND2X1 U270 ( .A(\sub_122_2_aco/B[0] ), .B(n373), .Y(n135) );
  AND2X2 U271 ( .A(n135), .B(n99), .Y(n127) );
  CLKINVX1 U272 ( .A(N51), .Y(n398) );
  OAI22XL U273 ( .A0(n97), .A1(n347), .B0(n99), .B1(n398), .Y(n233) );
  NAND2X1 U274 ( .A(n135), .B(n99), .Y(n138) );
  OAI22XL U275 ( .A0(n387), .A1(n322), .B0(n384), .B1(n426), .Y(n259) );
  OAI22XL U276 ( .A0(n387), .A1(n325), .B0(n384), .B1(n425), .Y(n260) );
  OAI22XL U277 ( .A0(n387), .A1(n334), .B0(n384), .B1(n424), .Y(n261) );
  OAI22XL U278 ( .A0(n387), .A1(n315), .B0(n384), .B1(n423), .Y(n262) );
  OAI22XL U279 ( .A0(n387), .A1(n323), .B0(n384), .B1(n422), .Y(n263) );
  OAI22XL U280 ( .A0(n387), .A1(n326), .B0(n384), .B1(n421), .Y(n264) );
  OAI22XL U281 ( .A0(n385), .A1(n324), .B0(n382), .B1(n420), .Y(n234) );
  OAI22XL U282 ( .A0(n385), .A1(n327), .B0(n382), .B1(n419), .Y(n235) );
  OAI22XL U283 ( .A0(n385), .A1(n313), .B0(n382), .B1(n418), .Y(n236) );
  OAI22XL U284 ( .A0(n385), .A1(n328), .B0(n382), .B1(n417), .Y(n237) );
  OAI22XL U285 ( .A0(n385), .A1(n335), .B0(n382), .B1(n416), .Y(n238) );
  OAI22XL U286 ( .A0(n385), .A1(n316), .B0(n382), .B1(n415), .Y(n239) );
  OAI22XL U287 ( .A0(n385), .A1(n336), .B0(n382), .B1(n414), .Y(n240) );
  OAI22XL U288 ( .A0(n385), .A1(n337), .B0(n382), .B1(n413), .Y(n241) );
  OAI22XL U289 ( .A0(n385), .A1(n338), .B0(n382), .B1(n412), .Y(n242) );
  OAI22XL U290 ( .A0(n385), .A1(n317), .B0(n382), .B1(n411), .Y(n243) );
  OAI22XL U291 ( .A0(n385), .A1(n331), .B0(n382), .B1(n429), .Y(n244) );
  OAI22XL U292 ( .A0(n386), .A1(n339), .B0(n382), .B1(n410), .Y(n245) );
  OAI22XL U293 ( .A0(n386), .A1(n318), .B0(n383), .B1(n409), .Y(n246) );
  OAI22XL U294 ( .A0(n386), .A1(n340), .B0(n383), .B1(n408), .Y(n247) );
  OAI22XL U295 ( .A0(n386), .A1(n319), .B0(n383), .B1(n407), .Y(n248) );
  OAI22XL U296 ( .A0(n386), .A1(n341), .B0(n383), .B1(n406), .Y(n249) );
  OAI22XL U297 ( .A0(n386), .A1(n320), .B0(n383), .B1(n405), .Y(n250) );
  OAI22XL U298 ( .A0(n386), .A1(n342), .B0(n383), .B1(n404), .Y(n251) );
  OAI22XL U299 ( .A0(n386), .A1(n321), .B0(n383), .B1(n403), .Y(n252) );
  OAI22XL U300 ( .A0(n386), .A1(n314), .B0(n383), .B1(n402), .Y(n253) );
  OAI22XL U301 ( .A0(n386), .A1(n329), .B0(n383), .B1(n401), .Y(n254) );
  OAI22XL U302 ( .A0(n386), .A1(n332), .B0(n383), .B1(n428), .Y(n255) );
  OAI22XL U303 ( .A0(n386), .A1(n343), .B0(n383), .B1(n400), .Y(n256) );
  OAI22XL U304 ( .A0(n387), .A1(n330), .B0(n383), .B1(n399), .Y(n257) );
  OAI22XL U305 ( .A0(n387), .A1(n333), .B0(n383), .B1(n427), .Y(n258) );
  OAI22XL U306 ( .A0(n385), .A1(n344), .B0(n382), .B1(n430), .Y(n265) );
  NAND2X1 U307 ( .A(n95), .B(n96), .Y(n29) );
  AND2X2 U308 ( .A(n95), .B(n96), .Y(n31) );
  NOR2X1 U309 ( .A(n433), .B(n306), .Y(n105) );
  NAND4X1 U310 ( .A(n99), .B(n432), .C(n433), .D(n133), .Y(n128) );
  NOR2BX1 U311 ( .AN(n96), .B(n97), .Y(n133) );
  NAND2X1 U312 ( .A(n369), .B(n308), .Y(n371) );
  CLKINVX1 U313 ( .A(n130), .Y(n433) );
  CLKINVX1 U314 ( .A(n373), .Y(n432) );
  CLKBUFX3 U315 ( .A(n397), .Y(n380) );
  CLKBUFX3 U316 ( .A(n397), .Y(n379) );
  CLKBUFX3 U317 ( .A(n397), .Y(n378) );
  CLKBUFX3 U318 ( .A(n397), .Y(n377) );
  CLKBUFX3 U319 ( .A(n397), .Y(n376) );
  CLKBUFX3 U320 ( .A(n397), .Y(n375) );
  CLKBUFX3 U321 ( .A(n397), .Y(n381) );
  NOR4X1 U322 ( .A(n145), .B(n146), .C(n147), .D(n148), .Y(n144) );
  NAND2X1 U323 ( .A(n149), .B(n150), .Y(n145) );
  XOR2X1 U324 ( .A(WAddr[7]), .B(N128), .Y(n147) );
  XOR2X1 U325 ( .A(WAddr[8]), .B(N129), .Y(n146) );
  NAND4X1 U326 ( .A(n141), .B(n142), .C(n143), .D(n144), .Y(n140) );
  XOR2X1 U327 ( .A(n161), .B(n312), .Y(n142) );
  XOR2X1 U328 ( .A(n162), .B(N125), .Y(n141) );
  NOR3X1 U329 ( .A(n151), .B(n152), .C(n153), .Y(n143) );
  OAI21XL U330 ( .A0(n300), .A1(n346), .B0(n103), .Y(n274) );
  AOI22X1 U331 ( .A0(N208), .A1(n373), .B0(n105), .B1(RData[9]), .Y(n103) );
  OAI21XL U332 ( .A0(n300), .A1(n345), .B0(n107), .Y(n275) );
  AOI22X1 U333 ( .A0(N207), .A1(n373), .B0(n105), .B1(RData[8]), .Y(n107) );
  XOR2X1 U334 ( .A(WAddr[9]), .B(N130), .Y(n148) );
  OAI21XL U335 ( .A0(n300), .A1(n304), .B0(n115), .Y(n270) );
  AOI22X1 U336 ( .A0(N203), .A1(n373), .B0(n105), .B1(RData[4]), .Y(n115) );
  OAI21XL U337 ( .A0(n300), .A1(n301), .B0(n113), .Y(n271) );
  AOI22X1 U338 ( .A0(N204), .A1(n373), .B0(n105), .B1(RData[5]), .Y(n113) );
  OAI21XL U339 ( .A0(n300), .A1(n303), .B0(n111), .Y(n272) );
  AOI22X1 U340 ( .A0(N205), .A1(n373), .B0(n105), .B1(RData[6]), .Y(n111) );
  OAI21XL U341 ( .A0(n300), .A1(n309), .B0(n109), .Y(n273) );
  AOI22X1 U342 ( .A0(N206), .A1(n373), .B0(n105), .B1(RData[7]), .Y(n109) );
  XOR2X1 U343 ( .A(WAddr[6]), .B(N127), .Y(n151) );
  XOR2X1 U344 ( .A(n160), .B(N126), .Y(n150) );
  XOR2X1 U345 ( .A(WAddr[3]), .B(N124), .Y(n152) );
  OAI21XL U346 ( .A0(n300), .A1(n310), .B0(n123), .Y(n266) );
  AOI22X1 U347 ( .A0(N199), .A1(n373), .B0(n105), .B1(RData[0]), .Y(n123) );
  AO22X1 U348 ( .A0(N31), .A1(\sub_122_2_aco/B[0] ), .B0(N143), .B1(n140), .Y(
        N153) );
  OAI21XL U349 ( .A0(n300), .A1(n312), .B0(n121), .Y(n267) );
  AOI22X1 U350 ( .A0(N200), .A1(n373), .B0(n105), .B1(RData[1]), .Y(n121) );
  OAI21XL U351 ( .A0(n300), .A1(n311), .B0(n119), .Y(n268) );
  AOI22X1 U352 ( .A0(N201), .A1(n373), .B0(n105), .B1(RData[2]), .Y(n119) );
  OAI21XL U353 ( .A0(n300), .A1(n302), .B0(n117), .Y(n269) );
  AOI22X1 U354 ( .A0(N202), .A1(n373), .B0(n105), .B1(RData[3]), .Y(n117) );
  XOR2X1 U355 ( .A(N143), .B(N121), .Y(n153) );
  XOR2X1 U356 ( .A(n159), .B(N123), .Y(n149) );
  OAI222XL U357 ( .A0(n423), .A1(n136), .B0(n374), .B1(n315), .C0(n171), .C1(
        n138), .Y(n207) );
  OAI222XL U358 ( .A0(n415), .A1(n136), .B0(n137), .B1(n316), .C0(n179), .C1(
        n138), .Y(n215) );
  OAI222XL U359 ( .A0(n411), .A1(n136), .B0(n137), .B1(n317), .C0(n183), .C1(
        n138), .Y(n219) );
  OAI222XL U360 ( .A0(n409), .A1(n136), .B0(n374), .B1(n318), .C0(n185), .C1(
        n138), .Y(n221) );
  OAI222XL U361 ( .A0(n407), .A1(n136), .B0(n374), .B1(n319), .C0(n187), .C1(
        n138), .Y(n223) );
  OAI222XL U362 ( .A0(n405), .A1(n136), .B0(n374), .B1(n320), .C0(n189), .C1(
        n138), .Y(n225) );
  OAI222XL U363 ( .A0(n403), .A1(n136), .B0(n374), .B1(n321), .C0(n191), .C1(
        n138), .Y(n227) );
  OAI222XL U364 ( .A0(n428), .A1(n136), .B0(n137), .B1(n332), .C0(n166), .C1(
        n138), .Y(n202) );
  OAI222XL U365 ( .A0(n427), .A1(n136), .B0(n374), .B1(n333), .C0(n167), .C1(
        n138), .Y(n203) );
  OAI222XL U366 ( .A0(n424), .A1(n136), .B0(n137), .B1(n334), .C0(n170), .C1(
        n138), .Y(n206) );
  OAI222XL U367 ( .A0(n416), .A1(n136), .B0(n374), .B1(n335), .C0(n178), .C1(
        n138), .Y(n214) );
  OAI222XL U368 ( .A0(n414), .A1(n136), .B0(n374), .B1(n336), .C0(n180), .C1(
        n138), .Y(n216) );
  OAI222XL U369 ( .A0(n413), .A1(n136), .B0(n137), .B1(n337), .C0(n181), .C1(
        n138), .Y(n217) );
  OAI222XL U370 ( .A0(n412), .A1(n136), .B0(n374), .B1(n338), .C0(n182), .C1(
        n138), .Y(n218) );
  OAI222XL U371 ( .A0(n410), .A1(n136), .B0(n137), .B1(n339), .C0(n184), .C1(
        n138), .Y(n220) );
  OAI222XL U372 ( .A0(n408), .A1(n136), .B0(n137), .B1(n340), .C0(n186), .C1(
        n138), .Y(n222) );
  OAI222XL U373 ( .A0(n406), .A1(n136), .B0(n137), .B1(n341), .C0(n188), .C1(
        n138), .Y(n224) );
  OAI222XL U374 ( .A0(n404), .A1(n136), .B0(n137), .B1(n342), .C0(n190), .C1(
        n138), .Y(n226) );
  OAI222XL U375 ( .A0(n400), .A1(n136), .B0(n374), .B1(n343), .C0(n194), .C1(
        n138), .Y(n230) );
  OAI222XL U376 ( .A0(n426), .A1(n136), .B0(n137), .B1(n322), .C0(n168), .C1(
        n138), .Y(n204) );
  OAI222XL U377 ( .A0(n425), .A1(n136), .B0(n374), .B1(n325), .C0(n169), .C1(
        n138), .Y(n205) );
  OAI222XL U378 ( .A0(n422), .A1(n136), .B0(n137), .B1(n323), .C0(n172), .C1(
        n138), .Y(n208) );
  OAI222XL U379 ( .A0(n421), .A1(n136), .B0(n374), .B1(n326), .C0(n173), .C1(
        n138), .Y(n209) );
  OAI222XL U380 ( .A0(n420), .A1(n136), .B0(n374), .B1(n324), .C0(n174), .C1(
        n138), .Y(n210) );
  OAI222XL U381 ( .A0(n419), .A1(n136), .B0(n137), .B1(n327), .C0(n175), .C1(
        n138), .Y(n211) );
  OAI222XL U382 ( .A0(n418), .A1(n136), .B0(n374), .B1(n313), .C0(n176), .C1(
        n138), .Y(n212) );
  OAI222XL U383 ( .A0(n417), .A1(n136), .B0(n137), .B1(n328), .C0(n177), .C1(
        n138), .Y(n213) );
  OAI222XL U384 ( .A0(n402), .A1(n136), .B0(n137), .B1(n314), .C0(n192), .C1(
        n138), .Y(n228) );
  OAI222XL U385 ( .A0(n401), .A1(n136), .B0(n374), .B1(n329), .C0(n193), .C1(
        n138), .Y(n229) );
  OAI222XL U386 ( .A0(n430), .A1(n136), .B0(n137), .B1(n344), .C0(n164), .C1(
        n138), .Y(n200) );
  OAI222XL U387 ( .A0(n429), .A1(n136), .B0(n374), .B1(n331), .C0(n165), .C1(
        n138), .Y(n201) );
  OAI222XL U388 ( .A0(n399), .A1(n136), .B0(n137), .B1(n330), .C0(n195), .C1(
        n138), .Y(n231) );
  AO22X1 U389 ( .A0(N33), .A1(\sub_122_2_aco/B[0] ), .B0(N145), .B1(n140), .Y(
        N155) );
  AO22X1 U390 ( .A0(N34), .A1(\sub_122_2_aco/B[0] ), .B0(N146), .B1(n140), .Y(
        N156) );
  AO22X1 U391 ( .A0(N35), .A1(\sub_122_2_aco/B[0] ), .B0(N147), .B1(n140), .Y(
        N157) );
  AO22X1 U392 ( .A0(N36), .A1(\sub_122_2_aco/B[0] ), .B0(N148), .B1(n140), .Y(
        N158) );
  AO22X1 U393 ( .A0(N37), .A1(\sub_122_2_aco/B[0] ), .B0(N149), .B1(n140), .Y(
        N159) );
  AO22X1 U394 ( .A0(N38), .A1(\sub_122_2_aco/B[0] ), .B0(N150), .B1(n140), .Y(
        N160) );
  AO22X1 U395 ( .A0(N39), .A1(\sub_122_2_aco/B[0] ), .B0(N151), .B1(n140), .Y(
        N161) );
  AO22X1 U396 ( .A0(N40), .A1(\sub_122_2_aco/B[0] ), .B0(N152), .B1(n140), .Y(
        N162) );
  AO22X1 U397 ( .A0(N32), .A1(\sub_122_2_aco/B[0] ), .B0(n161), .B1(n140), .Y(
        N154) );
  OAI31XL U398 ( .A0(n97), .A1(n163), .A2(n373), .B0(n127), .Y(n199) );
  NAND4BX1 U399 ( .AN(n97), .B(n96), .C(n128), .D(n129), .Y(next_state[1]) );
  AOI2BB2X1 U400 ( .B0(state[0]), .B1(n130), .A0N(n432), .A1N(
        \sub_122_2_aco/B[0] ), .Y(n129) );
  NOR3X1 U401 ( .A(n306), .B(state[1]), .C(n308), .Y(n97) );
  NAND3X1 U402 ( .A(n306), .B(n308), .C(state[1]), .Y(n96) );
  NOR2X1 U403 ( .A(state[0]), .B(state[1]), .Y(n369) );
  NOR2X1 U404 ( .A(state[1]), .B(state[2]), .Y(n130) );
  NOR2X1 U405 ( .A(state[0]), .B(state[2]), .Y(n368) );
  NAND4X1 U406 ( .A(n301), .B(n303), .C(n158), .D(n309), .Y(n156) );
  NOR2X1 U407 ( .A(size[9]), .B(size[8]), .Y(n158) );
  OAI21XL U408 ( .A0(n196), .A1(n97), .B0(n154), .Y(n232) );
  OAI21XL U409 ( .A0(n155), .A1(n347), .B0(n97), .Y(n154) );
  NOR4X1 U410 ( .A(n156), .B(n157), .C(size[1]), .D(n310), .Y(n155) );
  NAND3X1 U411 ( .A(n302), .B(n304), .C(n311), .Y(n157) );
  CLKBUFX3 U412 ( .A(n104), .Y(n373) );
  NOR3X1 U413 ( .A(state[0]), .B(state[1]), .C(n308), .Y(n104) );
  AND3X2 U414 ( .A(state[0]), .B(n308), .C(state[1]), .Y(n366) );
  NAND3X1 U415 ( .A(n96), .B(n432), .C(n131), .Y(next_state[0]) );
  AOI32X1 U416 ( .A0(n130), .A1(n306), .A2(Start), .B0(n431), .B1(state[0]), 
        .Y(n131) );
  CLKINVX1 U417 ( .A(n128), .Y(n431) );
  AND2X2 U418 ( .A(state[1]), .B(state[2]), .Y(n367) );
  CLKINVX1 U419 ( .A(RData[10]), .Y(n420) );
  CLKINVX1 U420 ( .A(RData[11]), .Y(n419) );
  CLKINVX1 U421 ( .A(RData[12]), .Y(n418) );
  CLKINVX1 U422 ( .A(RData[13]), .Y(n417) );
  CLKINVX1 U423 ( .A(RData[14]), .Y(n416) );
  CLKINVX1 U424 ( .A(RData[15]), .Y(n415) );
  CLKINVX1 U425 ( .A(RData[16]), .Y(n414) );
  CLKINVX1 U426 ( .A(RData[17]), .Y(n413) );
  CLKINVX1 U427 ( .A(RData[18]), .Y(n412) );
  CLKINVX1 U428 ( .A(RData[19]), .Y(n411) );
  CLKINVX1 U429 ( .A(RData[1]), .Y(n429) );
  CLKINVX1 U430 ( .A(RData[20]), .Y(n410) );
  CLKINVX1 U431 ( .A(RData[21]), .Y(n409) );
  CLKINVX1 U432 ( .A(RData[22]), .Y(n408) );
  CLKINVX1 U433 ( .A(RData[23]), .Y(n407) );
  CLKINVX1 U434 ( .A(RData[24]), .Y(n406) );
  CLKINVX1 U435 ( .A(RData[25]), .Y(n405) );
  CLKINVX1 U436 ( .A(RData[26]), .Y(n404) );
  CLKINVX1 U437 ( .A(RData[27]), .Y(n403) );
  CLKINVX1 U438 ( .A(RData[28]), .Y(n402) );
  CLKINVX1 U439 ( .A(RData[29]), .Y(n401) );
  CLKINVX1 U440 ( .A(RData[2]), .Y(n428) );
  CLKINVX1 U441 ( .A(RData[30]), .Y(n400) );
  CLKINVX1 U442 ( .A(RData[31]), .Y(n399) );
  CLKINVX1 U443 ( .A(RData[3]), .Y(n427) );
  CLKINVX1 U444 ( .A(RData[4]), .Y(n426) );
  CLKINVX1 U445 ( .A(RData[5]), .Y(n425) );
  CLKINVX1 U446 ( .A(RData[6]), .Y(n424) );
  CLKINVX1 U447 ( .A(RData[7]), .Y(n423) );
  CLKINVX1 U448 ( .A(RData[8]), .Y(n422) );
  CLKINVX1 U449 ( .A(RData[9]), .Y(n421) );
  CLKINVX1 U450 ( .A(RData[0]), .Y(n430) );
  INVX3 U451 ( .A(clk), .Y(n396) );
  NAND2X1 U452 ( .A(n305), .B(n366), .Y(n349) );
  AOI222XL U453 ( .A0(N153), .A1(n369), .B0(N31), .B1(n368), .C0(N143), .C1(
        n367), .Y(n348) );
  NAND3X1 U454 ( .A(n349), .B(n371), .C(n348), .Y(next_Addr[0]) );
  NAND2X1 U455 ( .A(N42), .B(n366), .Y(n351) );
  AOI222XL U456 ( .A0(N154), .A1(n369), .B0(N32), .B1(n368), .C0(WAddr[1]), 
        .C1(n367), .Y(n350) );
  NAND3X1 U457 ( .A(n351), .B(n371), .C(n350), .Y(next_Addr[1]) );
  NAND2X1 U458 ( .A(N43), .B(n366), .Y(n353) );
  AOI222XL U459 ( .A0(N155), .A1(n369), .B0(N33), .B1(n368), .C0(WAddr[2]), 
        .C1(n367), .Y(n352) );
  NAND3X1 U460 ( .A(n353), .B(n371), .C(n352), .Y(next_Addr[2]) );
  NAND2X1 U461 ( .A(N44), .B(n366), .Y(n355) );
  AOI222XL U462 ( .A0(N156), .A1(n369), .B0(N34), .B1(n368), .C0(WAddr[3]), 
        .C1(n367), .Y(n354) );
  NAND3X1 U463 ( .A(n355), .B(n371), .C(n354), .Y(next_Addr[3]) );
  NAND2X1 U464 ( .A(N45), .B(n366), .Y(n357) );
  AOI222XL U465 ( .A0(N157), .A1(n369), .B0(N35), .B1(n368), .C0(WAddr[4]), 
        .C1(n367), .Y(n356) );
  NAND3X1 U466 ( .A(n357), .B(n371), .C(n356), .Y(next_Addr[4]) );
  NAND2X1 U467 ( .A(N46), .B(n366), .Y(n359) );
  AOI222XL U468 ( .A0(N158), .A1(n369), .B0(N36), .B1(n368), .C0(WAddr[5]), 
        .C1(n367), .Y(n358) );
  NAND3X1 U469 ( .A(n359), .B(n371), .C(n358), .Y(next_Addr[5]) );
  NAND2X1 U470 ( .A(N47), .B(n366), .Y(n361) );
  AOI222XL U471 ( .A0(N159), .A1(n369), .B0(N37), .B1(n368), .C0(WAddr[6]), 
        .C1(n367), .Y(n360) );
  NAND3X1 U472 ( .A(n361), .B(n371), .C(n360), .Y(next_Addr[6]) );
  NAND2X1 U473 ( .A(N48), .B(n366), .Y(n363) );
  AOI222XL U474 ( .A0(N160), .A1(n369), .B0(N38), .B1(n368), .C0(WAddr[7]), 
        .C1(n367), .Y(n362) );
  NAND3X1 U475 ( .A(n363), .B(n371), .C(n362), .Y(next_Addr[7]) );
  NAND2X1 U476 ( .A(N49), .B(n366), .Y(n365) );
  AOI222XL U477 ( .A0(N161), .A1(n369), .B0(N39), .B1(n368), .C0(WAddr[8]), 
        .C1(n367), .Y(n364) );
  NAND3X1 U478 ( .A(n365), .B(n371), .C(n364), .Y(next_Addr[8]) );
  NAND2X1 U479 ( .A(N50), .B(n366), .Y(n372) );
  AOI222XL U480 ( .A0(N162), .A1(n369), .B0(N40), .B1(n368), .C0(WAddr[9]), 
        .C1(n367), .Y(n370) );
  NAND3X1 U481 ( .A(n372), .B(n371), .C(n370), .Y(next_Addr[9]) );
  XNOR2X1 U482 ( .A(size[9]), .B(\sub_122_2_aco/carry [9]), .Y(N208) );
  OR2X1 U483 ( .A(size[8]), .B(\sub_122_2_aco/carry [8]), .Y(
        \sub_122_2_aco/carry [9]) );
  XNOR2X1 U484 ( .A(\sub_122_2_aco/carry [8]), .B(size[8]), .Y(N207) );
  OR2X1 U485 ( .A(size[7]), .B(\sub_122_2_aco/carry [7]), .Y(
        \sub_122_2_aco/carry [8]) );
  XNOR2X1 U486 ( .A(\sub_122_2_aco/carry [7]), .B(size[7]), .Y(N206) );
  OR2X1 U487 ( .A(size[6]), .B(\sub_122_2_aco/carry [6]), .Y(
        \sub_122_2_aco/carry [7]) );
  XNOR2X1 U488 ( .A(\sub_122_2_aco/carry [6]), .B(size[6]), .Y(N205) );
  OR2X1 U489 ( .A(size[5]), .B(\sub_122_2_aco/carry [5]), .Y(
        \sub_122_2_aco/carry [6]) );
  XNOR2X1 U490 ( .A(\sub_122_2_aco/carry [5]), .B(size[5]), .Y(N204) );
  OR2X1 U491 ( .A(size[4]), .B(\sub_122_2_aco/carry [4]), .Y(
        \sub_122_2_aco/carry [5]) );
  XNOR2X1 U492 ( .A(\sub_122_2_aco/carry [4]), .B(size[4]), .Y(N203) );
  OR2X1 U493 ( .A(size[3]), .B(\sub_122_2_aco/carry [3]), .Y(
        \sub_122_2_aco/carry [4]) );
  XNOR2X1 U494 ( .A(\sub_122_2_aco/carry [3]), .B(size[3]), .Y(N202) );
  OR2X1 U495 ( .A(size[2]), .B(\sub_122_2_aco/carry [2]), .Y(
        \sub_122_2_aco/carry [3]) );
  XNOR2X1 U496 ( .A(\sub_122_2_aco/carry [2]), .B(size[2]), .Y(N201) );
  OR2X1 U497 ( .A(size[1]), .B(\sub_122_2_aco/carry [1]), .Y(
        \sub_122_2_aco/carry [2]) );
  XNOR2X1 U498 ( .A(\sub_122_2_aco/carry [1]), .B(size[1]), .Y(N200) );
  OR2X1 U499 ( .A(n140), .B(N121), .Y(\sub_122_2_aco/carry [1]) );
  XNOR2X1 U500 ( .A(N121), .B(n140), .Y(N199) );
  XOR2X1 U501 ( .A(WAddr[9]), .B(\add_119_2/carry [9]), .Y(N152) );
  AND2X1 U502 ( .A(\add_119_2/carry [8]), .B(WAddr[8]), .Y(
        \add_119_2/carry [9]) );
  XOR2X1 U503 ( .A(WAddr[8]), .B(\add_119_2/carry [8]), .Y(N151) );
  AND2X1 U504 ( .A(\add_119_2/carry [7]), .B(WAddr[7]), .Y(
        \add_119_2/carry [8]) );
  XOR2X1 U505 ( .A(WAddr[7]), .B(\add_119_2/carry [7]), .Y(N150) );
  AND2X1 U506 ( .A(\add_119_2/carry [6]), .B(WAddr[6]), .Y(
        \add_119_2/carry [7]) );
  XOR2X1 U507 ( .A(WAddr[6]), .B(\add_119_2/carry [6]), .Y(N149) );
  AND2X1 U508 ( .A(\add_119_2/carry [5]), .B(WAddr[5]), .Y(
        \add_119_2/carry [6]) );
  XOR2X1 U509 ( .A(WAddr[5]), .B(\add_119_2/carry [5]), .Y(N148) );
  AND2X1 U510 ( .A(\add_119_2/carry [4]), .B(WAddr[4]), .Y(
        \add_119_2/carry [5]) );
  XOR2X1 U511 ( .A(WAddr[4]), .B(\add_119_2/carry [4]), .Y(N147) );
  AND2X1 U512 ( .A(\add_119_2/carry [3]), .B(WAddr[3]), .Y(
        \add_119_2/carry [4]) );
  XOR2X1 U513 ( .A(WAddr[3]), .B(\add_119_2/carry [3]), .Y(N146) );
  AND2X1 U514 ( .A(WAddr[1]), .B(WAddr[2]), .Y(\add_119_2/carry [3]) );
  XOR2X1 U515 ( .A(WAddr[2]), .B(WAddr[1]), .Y(N145) );
  XNOR2X1 U516 ( .A(size[9]), .B(\r338/carry [9]), .Y(N130) );
  OR2X1 U517 ( .A(size[8]), .B(\r338/carry [8]), .Y(\r338/carry [9]) );
  XNOR2X1 U518 ( .A(\r338/carry [8]), .B(size[8]), .Y(N129) );
  OR2X1 U519 ( .A(size[7]), .B(\r338/carry [7]), .Y(\r338/carry [8]) );
  XNOR2X1 U520 ( .A(\r338/carry [7]), .B(size[7]), .Y(N128) );
  OR2X1 U521 ( .A(size[6]), .B(\r338/carry [6]), .Y(\r338/carry [7]) );
  XNOR2X1 U522 ( .A(\r338/carry [6]), .B(size[6]), .Y(N127) );
  OR2X1 U523 ( .A(size[5]), .B(\r338/carry [5]), .Y(\r338/carry [6]) );
  XNOR2X1 U524 ( .A(\r338/carry [5]), .B(size[5]), .Y(N126) );
  OR2X1 U525 ( .A(size[4]), .B(\r338/carry [4]), .Y(\r338/carry [5]) );
  XNOR2X1 U526 ( .A(\r338/carry [4]), .B(size[4]), .Y(N125) );
  OR2X1 U527 ( .A(size[3]), .B(\r338/carry [3]), .Y(\r338/carry [4]) );
  XNOR2X1 U528 ( .A(\r338/carry [3]), .B(size[3]), .Y(N124) );
  OR2X1 U529 ( .A(size[2]), .B(size[1]), .Y(\r338/carry [3]) );
  XNOR2X1 U530 ( .A(size[1]), .B(size[2]), .Y(N123) );
  NAND2BX1 U531 ( .AN(WAddr[1]), .B(n305), .Y(n388) );
  OAI2BB1X1 U532 ( .A0N(N143), .A1N(WAddr[1]), .B0(n388), .Y(N42) );
  OR2X1 U533 ( .A(n388), .B(WAddr[2]), .Y(n389) );
  OAI2BB1X1 U534 ( .A0N(n388), .A1N(WAddr[2]), .B0(n389), .Y(N43) );
  OR2X1 U535 ( .A(n389), .B(WAddr[3]), .Y(n390) );
  OAI2BB1X1 U536 ( .A0N(n389), .A1N(WAddr[3]), .B0(n390), .Y(N44) );
  OR2X1 U537 ( .A(n390), .B(WAddr[4]), .Y(n391) );
  OAI2BB1X1 U538 ( .A0N(n390), .A1N(WAddr[4]), .B0(n391), .Y(N45) );
  OR2X1 U539 ( .A(n391), .B(WAddr[5]), .Y(n392) );
  OAI2BB1X1 U540 ( .A0N(n391), .A1N(WAddr[5]), .B0(n392), .Y(N46) );
  NOR2X1 U541 ( .A(n392), .B(WAddr[6]), .Y(n393) );
  AO21X1 U542 ( .A0(n392), .A1(WAddr[6]), .B0(n393), .Y(N47) );
  NAND2X1 U543 ( .A(n393), .B(n307), .Y(n394) );
  OAI21XL U544 ( .A0(n393), .A1(n307), .B0(n394), .Y(N48) );
  XNOR2X1 U545 ( .A(WAddr[8]), .B(n394), .Y(N49) );
  NOR2X1 U546 ( .A(WAddr[8]), .B(n394), .Y(n395) );
  XOR2X1 U547 ( .A(WAddr[9]), .B(n395), .Y(N50) );
endmodule

