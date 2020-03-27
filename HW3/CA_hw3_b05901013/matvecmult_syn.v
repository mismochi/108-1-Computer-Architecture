/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Wed Nov 27 14:15:06 2019
/////////////////////////////////////////////////////////////


module matvecmult_DW01_add_46 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_45 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_44 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_43 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_42 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_41 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_40 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_39 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_38 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_37 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_36 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_35 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_34 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_33 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_32 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_31 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_30 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1;
  wire   [7:2] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_29 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_28 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_27 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_26 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_25 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_24 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_23 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_22 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_21 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_20 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_19 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_18 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_17 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_16 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_15 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_14 ( A, SUM, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, 
        B_1_ );
  input [7:0] A;
  output [7:0] SUM;
  input B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_;
  wire   n1;
  wire   [7:3] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B_3_), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B_2_), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B_6_), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B_5_), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B_4_), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_7 ( .A(A[7]), .B(B_7_), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B_1_), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B_1_), .B(A[1]), .Y(SUM[1]) );
  CLKBUFX3 U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW_mult_uns_7 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(b[0]), .Y(n107) );
  INVX1 U69 ( .A(a[1]), .Y(n101) );
  INVX1 U70 ( .A(b[1]), .Y(n106) );
  NOR2XL U71 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U72 ( .A(b[2]), .Y(n105) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U82 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U83 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U84 ( .A(a[4]), .Y(n98) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_6 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHX1 U67 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U68 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U69 ( .A(b[0]), .Y(n107) );
  CLKINVX1 U70 ( .A(a[1]), .Y(n101) );
  INVX1 U71 ( .A(b[2]), .Y(n105) );
  NOR2X1 U72 ( .A(n106), .B(n101), .Y(n51) );
  NOR2XL U73 ( .A(n105), .B(n101), .Y(n50) );
  INVX1 U74 ( .A(b[1]), .Y(n106) );
  NOR2XL U75 ( .A(n98), .B(n106), .Y(n36) );
  NOR2XL U76 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U77 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U78 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U79 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U80 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U81 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U82 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U83 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U85 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U86 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U87 ( .A(a[4]), .Y(n98) );
  XOR2X1 U88 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U89 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U90 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U91 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U92 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U93 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U94 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U95 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U96 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U97 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U98 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U99 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U100 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U101 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U102 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U103 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U104 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U105 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U106 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U107 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U108 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U109 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U110 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U111 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U112 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U113 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U114 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U115 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U116 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_5 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  INVX1 U69 ( .A(b[1]), .Y(n106) );
  NOR2XL U70 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n105) );
  CLKINVX1 U72 ( .A(b[0]), .Y(n107) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[5]), .B(a[1]), .Y(n118) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U79 ( .A(b[1]), .B(a[5]), .Y(n116) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_4 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  INVX1 U69 ( .A(b[1]), .Y(n106) );
  NOR2XL U70 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n105) );
  CLKINVX1 U72 ( .A(b[0]), .Y(n107) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U84 ( .A(a[4]), .Y(n98) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_3 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(b[0]), .Y(n107) );
  INVX1 U69 ( .A(a[1]), .Y(n101) );
  INVX1 U70 ( .A(b[1]), .Y(n106) );
  NOR2XL U71 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U72 ( .A(b[2]), .Y(n105) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U82 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U83 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U84 ( .A(a[4]), .Y(n98) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_2 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(b[0]), .Y(n107) );
  INVX1 U69 ( .A(a[1]), .Y(n101) );
  INVX1 U70 ( .A(b[1]), .Y(n106) );
  NOR2XL U71 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U72 ( .A(b[2]), .Y(n105) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[5]), .B(a[1]), .Y(n118) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U79 ( .A(b[1]), .B(a[5]), .Y(n116) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_1 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  INVX1 U69 ( .A(b[1]), .Y(n106) );
  NOR2XL U70 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n105) );
  CLKINVX1 U72 ( .A(b[0]), .Y(n107) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_0 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  NOR2X1 U67 ( .A(n102), .B(n107), .Y(product_0_) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U69 ( .A(b[1]), .Y(n106) );
  AND2XL U70 ( .A(a[5]), .B(b[0]), .Y(n34) );
  NOR2XL U71 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U72 ( .A(a[0]), .Y(n102) );
  NOR2XL U73 ( .A(n107), .B(n99), .Y(n41) );
  NOR2XL U74 ( .A(n98), .B(n107), .Y(n37) );
  NOR2XL U75 ( .A(n107), .B(n100), .Y(n46) );
  AND2XL U76 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U77 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U78 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U79 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U80 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U81 ( .A(b[2]), .Y(n105) );
  CLKINVX1 U82 ( .A(b[0]), .Y(n107) );
  CLKINVX1 U83 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U84 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U85 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U86 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U87 ( .A(b[4]), .Y(n103) );
  XOR2X1 U88 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U89 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U90 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U91 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U92 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U93 ( .A(n117), .B(n118), .Y(n113) );
  NAND2X1 U94 ( .A(b[2]), .B(a[4]), .Y(n117) );
  XOR2X1 U95 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U96 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U97 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U98 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U99 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U100 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U101 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U102 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U103 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U104 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U105 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U106 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U107 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U108 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U109 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U110 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U111 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U112 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U113 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U114 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U115 ( .A(n105), .B(n99), .Y(n39) );
endmodule


module matvecmult_DW01_add_6 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_5 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_4 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_3 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_2 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_1 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_0 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW_mult_uns_15 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(b[0]), .Y(n107) );
  CLKINVX1 U69 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U70 ( .A(b[1]), .Y(n106) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n105) );
  NOR2XL U72 ( .A(n98), .B(n106), .Y(n36) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U82 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U83 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U84 ( .A(a[4]), .Y(n98) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_14 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n31, n34, n36, n37, n39, n40,
         n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56, n57,
         n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125;

  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n103) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n102) );
  CLKINVX1 U69 ( .A(b[0]), .Y(n108) );
  ADDHXL U70 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U71 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U72 ( .A(n50), .B(n56), .CI(n98), .CO(n26), .S(n27) );
  ADDFXL U73 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  AND2X2 U74 ( .A(n57), .B(n51), .Y(n98) );
  INVX1 U75 ( .A(b[2]), .Y(n106) );
  XOR2XL U76 ( .A(n57), .B(n51), .Y(n31) );
  NOR2X1 U77 ( .A(n106), .B(n103), .Y(n57) );
  CLKINVX1 U78 ( .A(b[1]), .Y(n107) );
  NOR2X1 U79 ( .A(n107), .B(n102), .Y(n51) );
  NOR2XL U80 ( .A(n106), .B(n102), .Y(n50) );
  NOR2XL U81 ( .A(n103), .B(n108), .Y(product_0_) );
  NOR2XL U82 ( .A(n106), .B(n100), .Y(n39) );
  AND2XL U83 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U84 ( .A(b[2]), .B(a[4]), .Y(n118) );
  NAND2XL U85 ( .A(b[5]), .B(a[1]), .Y(n119) );
  NAND2XL U86 ( .A(b[6]), .B(a[0]), .Y(n123) );
  NAND2XL U87 ( .A(b[0]), .B(a[6]), .Y(n116) );
  NAND2XL U88 ( .A(b[1]), .B(a[5]), .Y(n117) );
  CLKINVX1 U89 ( .A(b[4]), .Y(n104) );
  CLKINVX1 U90 ( .A(a[2]), .Y(n101) );
  CLKINVX1 U91 ( .A(b[3]), .Y(n105) );
  CLKINVX1 U92 ( .A(a[3]), .Y(n100) );
  CLKINVX1 U93 ( .A(a[4]), .Y(n99) );
  XOR2X1 U94 ( .A(n109), .B(n110), .Y(product_6_) );
  XOR2X1 U95 ( .A(n111), .B(n12), .Y(n110) );
  XOR2X1 U96 ( .A(n112), .B(n113), .Y(n111) );
  XOR2X1 U97 ( .A(n114), .B(n115), .Y(n113) );
  XOR2X1 U98 ( .A(n116), .B(n117), .Y(n115) );
  XOR2X1 U99 ( .A(n118), .B(n119), .Y(n114) );
  XOR2X1 U100 ( .A(n120), .B(n121), .Y(n112) );
  XOR2X1 U101 ( .A(n122), .B(n123), .Y(n121) );
  NAND2X1 U102 ( .A(b[4]), .B(a[2]), .Y(n122) );
  XOR2X1 U103 ( .A(n124), .B(n16), .Y(n120) );
  NAND2X1 U104 ( .A(b[3]), .B(a[3]), .Y(n124) );
  XOR2X1 U105 ( .A(n125), .B(n14), .Y(n109) );
  XNOR2X1 U106 ( .A(n2), .B(n18), .Y(n125) );
  NOR2X1 U107 ( .A(n103), .B(n107), .Y(n58) );
  NOR2X1 U108 ( .A(n103), .B(n105), .Y(n56) );
  NOR2X1 U109 ( .A(n103), .B(n104), .Y(n55) );
  NOR2X1 U110 ( .A(n102), .B(n108), .Y(n52) );
  NOR2X1 U111 ( .A(n102), .B(n105), .Y(n49) );
  NOR2X1 U112 ( .A(n102), .B(n104), .Y(n48) );
  NOR2X1 U113 ( .A(n108), .B(n101), .Y(n46) );
  NOR2X1 U114 ( .A(n107), .B(n101), .Y(n45) );
  NOR2X1 U115 ( .A(n106), .B(n101), .Y(n44) );
  NOR2X1 U116 ( .A(n105), .B(n101), .Y(n43) );
  NOR2X1 U117 ( .A(n108), .B(n100), .Y(n41) );
  NOR2X1 U118 ( .A(n107), .B(n100), .Y(n40) );
  NOR2X1 U119 ( .A(n99), .B(n108), .Y(n37) );
  NOR2X1 U120 ( .A(n99), .B(n107), .Y(n36) );
  AND2X1 U121 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_13 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(b[0]), .Y(n107) );
  CLKINVX1 U69 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U70 ( .A(b[1]), .Y(n106) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n105) );
  NOR2XL U72 ( .A(n98), .B(n106), .Y(n36) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[5]), .B(a[1]), .Y(n118) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U79 ( .A(b[1]), .B(a[5]), .Y(n116) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_12 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(b[0]), .Y(n107) );
  CLKINVX1 U69 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U70 ( .A(b[1]), .Y(n106) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n105) );
  NOR2XL U72 ( .A(n98), .B(n106), .Y(n36) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U82 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U83 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U84 ( .A(a[4]), .Y(n98) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_11 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U69 ( .A(b[2]), .Y(n105) );
  CLKINVX1 U70 ( .A(b[1]), .Y(n106) );
  CLKINVX1 U71 ( .A(b[0]), .Y(n107) );
  NOR2XL U72 ( .A(n98), .B(n106), .Y(n36) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[5]), .B(a[1]), .Y(n118) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U79 ( .A(b[1]), .B(a[5]), .Y(n116) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[4]), .Y(n103) );
  CLKINVX1 U82 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U83 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U84 ( .A(a[4]), .Y(n98) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_10 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U69 ( .A(b[0]), .Y(n107) );
  CLKINVX1 U70 ( .A(b[2]), .Y(n105) );
  INVX1 U71 ( .A(b[1]), .Y(n106) );
  NOR2XL U72 ( .A(n98), .B(n106), .Y(n36) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U78 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_9 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n31, n34, n36, n37, n39, n40,
         n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56, n57,
         n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n103) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n102) );
  CLKINVX1 U69 ( .A(b[1]), .Y(n107) );
  CLKINVX1 U70 ( .A(b[0]), .Y(n108) );
  CLKINVX1 U71 ( .A(b[2]), .Y(n106) );
  NOR2X1 U72 ( .A(n107), .B(n102), .Y(n51) );
  NOR2X1 U73 ( .A(n106), .B(n103), .Y(n57) );
  XOR2X1 U74 ( .A(n57), .B(n51), .Y(n31) );
  AND2X2 U75 ( .A(n57), .B(n51), .Y(n98) );
  ADDFXL U76 ( .A(n50), .B(n56), .CI(n98), .CO(n26), .S(n27) );
  NOR2XL U77 ( .A(n99), .B(n107), .Y(n36) );
  NOR2XL U78 ( .A(n106), .B(n100), .Y(n39) );
  AND2XL U79 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U80 ( .A(b[6]), .B(a[0]), .Y(n123) );
  NAND2XL U81 ( .A(b[0]), .B(a[6]), .Y(n116) );
  NAND2XL U82 ( .A(b[1]), .B(a[5]), .Y(n117) );
  NAND2XL U83 ( .A(b[2]), .B(a[4]), .Y(n118) );
  NAND2XL U84 ( .A(b[5]), .B(a[1]), .Y(n119) );
  CLKINVX1 U85 ( .A(a[2]), .Y(n101) );
  CLKINVX1 U86 ( .A(b[3]), .Y(n105) );
  CLKINVX1 U87 ( .A(a[3]), .Y(n100) );
  CLKINVX1 U88 ( .A(a[4]), .Y(n99) );
  CLKINVX1 U89 ( .A(b[4]), .Y(n104) );
  XOR2X1 U90 ( .A(n109), .B(n110), .Y(product_6_) );
  XOR2X1 U91 ( .A(n111), .B(n12), .Y(n110) );
  XOR2X1 U92 ( .A(n112), .B(n113), .Y(n111) );
  XOR2X1 U93 ( .A(n114), .B(n115), .Y(n113) );
  XOR2X1 U94 ( .A(n116), .B(n117), .Y(n115) );
  XOR2X1 U95 ( .A(n118), .B(n119), .Y(n114) );
  XOR2X1 U96 ( .A(n120), .B(n121), .Y(n112) );
  XOR2X1 U97 ( .A(n122), .B(n123), .Y(n121) );
  NAND2X1 U98 ( .A(b[4]), .B(a[2]), .Y(n122) );
  XOR2X1 U99 ( .A(n124), .B(n16), .Y(n120) );
  NAND2X1 U100 ( .A(b[3]), .B(a[3]), .Y(n124) );
  XOR2X1 U101 ( .A(n125), .B(n14), .Y(n109) );
  XNOR2X1 U102 ( .A(n2), .B(n18), .Y(n125) );
  NOR2X1 U103 ( .A(n103), .B(n108), .Y(product_0_) );
  NOR2X1 U104 ( .A(n103), .B(n107), .Y(n58) );
  NOR2X1 U105 ( .A(n103), .B(n105), .Y(n56) );
  NOR2X1 U106 ( .A(n103), .B(n104), .Y(n55) );
  NOR2X1 U107 ( .A(n102), .B(n108), .Y(n52) );
  NOR2X1 U108 ( .A(n106), .B(n102), .Y(n50) );
  NOR2X1 U109 ( .A(n102), .B(n105), .Y(n49) );
  NOR2X1 U110 ( .A(n102), .B(n104), .Y(n48) );
  NOR2X1 U111 ( .A(n108), .B(n101), .Y(n46) );
  NOR2X1 U112 ( .A(n107), .B(n101), .Y(n45) );
  NOR2X1 U113 ( .A(n106), .B(n101), .Y(n44) );
  NOR2X1 U114 ( .A(n105), .B(n101), .Y(n43) );
  NOR2X1 U115 ( .A(n108), .B(n100), .Y(n41) );
  NOR2X1 U116 ( .A(n107), .B(n100), .Y(n40) );
  NOR2X1 U117 ( .A(n99), .B(n108), .Y(n37) );
  AND2X1 U118 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW_mult_uns_8 ( a, b, product_6_, product_5_, product_4_, 
        product_3_, product_2_, product_1_, product_0_ );
  input [6:0] a;
  input [6:0] b;
  output product_6_, product_5_, product_4_, product_3_, product_2_,
         product_1_, product_0_;
  wire   n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n34, n36, n37, n39,
         n40, n41, n43, n44, n45, n46, n48, n49, n50, n51, n52, n54, n55, n56,
         n57, n58, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;

  ADDFXL U3 ( .A(n13), .B(n20), .CI(n3), .CO(n2), .S(product_5_) );
  ADDFXL U4 ( .A(n21), .B(n26), .CI(n4), .CO(n3), .S(product_4_) );
  ADDFXL U5 ( .A(n27), .B(n29), .CI(n5), .CO(n4), .S(product_3_) );
  ADDFXL U6 ( .A(n6), .B(n46), .CI(n31), .CO(n5), .S(product_2_) );
  ADDHXL U7 ( .A(n52), .B(n58), .CO(n6), .S(product_1_) );
  ADDFXL U13 ( .A(n17), .B(n22), .CI(n15), .CO(n12), .S(n13) );
  ADDFXL U14 ( .A(n24), .B(n48), .CI(n19), .CO(n14), .S(n15) );
  ADDFXL U15 ( .A(n39), .B(n54), .CI(n43), .CO(n16), .S(n17) );
  ADDHXL U16 ( .A(n36), .B(n34), .CO(n18), .S(n19) );
  ADDFXL U17 ( .A(n25), .B(n28), .CI(n23), .CO(n20), .S(n21) );
  ADDFXL U18 ( .A(n44), .B(n55), .CI(n49), .CO(n22), .S(n23) );
  ADDHXL U19 ( .A(n40), .B(n37), .CO(n24), .S(n25) );
  ADDFXL U20 ( .A(n50), .B(n56), .CI(n30), .CO(n26), .S(n27) );
  ADDHXL U21 ( .A(n45), .B(n41), .CO(n28), .S(n29) );
  ADDHXL U22 ( .A(n57), .B(n51), .CO(n30), .S(n31) );
  CLKINVX1 U67 ( .A(a[0]), .Y(n102) );
  CLKINVX1 U68 ( .A(a[1]), .Y(n101) );
  CLKINVX1 U69 ( .A(b[1]), .Y(n106) );
  CLKINVX1 U70 ( .A(b[2]), .Y(n105) );
  NOR2XL U71 ( .A(n98), .B(n106), .Y(n36) );
  CLKINVX1 U72 ( .A(b[0]), .Y(n107) );
  NOR2XL U73 ( .A(n105), .B(n99), .Y(n39) );
  AND2XL U74 ( .A(b[5]), .B(a[0]), .Y(n54) );
  NAND2XL U75 ( .A(b[2]), .B(a[4]), .Y(n117) );
  NAND2XL U76 ( .A(b[0]), .B(a[6]), .Y(n115) );
  NAND2XL U77 ( .A(b[6]), .B(a[0]), .Y(n122) );
  NAND2XL U78 ( .A(b[1]), .B(a[5]), .Y(n116) );
  NAND2XL U79 ( .A(b[5]), .B(a[1]), .Y(n118) );
  CLKINVX1 U80 ( .A(a[2]), .Y(n100) );
  CLKINVX1 U81 ( .A(b[3]), .Y(n104) );
  CLKINVX1 U82 ( .A(a[3]), .Y(n99) );
  CLKINVX1 U83 ( .A(a[4]), .Y(n98) );
  CLKINVX1 U84 ( .A(b[4]), .Y(n103) );
  XOR2X1 U85 ( .A(n108), .B(n109), .Y(product_6_) );
  XOR2X1 U86 ( .A(n110), .B(n12), .Y(n109) );
  XOR2X1 U87 ( .A(n111), .B(n112), .Y(n110) );
  XOR2X1 U88 ( .A(n113), .B(n114), .Y(n112) );
  XOR2X1 U89 ( .A(n115), .B(n116), .Y(n114) );
  XOR2X1 U90 ( .A(n117), .B(n118), .Y(n113) );
  XOR2X1 U91 ( .A(n119), .B(n120), .Y(n111) );
  XOR2X1 U92 ( .A(n121), .B(n122), .Y(n120) );
  NAND2X1 U93 ( .A(b[4]), .B(a[2]), .Y(n121) );
  XOR2X1 U94 ( .A(n123), .B(n16), .Y(n119) );
  NAND2X1 U95 ( .A(b[3]), .B(a[3]), .Y(n123) );
  XOR2X1 U96 ( .A(n124), .B(n14), .Y(n108) );
  XNOR2X1 U97 ( .A(n2), .B(n18), .Y(n124) );
  NOR2X1 U98 ( .A(n102), .B(n107), .Y(product_0_) );
  NOR2X1 U99 ( .A(n102), .B(n106), .Y(n58) );
  NOR2X1 U100 ( .A(n105), .B(n102), .Y(n57) );
  NOR2X1 U101 ( .A(n102), .B(n104), .Y(n56) );
  NOR2X1 U102 ( .A(n102), .B(n103), .Y(n55) );
  NOR2X1 U103 ( .A(n101), .B(n107), .Y(n52) );
  NOR2X1 U104 ( .A(n106), .B(n101), .Y(n51) );
  NOR2X1 U105 ( .A(n105), .B(n101), .Y(n50) );
  NOR2X1 U106 ( .A(n101), .B(n104), .Y(n49) );
  NOR2X1 U107 ( .A(n101), .B(n103), .Y(n48) );
  NOR2X1 U108 ( .A(n107), .B(n100), .Y(n46) );
  NOR2X1 U109 ( .A(n106), .B(n100), .Y(n45) );
  NOR2X1 U110 ( .A(n105), .B(n100), .Y(n44) );
  NOR2X1 U111 ( .A(n104), .B(n100), .Y(n43) );
  NOR2X1 U112 ( .A(n107), .B(n99), .Y(n41) );
  NOR2X1 U113 ( .A(n106), .B(n99), .Y(n40) );
  NOR2X1 U114 ( .A(n98), .B(n107), .Y(n37) );
  AND2X1 U115 ( .A(a[5]), .B(b[0]), .Y(n34) );
endmodule


module matvecmult_DW01_add_13 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_12 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_11 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_10 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_9 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1;
  wire   [6:2] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_8 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1, n2, n3, n4;
  wire   [6:2] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR3XL U2 ( .A(B[3]), .B(A[3]), .C(carry[3]), .Y(SUM[3]) );
  NAND2X1 U3 ( .A(carry[3]), .B(B[3]), .Y(n2) );
  NAND2X1 U4 ( .A(A[3]), .B(B[3]), .Y(n3) );
  NAND2X1 U5 ( .A(A[3]), .B(carry[3]), .Y(n4) );
  NAND3X1 U6 ( .A(n2), .B(n3), .C(n4), .Y(carry[4]) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult_DW01_add_7 ( A, B, SUM );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  wire   n1, n2, n3, n4;
  wire   [6:2] carry;

  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1 ( .A(B[5]), .B(A[5]), .C(carry[5]), .Y(SUM[5]) );
  AND2X2 U2 ( .A(B[0]), .B(A[0]), .Y(n1) );
  NAND2XL U3 ( .A(carry[5]), .B(B[5]), .Y(n2) );
  NAND2XL U4 ( .A(A[5]), .B(B[5]), .Y(n3) );
  NAND2XL U5 ( .A(A[5]), .B(carry[5]), .Y(n4) );
  NAND3X1 U6 ( .A(n2), .B(n3), .C(n4), .Y(carry[6]) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module matvecmult ( CLK, RST, vector_x, vector_b, vector_y, Q, A, finish );
  input [127:0] vector_x;
  input [127:0] vector_b;
  output [127:0] vector_y;
  input [127:0] Q;
  output [3:0] A;
  input CLK, RST;
  output finish;
  wire   N200, N201, N202, N203, N204, N205, N206, N214, N215, N216, N217,
         N218, N219, N220, finish_w, N311, N312, N313, N314, N315, N316, N317,
         N318, N320, N322, N331, N332, N333, N334, N335, N336, N337, N338,
         N351, N352, N353, N354, N355, N356, N357, N358, N371, N372, N373,
         N374, N375, N376, N377, N378, N391, N392, N393, N394, N395, N396,
         N397, N398, N411, N412, N413, N414, N415, N416, N417, N418, N431,
         N432, N433, N434, N435, N436, N437, N438, N451, N452, N453, N454,
         N455, N456, N457, N458, N471, N472, N473, N474, N475, N476, N477,
         N478, N491, N492, N493, N494, N495, N496, N497, N498, N511, N512,
         N513, N514, N515, N516, N517, N518, N531, N532, N533, N534, N535,
         N536, N537, N538, N551, N552, N553, N554, N555, N556, N557, N558,
         N571, N572, N573, N574, N575, N576, N577, N578, N591, N592, N593,
         N594, N595, N596, N597, N598, N611, N612, N613, N614, N615, N616,
         N617, N618, N635, N636, N637, N638, finish_r, n98, n99, n101, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n2000, n2010, n2020,
         n2030, n2040, n2050, n2060, n207, n208, n209, n210, n211, n212, n213,
         n2140, n2150, n2160, n2170, n2180, n2190, n2200, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, N610, N609, N608, N607, N606, N605,
         N604, N603, N590, N589, N588, N587, N586, N585, N584, N583, N570,
         N569, N568, N567, N566, N565, N564, N563, N550, N549, N548, N547,
         N546, N545, N544, N543, N530, N529, N528, N527, N526, N525, N524,
         N523, N510, N509, N508, N507, N506, N505, N504, N503, N490, N489,
         N488, N487, N486, N485, N484, N483, N470, N469, N468, N467, N466,
         N465, N464, N463, N450, N449, N448, N447, N446, N445, N444, N443,
         N430, N429, N428, N427, N426, N425, N424, N423, N410, N409, N408,
         N407, N406, N405, N404, N403, N390, N389, N388, N387, N386, N385,
         N384, N383, N370, N369, N368, N367, N366, N365, N364, N363, N350,
         N349, N348, N347, N346, N345, N344, N343, N330, N329, N328, N327,
         N326, N325, N324, N323, N310, N309, N308, N307, N306, N305, N304,
         N303, N2340, N2330, N2320, N2310, N2300, N2290, N2280, N990, N980,
         N97, N96, N95, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77,
         N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63,
         N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49,
         N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35,
         N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21,
         N20, N19, N18, N1640, N1630, N1620, N1610, N1600, N1590, N1580, N1500,
         N1490, N1480, N1470, N1460, N1450, N1440, N1150, N1140, N1130, N1120,
         N1110, N1100, N1090, N1010, N100, N94, N93, N92, N91, N90, N89, N88,
         N2270, N2260, N2250, N2240, N2230, N2220, N2210, N2130, N2120, N2110,
         N2100, N2090, N2080, N2070, N1990, N1980, N1970, N1960, N1950, N1940,
         N1930, N1920, N1910, N1900, N1890, N1880, N1870, N1860, N1850, N1840,
         N1830, N1820, N1810, N1800, N1790, N1780, N1770, N1760, N1750, N1740,
         N1730, N1720, N1710, N1700, N1690, N1680, N1670, N1660, N1650, N1570,
         N1560, N1550, N1540, N1530, N1520, N1510, N1430, N1420, N1410, N1400,
         N1390, N1380, N1370, N1360, N1350, N1340, N1330, N1320, N1310, N1300,
         N1290, N1280, N1270, N1260, N1250, N1240, N1230, N1220, N1210, N1200,
         N1190, N1180, N1170, N1160, N1080, N1070, N1060, N1050, N1040, N1030,
         N102, n3220, n3230, n3240, n3250, n3260, n3270, n3280, n3290, n3300,
         n3310, n3320, n3330, n3340, n3350, n3360, n3370, n3380, n339, n340,
         n341, n342, n3430, n3440, n3450, n3460, n3470, n3480, n3490, n3500,
         n3510, n3520, n3530, n3540, n3550, n3560, n3570, n3580, n359, n360,
         n361, n362, n3630, n3640, n3650;
  wire   [3:0] counter_r;
  wire   [127:0] vector_y_r;
  wire   [3:0] counter_w;
  wire   [127:0] vector_y_w;

  matvecmult_DW01_add_46 add_0_root_add_45_15 ( .A({N206, N205, N204, N203, 
        N202, N201, N200}), .B({N220, N219, N218, N217, N216, N215, N214}), 
        .SUM({N2340, N2330, N2320, N2310, N2300, N2290, N2280}) );
  matvecmult_DW01_add_45 add_1_root_add_0_root_add_75_2 ( .A(vector_y_r[7:0]), 
        .B(vector_b[7:0]), .SUM({N310, N309, N308, N307, N306, N305, N304, 
        N303}) );
  matvecmult_DW01_add_44 add_1_root_add_0_root_add_79_2 ( .A(vector_y_r[15:8]), 
        .B(vector_b[15:8]), .SUM({N330, N329, N328, N327, N326, N325, N324, 
        N323}) );
  matvecmult_DW01_add_43 add_1_root_add_0_root_add_83_2 ( .A(vector_y_r[23:16]), .B(vector_b[23:16]), .SUM({N350, N349, N348, N347, N346, N345, N344, N343})
         );
  matvecmult_DW01_add_42 add_1_root_add_0_root_add_87_2 ( .A(vector_y_r[31:24]), .B(vector_b[31:24]), .SUM({N370, N369, N368, N367, N366, N365, N364, N363})
         );
  matvecmult_DW01_add_41 add_1_root_add_0_root_add_91_2 ( .A(vector_y_r[39:32]), .B(vector_b[39:32]), .SUM({N390, N389, N388, N387, N386, N385, N384, N383})
         );
  matvecmult_DW01_add_40 add_1_root_add_0_root_add_95_2 ( .A(vector_y_r[47:40]), .B(vector_b[47:40]), .SUM({N410, N409, N408, N407, N406, N405, N404, N403})
         );
  matvecmult_DW01_add_39 add_1_root_add_0_root_add_99_2 ( .A(vector_y_r[55:48]), .B(vector_b[55:48]), .SUM({N430, N429, N428, N427, N426, N425, N424, N423})
         );
  matvecmult_DW01_add_38 add_1_root_add_0_root_add_103_2 ( .A(
        vector_y_r[63:56]), .B(vector_b[63:56]), .SUM({N450, N449, N448, N447, 
        N446, N445, N444, N443}) );
  matvecmult_DW01_add_37 add_1_root_add_0_root_add_107_2 ( .A(
        vector_y_r[71:64]), .B(vector_b[71:64]), .SUM({N470, N469, N468, N467, 
        N466, N465, N464, N463}) );
  matvecmult_DW01_add_36 add_1_root_add_0_root_add_111_2 ( .A(
        vector_y_r[79:72]), .B(vector_b[79:72]), .SUM({N490, N489, N488, N487, 
        N486, N485, N484, N483}) );
  matvecmult_DW01_add_35 add_1_root_add_0_root_add_115_2 ( .A(
        vector_y_r[87:80]), .B(vector_b[87:80]), .SUM({N510, N509, N508, N507, 
        N506, N505, N504, N503}) );
  matvecmult_DW01_add_34 add_1_root_add_0_root_add_119_2 ( .A(
        vector_y_r[95:88]), .B(vector_b[95:88]), .SUM({N530, N529, N528, N527, 
        N526, N525, N524, N523}) );
  matvecmult_DW01_add_33 add_1_root_add_0_root_add_123_2 ( .A(
        vector_y_r[103:96]), .B(vector_b[103:96]), .SUM({N550, N549, N548, 
        N547, N546, N545, N544, N543}) );
  matvecmult_DW01_add_32 add_1_root_add_0_root_add_127_2 ( .A(
        vector_y_r[111:104]), .B(vector_b[111:104]), .SUM({N570, N569, N568, 
        N567, N566, N565, N564, N563}) );
  matvecmult_DW01_add_31 add_1_root_add_0_root_add_131_2 ( .A(
        vector_y_r[119:112]), .B(vector_b[119:112]), .SUM({N590, N589, N588, 
        N587, N586, N585, N584, N583}) );
  matvecmult_DW01_add_30 add_1_root_add_0_root_add_135_2 ( .A(
        vector_y_r[127:120]), .B(vector_b[127:120]), .SUM({N610, N609, N608, 
        N607, N606, N605, N604, N603}) );
  matvecmult_DW01_add_29 add_0_root_add_0_root_add_75_2 ( .A({N310, N309, N308, 
        N307, N306, N305, N304, N303}), .SUM({N318, N317, N316, N315, N314, 
        N313, N312, N311}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), .B_4_(
        n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_28 add_0_root_add_0_root_add_79_2 ( .A({N330, N329, N328, 
        N327, N326, N325, N324, N323}), .SUM({N338, N337, N336, N335, N334, 
        N333, N332, N331}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), .B_4_(
        N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_27 add_0_root_add_0_root_add_83_2 ( .A({N350, N349, N348, 
        N347, N346, N345, N344, N343}), .SUM({N358, N357, N356, N355, N354, 
        N353, N352, N351}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), .B_4_(
        n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_26 add_0_root_add_0_root_add_87_2 ( .A({N370, N369, N368, 
        N367, N366, N365, N364, N363}), .SUM({N378, N377, N376, N375, N374, 
        N373, N372, N371}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), .B_4_(
        N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_25 add_0_root_add_0_root_add_91_2 ( .A({N390, N389, N388, 
        N387, N386, N385, N384, N383}), .SUM({N398, N397, N396, N395, N394, 
        N393, N392, N391}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), .B_4_(
        n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_24 add_0_root_add_0_root_add_95_2 ( .A({N410, N409, N408, 
        N407, N406, N405, N404, N403}), .SUM({N418, N417, N416, N415, N414, 
        N413, N412, N411}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), .B_4_(
        N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_23 add_0_root_add_0_root_add_99_2 ( .A({N430, N429, N428, 
        N427, N426, N425, N424, N423}), .SUM({N438, N437, N436, N435, N434, 
        N433, N432, N431}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), .B_4_(
        n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_22 add_0_root_add_0_root_add_103_2 ( .A({N450, N449, 
        N448, N447, N446, N445, N444, N443}), .SUM({N458, N457, N456, N455, 
        N454, N453, N452, N451}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), 
        .B_4_(N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_21 add_0_root_add_0_root_add_107_2 ( .A({N470, N469, 
        N468, N467, N466, N465, N464, N463}), .SUM({N478, N477, N476, N475, 
        N474, N473, N472, N471}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), 
        .B_4_(n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_20 add_0_root_add_0_root_add_111_2 ( .A({N490, N489, 
        N488, N487, N486, N485, N484, N483}), .SUM({N498, N497, N496, N495, 
        N494, N493, N492, N491}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), 
        .B_4_(N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_19 add_0_root_add_0_root_add_115_2 ( .A({N510, N509, 
        N508, N507, N506, N505, N504, N503}), .SUM({N518, N517, N516, N515, 
        N514, N513, N512, N511}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), 
        .B_4_(n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_18 add_0_root_add_0_root_add_119_2 ( .A({N530, N529, 
        N528, N527, N526, N525, N524, N523}), .SUM({N538, N537, N536, N535, 
        N534, N533, N532, N531}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), 
        .B_4_(N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_17 add_0_root_add_0_root_add_123_2 ( .A({N550, N549, 
        N548, N547, N546, N545, N544, N543}), .SUM({N558, N557, N556, N555, 
        N554, N553, N552, N551}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), 
        .B_4_(n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_16 add_0_root_add_0_root_add_127_2 ( .A({N570, N569, 
        N568, N567, N566, N565, N564, N563}), .SUM({N578, N577, N576, N575, 
        N574, N573, N572, N571}), .B_7_(n3340), .B_6_(n3320), .B_5_(N2320), 
        .B_4_(N2310), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW01_add_15 add_0_root_add_0_root_add_131_2 ( .A({N590, N589, 
        N588, N587, N586, N585, N584, N583}), .SUM({N598, N597, N596, N595, 
        N594, N593, N592, N591}), .B_7_(n3330), .B_6_(n3310), .B_5_(n3300), 
        .B_4_(n3290), .B_3_(n3270), .B_2_(n3250), .B_1_(n3230) );
  matvecmult_DW01_add_14 add_0_root_add_0_root_add_135_2 ( .A({N610, N609, 
        N608, N607, N606, N605, N604, N603}), .SUM({N618, N617, N616, N615, 
        N614, N613, N612, N611}), .B_7_(n3340), .B_6_(n3320), .B_5_(n3300), 
        .B_4_(n3290), .B_3_(n3280), .B_2_(n3260), .B_1_(n3240) );
  matvecmult_DW_mult_uns_7 mult_45_8 ( .a(vector_x[62:56]), .b(Q[70:64]), 
        .product_6_(N1150), .product_5_(N1140), .product_4_(N1130), 
        .product_3_(N1120), .product_2_(N1110), .product_1_(N1100), 
        .product_0_(N1090) );
  matvecmult_DW_mult_uns_6 mult_45_7 ( .a(vector_x[54:48]), .b(Q[78:72]), 
        .product_6_(N1010), .product_5_(N100), .product_4_(N990), .product_3_(
        N980), .product_2_(N97), .product_1_(N96), .product_0_(N95) );
  matvecmult_DW_mult_uns_5 mult_45_6 ( .a(vector_x[46:40]), .b(Q[86:80]), 
        .product_6_(N87), .product_5_(N86), .product_4_(N85), .product_3_(N84), 
        .product_2_(N83), .product_1_(N82), .product_0_(N81) );
  matvecmult_DW_mult_uns_4 mult_45_5 ( .a(vector_x[38:32]), .b(Q[94:88]), 
        .product_6_(N73), .product_5_(N72), .product_4_(N71), .product_3_(N70), 
        .product_2_(N69), .product_1_(N68), .product_0_(N67) );
  matvecmult_DW_mult_uns_3 mult_45_4 ( .a(vector_x[30:24]), .b(Q[102:96]), 
        .product_6_(N59), .product_5_(N58), .product_4_(N57), .product_3_(N56), 
        .product_2_(N55), .product_1_(N54), .product_0_(N53) );
  matvecmult_DW_mult_uns_2 mult_45_3 ( .a(vector_x[22:16]), .b(Q[110:104]), 
        .product_6_(N45), .product_5_(N44), .product_4_(N43), .product_3_(N42), 
        .product_2_(N41), .product_1_(N40), .product_0_(N39) );
  matvecmult_DW_mult_uns_1 mult_45_2 ( .a(vector_x[14:8]), .b(Q[118:112]), 
        .product_6_(N31), .product_5_(N30), .product_4_(N29), .product_3_(N28), 
        .product_2_(N27), .product_1_(N26), .product_0_(N25) );
  matvecmult_DW_mult_uns_0 mult_45 ( .a(vector_x[6:0]), .b(Q[126:120]), 
        .product_6_(N24), .product_5_(N23), .product_4_(N22), .product_3_(N21), 
        .product_2_(N20), .product_1_(N19), .product_0_(N18) );
  matvecmult_DW01_add_6 add_6_root_add_2_root_add_45_15 ( .A({N24, N23, N22, 
        N21, N20, N19, N18}), .B({N73, N72, N71, N70, N69, N68, N67}), .SUM({
        N80, N79, N78, N77, N76, N75, N74}) );
  matvecmult_DW01_add_5 add_5_root_add_2_root_add_45_15 ( .A({N45, N44, N43, 
        N42, N41, N40, N39}), .B({N1010, N100, N990, N980, N97, N96, N95}), 
        .SUM({N66, N65, N64, N63, N62, N61, N60}) );
  matvecmult_DW01_add_4 add_3_root_add_2_root_add_45_15 ( .A({N87, N86, N85, 
        N84, N83, N82, N81}), .B({N1150, N1140, N1130, N1120, N1110, N1100, 
        N1090}), .SUM({N52, N51, N50, N49, N48, N47, N46}) );
  matvecmult_DW01_add_3 add_2_root_add_2_root_add_45_15 ( .A({N80, N79, N78, 
        N77, N76, N75, N74}), .B({N52, N51, N50, N49, N48, N47, N46}), .SUM({
        N38, N37, N36, N35, N34, N33, N32}) );
  matvecmult_DW01_add_2 add_4_root_add_2_root_add_45_15 ( .A({N31, N30, N29, 
        N28, N27, N26, N25}), .B({N59, N58, N57, N56, N55, N54, N53}), .SUM({
        N1640, N1630, N1620, N1610, N1600, N1590, N1580}) );
  matvecmult_DW01_add_1 add_1_root_add_2_root_add_45_15 ( .A({N1640, N1630, 
        N1620, N1610, N1600, N1590, N1580}), .B({N66, N65, N64, N63, N62, N61, 
        N60}), .SUM({N1500, N1490, N1480, N1470, N1460, N1450, N1440}) );
  matvecmult_DW01_add_0 add_0_root_add_2_root_add_45_15 ( .A({N38, N37, N36, 
        N35, N34, N33, N32}), .B({N1500, N1490, N1480, N1470, N1460, N1450, 
        N1440}), .SUM({N206, N205, N204, N203, N202, N201, N200}) );
  matvecmult_DW_mult_uns_15 mult_45_16 ( .a(vector_x[126:120]), .b(Q[6:0]), 
        .product_6_(N2270), .product_5_(N2260), .product_4_(N2250), 
        .product_3_(N2240), .product_2_(N2230), .product_1_(N2220), 
        .product_0_(N2210) );
  matvecmult_DW_mult_uns_14 mult_45_15 ( .a(vector_x[118:112]), .b(Q[14:8]), 
        .product_6_(N2130), .product_5_(N2120), .product_4_(N2110), 
        .product_3_(N2100), .product_2_(N2090), .product_1_(N2080), 
        .product_0_(N2070) );
  matvecmult_DW_mult_uns_13 mult_45_14 ( .a(vector_x[110:104]), .b(Q[22:16]), 
        .product_6_(N1990), .product_5_(N1980), .product_4_(N1970), 
        .product_3_(N1960), .product_2_(N1950), .product_1_(N1940), 
        .product_0_(N1930) );
  matvecmult_DW_mult_uns_12 mult_45_13 ( .a(vector_x[102:96]), .b(Q[30:24]), 
        .product_6_(N1850), .product_5_(N1840), .product_4_(N1830), 
        .product_3_(N1820), .product_2_(N1810), .product_1_(N1800), 
        .product_0_(N1790) );
  matvecmult_DW_mult_uns_11 mult_45_12 ( .a(vector_x[94:88]), .b(Q[38:32]), 
        .product_6_(N1710), .product_5_(N1700), .product_4_(N1690), 
        .product_3_(N1680), .product_2_(N1670), .product_1_(N1660), 
        .product_0_(N1650) );
  matvecmult_DW_mult_uns_10 mult_45_11 ( .a(vector_x[86:80]), .b(Q[46:40]), 
        .product_6_(N1570), .product_5_(N1560), .product_4_(N1550), 
        .product_3_(N1540), .product_2_(N1530), .product_1_(N1520), 
        .product_0_(N1510) );
  matvecmult_DW_mult_uns_9 mult_45_10 ( .a(vector_x[78:72]), .b(Q[54:48]), 
        .product_6_(N1430), .product_5_(N1420), .product_4_(N1410), 
        .product_3_(N1400), .product_2_(N1390), .product_1_(N1380), 
        .product_0_(N1370) );
  matvecmult_DW_mult_uns_8 mult_45_9 ( .a(vector_x[70:64]), .b(Q[62:56]), 
        .product_6_(N1290), .product_5_(N1280), .product_4_(N1270), 
        .product_3_(N1260), .product_2_(N1250), .product_1_(N1240), 
        .product_0_(N1230) );
  matvecmult_DW01_add_13 add_6_root_add_1_root_add_45_15 ( .A({N1290, N1280, 
        N1270, N1260, N1250, N1240, N1230}), .B({N1850, N1840, N1830, N1820, 
        N1810, N1800, N1790}), .SUM({N1360, N1350, N1340, N1330, N1320, N1310, 
        N1300}) );
  matvecmult_DW01_add_12 add_5_root_add_1_root_add_45_15 ( .A({N1570, N1560, 
        N1550, N1540, N1530, N1520, N1510}), .B({N2130, N2120, N2110, N2100, 
        N2090, N2080, N2070}), .SUM({N1220, N1210, N1200, N1190, N1180, N1170, 
        N1160}) );
  matvecmult_DW01_add_11 add_3_root_add_1_root_add_45_15 ( .A({N1990, N1980, 
        N1970, N1960, N1950, N1940, N1930}), .B({N2270, N2260, N2250, N2240, 
        N2230, N2220, N2210}), .SUM({N1080, N1070, N1060, N1050, N1040, N1030, 
        N102}) );
  matvecmult_DW01_add_10 add_2_root_add_1_root_add_45_15 ( .A({N1360, N1350, 
        N1340, N1330, N1320, N1310, N1300}), .B({N1080, N1070, N1060, N1050, 
        N1040, N1030, N102}), .SUM({N94, N93, N92, N91, N90, N89, N88}) );
  matvecmult_DW01_add_9 add_4_root_add_1_root_add_45_15 ( .A({N1430, N1420, 
        N1410, N1400, N1390, N1380, N1370}), .B({N1710, N1700, N1690, N1680, 
        N1670, N1660, N1650}), .SUM({N1920, N1910, N1900, N1890, N1880, N1870, 
        N1860}) );
  matvecmult_DW01_add_8 add_1_root_add_1_root_add_45_15 ( .A({N1920, N1910, 
        N1900, N1890, N1880, N1870, N1860}), .B({N1220, N1210, N1200, N1190, 
        N1180, N1170, N1160}), .SUM({N1780, N1770, N1760, N1750, N1740, N1730, 
        N1720}) );
  matvecmult_DW01_add_7 add_0_root_add_1_root_add_45_15 ( .A({N94, N93, N92, 
        N91, N90, N89, N88}), .B({N1780, N1770, N1760, N1750, N1740, N1730, 
        N1720}), .SUM({N220, N219, N218, N217, N216, N215, N214}) );
  DFFQX1 vector_y_w_reg_12__5_ ( .D(n168), .CK(CLK), .Q(vector_y_w[101]) );
  DFFQX1 vector_y_w_reg_12__4_ ( .D(n169), .CK(CLK), .Q(vector_y_w[100]) );
  DFFQX1 vector_y_w_reg_12__3_ ( .D(n170), .CK(CLK), .Q(vector_y_w[99]) );
  DFFQX1 vector_y_w_reg_12__2_ ( .D(n171), .CK(CLK), .Q(vector_y_w[98]) );
  DFFQX1 vector_y_w_reg_12__1_ ( .D(n172), .CK(CLK), .Q(vector_y_w[97]) );
  DFFQX1 vector_y_w_reg_12__0_ ( .D(n173), .CK(CLK), .Q(vector_y_w[96]) );
  DFFQX1 vector_y_w_reg_8__5_ ( .D(n2000), .CK(CLK), .Q(vector_y_w[69]) );
  DFFQX1 vector_y_w_reg_8__4_ ( .D(n2010), .CK(CLK), .Q(vector_y_w[68]) );
  DFFQX1 vector_y_w_reg_8__3_ ( .D(n2020), .CK(CLK), .Q(vector_y_w[67]) );
  DFFQX1 vector_y_w_reg_8__2_ ( .D(n2030), .CK(CLK), .Q(vector_y_w[66]) );
  DFFQX1 vector_y_w_reg_8__1_ ( .D(n2040), .CK(CLK), .Q(vector_y_w[65]) );
  DFFQX1 vector_y_w_reg_8__0_ ( .D(n2050), .CK(CLK), .Q(vector_y_w[64]) );
  DFFQX1 vector_y_w_reg_4__5_ ( .D(n224), .CK(CLK), .Q(vector_y_w[37]) );
  DFFQX1 vector_y_w_reg_4__4_ ( .D(n225), .CK(CLK), .Q(vector_y_w[36]) );
  DFFQX1 vector_y_w_reg_4__3_ ( .D(n226), .CK(CLK), .Q(vector_y_w[35]) );
  DFFQX1 vector_y_w_reg_4__2_ ( .D(n227), .CK(CLK), .Q(vector_y_w[34]) );
  DFFQX1 vector_y_w_reg_4__1_ ( .D(n228), .CK(CLK), .Q(vector_y_w[33]) );
  DFFQX1 vector_y_w_reg_4__0_ ( .D(n229), .CK(CLK), .Q(vector_y_w[32]) );
  DFFQX1 vector_y_w_reg_0__5_ ( .D(n256), .CK(CLK), .Q(vector_y_w[5]) );
  DFFQX1 vector_y_w_reg_0__4_ ( .D(n257), .CK(CLK), .Q(vector_y_w[4]) );
  DFFQX1 vector_y_w_reg_0__3_ ( .D(n258), .CK(CLK), .Q(vector_y_w[3]) );
  DFFQX1 vector_y_w_reg_0__2_ ( .D(n259), .CK(CLK), .Q(vector_y_w[2]) );
  DFFQX1 vector_y_w_reg_0__1_ ( .D(n260), .CK(CLK), .Q(vector_y_w[1]) );
  DFFQX1 vector_y_w_reg_0__0_ ( .D(n261), .CK(CLK), .Q(vector_y_w[0]) );
  DFFQX1 vector_y_w_reg_15__5_ ( .D(n144), .CK(CLK), .Q(vector_y_w[125]) );
  DFFQX1 vector_y_w_reg_15__4_ ( .D(n145), .CK(CLK), .Q(vector_y_w[124]) );
  DFFQX1 vector_y_w_reg_15__3_ ( .D(n146), .CK(CLK), .Q(vector_y_w[123]) );
  DFFQX1 vector_y_w_reg_15__2_ ( .D(n147), .CK(CLK), .Q(vector_y_w[122]) );
  DFFQX1 vector_y_w_reg_15__1_ ( .D(n148), .CK(CLK), .Q(vector_y_w[121]) );
  DFFQX1 vector_y_w_reg_15__0_ ( .D(n149), .CK(CLK), .Q(vector_y_w[120]) );
  DFFQX1 vector_y_w_reg_11__5_ ( .D(n176), .CK(CLK), .Q(vector_y_w[93]) );
  DFFQX1 vector_y_w_reg_11__4_ ( .D(n177), .CK(CLK), .Q(vector_y_w[92]) );
  DFFQX1 vector_y_w_reg_11__3_ ( .D(n178), .CK(CLK), .Q(vector_y_w[91]) );
  DFFQX1 vector_y_w_reg_11__2_ ( .D(n179), .CK(CLK), .Q(vector_y_w[90]) );
  DFFQX1 vector_y_w_reg_11__1_ ( .D(n180), .CK(CLK), .Q(vector_y_w[89]) );
  DFFQX1 vector_y_w_reg_11__0_ ( .D(n181), .CK(CLK), .Q(vector_y_w[88]) );
  DFFQX1 vector_y_w_reg_3__5_ ( .D(n232), .CK(CLK), .Q(vector_y_w[29]) );
  DFFQX1 vector_y_w_reg_3__4_ ( .D(n233), .CK(CLK), .Q(vector_y_w[28]) );
  DFFQX1 vector_y_w_reg_3__3_ ( .D(n234), .CK(CLK), .Q(vector_y_w[27]) );
  DFFQX1 vector_y_w_reg_3__2_ ( .D(n235), .CK(CLK), .Q(vector_y_w[26]) );
  DFFQX1 vector_y_w_reg_3__1_ ( .D(n236), .CK(CLK), .Q(vector_y_w[25]) );
  DFFQX1 vector_y_w_reg_3__0_ ( .D(n237), .CK(CLK), .Q(vector_y_w[24]) );
  DFFQX1 vector_y_w_reg_14__5_ ( .D(n152), .CK(CLK), .Q(vector_y_w[117]) );
  DFFQX1 vector_y_w_reg_14__4_ ( .D(n153), .CK(CLK), .Q(vector_y_w[116]) );
  DFFQX1 vector_y_w_reg_14__3_ ( .D(n154), .CK(CLK), .Q(vector_y_w[115]) );
  DFFQX1 vector_y_w_reg_14__2_ ( .D(n155), .CK(CLK), .Q(vector_y_w[114]) );
  DFFQX1 vector_y_w_reg_14__1_ ( .D(n156), .CK(CLK), .Q(vector_y_w[113]) );
  DFFQX1 vector_y_w_reg_14__0_ ( .D(n157), .CK(CLK), .Q(vector_y_w[112]) );
  DFFQX1 vector_y_w_reg_10__5_ ( .D(n184), .CK(CLK), .Q(vector_y_w[85]) );
  DFFQX1 vector_y_w_reg_10__4_ ( .D(n185), .CK(CLK), .Q(vector_y_w[84]) );
  DFFQX1 vector_y_w_reg_10__3_ ( .D(n186), .CK(CLK), .Q(vector_y_w[83]) );
  DFFQX1 vector_y_w_reg_10__2_ ( .D(n187), .CK(CLK), .Q(vector_y_w[82]) );
  DFFQX1 vector_y_w_reg_10__1_ ( .D(n188), .CK(CLK), .Q(vector_y_w[81]) );
  DFFQX1 vector_y_w_reg_10__0_ ( .D(n189), .CK(CLK), .Q(vector_y_w[80]) );
  DFFQX1 vector_y_w_reg_6__5_ ( .D(n208), .CK(CLK), .Q(vector_y_w[53]) );
  DFFQX1 vector_y_w_reg_6__4_ ( .D(n209), .CK(CLK), .Q(vector_y_w[52]) );
  DFFQX1 vector_y_w_reg_6__3_ ( .D(n210), .CK(CLK), .Q(vector_y_w[51]) );
  DFFQX1 vector_y_w_reg_6__2_ ( .D(n211), .CK(CLK), .Q(vector_y_w[50]) );
  DFFQX1 vector_y_w_reg_6__1_ ( .D(n212), .CK(CLK), .Q(vector_y_w[49]) );
  DFFQX1 vector_y_w_reg_6__0_ ( .D(n213), .CK(CLK), .Q(vector_y_w[48]) );
  DFFQX1 vector_y_w_reg_2__5_ ( .D(n240), .CK(CLK), .Q(vector_y_w[21]) );
  DFFQX1 vector_y_w_reg_2__4_ ( .D(n241), .CK(CLK), .Q(vector_y_w[20]) );
  DFFQX1 vector_y_w_reg_2__3_ ( .D(n242), .CK(CLK), .Q(vector_y_w[19]) );
  DFFQX1 vector_y_w_reg_2__2_ ( .D(n243), .CK(CLK), .Q(vector_y_w[18]) );
  DFFQX1 vector_y_w_reg_2__1_ ( .D(n244), .CK(CLK), .Q(vector_y_w[17]) );
  DFFQX1 vector_y_w_reg_2__0_ ( .D(n245), .CK(CLK), .Q(vector_y_w[16]) );
  DFFQX1 vector_y_w_reg_13__5_ ( .D(n160), .CK(CLK), .Q(vector_y_w[109]) );
  DFFQX1 vector_y_w_reg_13__4_ ( .D(n161), .CK(CLK), .Q(vector_y_w[108]) );
  DFFQX1 vector_y_w_reg_13__3_ ( .D(n162), .CK(CLK), .Q(vector_y_w[107]) );
  DFFQX1 vector_y_w_reg_13__2_ ( .D(n163), .CK(CLK), .Q(vector_y_w[106]) );
  DFFQX1 vector_y_w_reg_13__1_ ( .D(n164), .CK(CLK), .Q(vector_y_w[105]) );
  DFFQX1 vector_y_w_reg_13__0_ ( .D(n165), .CK(CLK), .Q(vector_y_w[104]) );
  DFFQX1 vector_y_w_reg_9__5_ ( .D(n192), .CK(CLK), .Q(vector_y_w[77]) );
  DFFQX1 vector_y_w_reg_9__4_ ( .D(n193), .CK(CLK), .Q(vector_y_w[76]) );
  DFFQX1 vector_y_w_reg_9__3_ ( .D(n194), .CK(CLK), .Q(vector_y_w[75]) );
  DFFQX1 vector_y_w_reg_9__2_ ( .D(n195), .CK(CLK), .Q(vector_y_w[74]) );
  DFFQX1 vector_y_w_reg_9__1_ ( .D(n196), .CK(CLK), .Q(vector_y_w[73]) );
  DFFQX1 vector_y_w_reg_9__0_ ( .D(n197), .CK(CLK), .Q(vector_y_w[72]) );
  DFFQX1 vector_y_w_reg_5__5_ ( .D(n2160), .CK(CLK), .Q(vector_y_w[45]) );
  DFFQX1 vector_y_w_reg_5__4_ ( .D(n2170), .CK(CLK), .Q(vector_y_w[44]) );
  DFFQX1 vector_y_w_reg_5__3_ ( .D(n2180), .CK(CLK), .Q(vector_y_w[43]) );
  DFFQX1 vector_y_w_reg_5__2_ ( .D(n2190), .CK(CLK), .Q(vector_y_w[42]) );
  DFFQX1 vector_y_w_reg_5__1_ ( .D(n2200), .CK(CLK), .Q(vector_y_w[41]) );
  DFFQX1 vector_y_w_reg_5__0_ ( .D(n221), .CK(CLK), .Q(vector_y_w[40]) );
  DFFQX1 vector_y_w_reg_1__5_ ( .D(n248), .CK(CLK), .Q(vector_y_w[13]) );
  DFFQX1 vector_y_w_reg_1__4_ ( .D(n249), .CK(CLK), .Q(vector_y_w[12]) );
  DFFQX1 vector_y_w_reg_1__3_ ( .D(n250), .CK(CLK), .Q(vector_y_w[11]) );
  DFFQX1 vector_y_w_reg_1__2_ ( .D(n251), .CK(CLK), .Q(vector_y_w[10]) );
  DFFQX1 vector_y_w_reg_1__1_ ( .D(n252), .CK(CLK), .Q(vector_y_w[9]) );
  DFFQX1 vector_y_w_reg_1__0_ ( .D(n253), .CK(CLK), .Q(vector_y_w[8]) );
  DFFRX1 vector_y_r_reg_12__7_ ( .D(vector_y_w[103]), .CK(CLK), .RN(n359), .Q(
        vector_y_r[103]) );
  DFFRX1 vector_y_r_reg_12__6_ ( .D(vector_y_w[102]), .CK(CLK), .RN(n3570), 
        .Q(vector_y_r[102]) );
  DFFRX1 vector_y_r_reg_8__7_ ( .D(vector_y_w[71]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[71]) );
  DFFRX1 vector_y_r_reg_8__6_ ( .D(vector_y_w[70]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[70]) );
  DFFRX1 vector_y_r_reg_4__7_ ( .D(vector_y_w[39]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[39]) );
  DFFRX1 vector_y_r_reg_4__6_ ( .D(vector_y_w[38]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[38]) );
  DFFRX1 vector_y_r_reg_0__7_ ( .D(vector_y_w[7]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[7]) );
  DFFRX1 vector_y_r_reg_0__6_ ( .D(vector_y_w[6]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[6]) );
  DFFRX1 vector_y_r_reg_15__7_ ( .D(vector_y_w[127]), .CK(CLK), .RN(n3560), 
        .Q(vector_y_r[127]) );
  DFFRX1 vector_y_r_reg_15__6_ ( .D(vector_y_w[126]), .CK(CLK), .RN(n3520), 
        .Q(vector_y_r[126]) );
  DFFRX1 vector_y_r_reg_11__7_ ( .D(vector_y_w[95]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[95]) );
  DFFRX1 vector_y_r_reg_11__6_ ( .D(vector_y_w[94]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[94]) );
  DFFRX1 vector_y_r_reg_3__7_ ( .D(vector_y_w[31]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[31]) );
  DFFRX1 vector_y_r_reg_3__6_ ( .D(vector_y_w[30]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[30]) );
  DFFRX1 vector_y_r_reg_7__7_ ( .D(vector_y_w[63]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[63]) );
  DFFRX1 vector_y_r_reg_7__6_ ( .D(vector_y_w[62]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[62]) );
  DFFRX1 vector_y_r_reg_14__7_ ( .D(vector_y_w[119]), .CK(CLK), .RN(n3530), 
        .Q(vector_y_r[119]) );
  DFFRX1 vector_y_r_reg_14__6_ ( .D(vector_y_w[118]), .CK(CLK), .RN(n3530), 
        .Q(vector_y_r[118]) );
  DFFRX1 vector_y_r_reg_10__7_ ( .D(vector_y_w[87]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[87]) );
  DFFRX1 vector_y_r_reg_10__6_ ( .D(vector_y_w[86]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[86]) );
  DFFRX1 vector_y_r_reg_6__7_ ( .D(vector_y_w[55]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[55]) );
  DFFRX1 vector_y_r_reg_6__6_ ( .D(vector_y_w[54]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[54]) );
  DFFRX1 vector_y_r_reg_2__7_ ( .D(vector_y_w[23]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[23]) );
  DFFRX1 vector_y_r_reg_2__6_ ( .D(vector_y_w[22]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[22]) );
  DFFRX1 vector_y_r_reg_13__7_ ( .D(vector_y_w[111]), .CK(CLK), .RN(n3550), 
        .Q(vector_y_r[111]) );
  DFFRX1 vector_y_r_reg_13__6_ ( .D(vector_y_w[110]), .CK(CLK), .RN(n3550), 
        .Q(vector_y_r[110]) );
  DFFRX1 vector_y_r_reg_9__7_ ( .D(vector_y_w[79]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[79]) );
  DFFRX1 vector_y_r_reg_9__6_ ( .D(vector_y_w[78]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[78]) );
  DFFRX1 vector_y_r_reg_5__7_ ( .D(vector_y_w[47]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[47]) );
  DFFRX1 vector_y_r_reg_5__6_ ( .D(vector_y_w[46]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[46]) );
  DFFRX1 vector_y_r_reg_1__7_ ( .D(vector_y_w[15]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[15]) );
  DFFRX1 vector_y_r_reg_1__6_ ( .D(vector_y_w[14]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[14]) );
  DFFRX1 counter_r_reg_3_ ( .D(counter_w[3]), .CK(CLK), .RN(n359), .Q(
        counter_r[3]), .QN(n98) );
  DFFRX1 counter_r_reg_1_ ( .D(counter_w[1]), .CK(CLK), .RN(n3580), .Q(
        counter_r[1]), .QN(n101) );
  DFFRX1 counter_r_reg_2_ ( .D(counter_w[2]), .CK(CLK), .RN(n3580), .Q(
        counter_r[2]), .QN(n99) );
  DFFRX1 vector_y_r_reg_12__5_ ( .D(vector_y_w[101]), .CK(CLK), .RN(n3570), 
        .Q(vector_y_r[101]) );
  DFFRX1 vector_y_r_reg_12__4_ ( .D(vector_y_w[100]), .CK(CLK), .RN(n3580), 
        .Q(vector_y_r[100]) );
  DFFRX1 vector_y_r_reg_12__3_ ( .D(vector_y_w[99]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[99]) );
  DFFRX1 vector_y_r_reg_12__2_ ( .D(vector_y_w[98]), .CK(CLK), .RN(n359), .Q(
        vector_y_r[98]) );
  DFFRX1 vector_y_r_reg_12__1_ ( .D(vector_y_w[97]), .CK(CLK), .RN(n3580), .Q(
        vector_y_r[97]) );
  DFFRX1 vector_y_r_reg_8__5_ ( .D(vector_y_w[69]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[69]) );
  DFFRX1 vector_y_r_reg_8__4_ ( .D(vector_y_w[68]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[68]) );
  DFFRX1 vector_y_r_reg_8__3_ ( .D(vector_y_w[67]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[67]) );
  DFFRX1 vector_y_r_reg_8__2_ ( .D(vector_y_w[66]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[66]) );
  DFFRX1 vector_y_r_reg_8__1_ ( .D(vector_y_w[65]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[65]) );
  DFFRX1 vector_y_r_reg_4__5_ ( .D(vector_y_w[37]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[37]) );
  DFFRX1 vector_y_r_reg_4__4_ ( .D(vector_y_w[36]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[36]) );
  DFFRX1 vector_y_r_reg_4__3_ ( .D(vector_y_w[35]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[35]) );
  DFFRX1 vector_y_r_reg_4__2_ ( .D(vector_y_w[34]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[34]) );
  DFFRX1 vector_y_r_reg_4__1_ ( .D(vector_y_w[33]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[33]) );
  DFFRX1 vector_y_r_reg_0__5_ ( .D(vector_y_w[5]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[5]) );
  DFFRX1 vector_y_r_reg_0__4_ ( .D(vector_y_w[4]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[4]) );
  DFFRX1 vector_y_r_reg_0__3_ ( .D(vector_y_w[3]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[3]) );
  DFFRX1 vector_y_r_reg_0__2_ ( .D(vector_y_w[2]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[2]) );
  DFFRX1 vector_y_r_reg_0__1_ ( .D(vector_y_w[1]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[1]) );
  DFFRX1 vector_y_r_reg_15__5_ ( .D(vector_y_w[125]), .CK(CLK), .RN(n3540), 
        .Q(vector_y_r[125]) );
  DFFRX1 vector_y_r_reg_15__4_ ( .D(vector_y_w[124]), .CK(CLK), .RN(n3550), 
        .Q(vector_y_r[124]) );
  DFFRX1 vector_y_r_reg_15__3_ ( .D(vector_y_w[123]), .CK(CLK), .RN(n3560), 
        .Q(vector_y_r[123]) );
  DFFRX1 vector_y_r_reg_15__2_ ( .D(vector_y_w[122]), .CK(CLK), .RN(n3520), 
        .Q(vector_y_r[122]) );
  DFFRX1 vector_y_r_reg_15__1_ ( .D(vector_y_w[121]), .CK(CLK), .RN(n3510), 
        .Q(vector_y_r[121]) );
  DFFRX1 vector_y_r_reg_11__5_ ( .D(vector_y_w[93]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[93]) );
  DFFRX1 vector_y_r_reg_11__4_ ( .D(vector_y_w[92]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[92]) );
  DFFRX1 vector_y_r_reg_11__3_ ( .D(vector_y_w[91]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[91]) );
  DFFRX1 vector_y_r_reg_11__2_ ( .D(vector_y_w[90]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[90]) );
  DFFRX1 vector_y_r_reg_11__1_ ( .D(vector_y_w[89]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[89]) );
  DFFRX1 vector_y_r_reg_3__5_ ( .D(vector_y_w[29]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[29]) );
  DFFRX1 vector_y_r_reg_3__4_ ( .D(vector_y_w[28]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[28]) );
  DFFRX1 vector_y_r_reg_3__3_ ( .D(vector_y_w[27]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[27]) );
  DFFRX1 vector_y_r_reg_3__2_ ( .D(vector_y_w[26]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[26]) );
  DFFRX1 vector_y_r_reg_3__1_ ( .D(vector_y_w[25]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[25]) );
  DFFRX1 vector_y_r_reg_7__5_ ( .D(vector_y_w[61]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[61]) );
  DFFRX1 vector_y_r_reg_7__4_ ( .D(vector_y_w[60]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[60]) );
  DFFRX1 vector_y_r_reg_7__3_ ( .D(vector_y_w[59]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[59]) );
  DFFRX1 vector_y_r_reg_7__2_ ( .D(vector_y_w[58]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[58]) );
  DFFRX1 vector_y_r_reg_14__5_ ( .D(vector_y_w[117]), .CK(CLK), .RN(n3520), 
        .Q(vector_y_r[117]) );
  DFFRX1 vector_y_r_reg_14__4_ ( .D(vector_y_w[116]), .CK(CLK), .RN(n3520), 
        .Q(vector_y_r[116]) );
  DFFRX1 vector_y_r_reg_14__3_ ( .D(vector_y_w[115]), .CK(CLK), .RN(n3530), 
        .Q(vector_y_r[115]) );
  DFFRX1 vector_y_r_reg_14__2_ ( .D(vector_y_w[114]), .CK(CLK), .RN(n3530), 
        .Q(vector_y_r[114]) );
  DFFRX1 vector_y_r_reg_14__1_ ( .D(vector_y_w[113]), .CK(CLK), .RN(n3530), 
        .Q(vector_y_r[113]) );
  DFFRX1 vector_y_r_reg_10__5_ ( .D(vector_y_w[85]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[85]) );
  DFFRX1 vector_y_r_reg_10__4_ ( .D(vector_y_w[84]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[84]) );
  DFFRX1 vector_y_r_reg_10__3_ ( .D(vector_y_w[83]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[83]) );
  DFFRX1 vector_y_r_reg_10__2_ ( .D(vector_y_w[82]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[82]) );
  DFFRX1 vector_y_r_reg_10__1_ ( .D(vector_y_w[81]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[81]) );
  DFFRX1 vector_y_r_reg_6__5_ ( .D(vector_y_w[53]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[53]) );
  DFFRX1 vector_y_r_reg_6__4_ ( .D(vector_y_w[52]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[52]) );
  DFFRX1 vector_y_r_reg_6__3_ ( .D(vector_y_w[51]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[51]) );
  DFFRX1 vector_y_r_reg_6__2_ ( .D(vector_y_w[50]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[50]) );
  DFFRX1 vector_y_r_reg_6__1_ ( .D(vector_y_w[49]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[49]) );
  DFFRX1 vector_y_r_reg_2__5_ ( .D(vector_y_w[21]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[21]) );
  DFFRX1 vector_y_r_reg_2__4_ ( .D(vector_y_w[20]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[20]) );
  DFFRX1 vector_y_r_reg_2__3_ ( .D(vector_y_w[19]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[19]) );
  DFFRX1 vector_y_r_reg_2__2_ ( .D(vector_y_w[18]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[18]) );
  DFFRX1 vector_y_r_reg_2__1_ ( .D(vector_y_w[17]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[17]) );
  DFFRX1 vector_y_r_reg_13__5_ ( .D(vector_y_w[109]), .CK(CLK), .RN(n3560), 
        .Q(vector_y_r[109]) );
  DFFRX1 vector_y_r_reg_13__4_ ( .D(vector_y_w[108]), .CK(CLK), .RN(n3540), 
        .Q(vector_y_r[108]) );
  DFFRX1 vector_y_r_reg_13__3_ ( .D(vector_y_w[107]), .CK(CLK), .RN(n3560), 
        .Q(vector_y_r[107]) );
  DFFRX1 vector_y_r_reg_13__2_ ( .D(vector_y_w[106]), .CK(CLK), .RN(n3550), 
        .Q(vector_y_r[106]) );
  DFFRX1 vector_y_r_reg_13__1_ ( .D(vector_y_w[105]), .CK(CLK), .RN(n3540), 
        .Q(vector_y_r[105]) );
  DFFRX1 vector_y_r_reg_9__5_ ( .D(vector_y_w[77]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[77]) );
  DFFRX1 vector_y_r_reg_9__4_ ( .D(vector_y_w[76]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[76]) );
  DFFRX1 vector_y_r_reg_9__3_ ( .D(vector_y_w[75]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[75]) );
  DFFRX1 vector_y_r_reg_9__2_ ( .D(vector_y_w[74]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[74]) );
  DFFRX1 vector_y_r_reg_9__1_ ( .D(vector_y_w[73]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[73]) );
  DFFRX1 vector_y_r_reg_5__5_ ( .D(vector_y_w[45]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[45]) );
  DFFRX1 vector_y_r_reg_5__4_ ( .D(vector_y_w[44]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[44]) );
  DFFRX1 vector_y_r_reg_5__3_ ( .D(vector_y_w[43]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[43]) );
  DFFRX1 vector_y_r_reg_5__2_ ( .D(vector_y_w[42]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[42]) );
  DFFRX1 vector_y_r_reg_5__1_ ( .D(vector_y_w[41]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[41]) );
  DFFRX1 vector_y_r_reg_1__5_ ( .D(vector_y_w[13]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[13]) );
  DFFRX1 vector_y_r_reg_1__4_ ( .D(vector_y_w[12]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[12]) );
  DFFRX1 vector_y_r_reg_1__3_ ( .D(vector_y_w[11]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[11]) );
  DFFRX1 vector_y_r_reg_1__2_ ( .D(vector_y_w[10]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[10]) );
  DFFRX1 vector_y_r_reg_1__1_ ( .D(vector_y_w[9]), .CK(CLK), .RN(n3580), .Q(
        vector_y_r[9]) );
  DFFRX1 counter_r_reg_0_ ( .D(counter_w[0]), .CK(CLK), .RN(n3580), .Q(
        counter_r[0]), .QN(n3650) );
  DFFRX1 vector_y_r_reg_7__1_ ( .D(vector_y_w[57]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[57]) );
  DFFRX1 vector_y_r_reg_12__0_ ( .D(vector_y_w[96]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[96]) );
  DFFRX1 vector_y_r_reg_8__0_ ( .D(vector_y_w[64]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[64]) );
  DFFRX1 vector_y_r_reg_4__0_ ( .D(vector_y_w[32]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[32]) );
  DFFRX1 vector_y_r_reg_0__0_ ( .D(vector_y_w[0]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[0]) );
  DFFRX1 vector_y_r_reg_15__0_ ( .D(vector_y_w[120]), .CK(CLK), .RN(n3550), 
        .Q(vector_y_r[120]) );
  DFFRX1 vector_y_r_reg_11__0_ ( .D(vector_y_w[88]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[88]) );
  DFFRX1 vector_y_r_reg_3__0_ ( .D(vector_y_w[24]), .CK(CLK), .RN(n3510), .Q(
        vector_y_r[24]) );
  DFFRX1 vector_y_r_reg_7__0_ ( .D(vector_y_w[56]), .CK(CLK), .RN(n3520), .Q(
        vector_y_r[56]) );
  DFFRX1 vector_y_r_reg_14__0_ ( .D(vector_y_w[112]), .CK(CLK), .RN(n3530), 
        .Q(vector_y_r[112]) );
  DFFRX1 vector_y_r_reg_10__0_ ( .D(vector_y_w[80]), .CK(CLK), .RN(n3530), .Q(
        vector_y_r[80]) );
  DFFRX1 vector_y_r_reg_6__0_ ( .D(vector_y_w[48]), .CK(CLK), .RN(n3540), .Q(
        vector_y_r[48]) );
  DFFRX1 vector_y_r_reg_2__0_ ( .D(vector_y_w[16]), .CK(CLK), .RN(n3550), .Q(
        vector_y_r[16]) );
  DFFRX1 vector_y_r_reg_13__0_ ( .D(vector_y_w[104]), .CK(CLK), .RN(n3560), 
        .Q(vector_y_r[104]) );
  DFFRX1 vector_y_r_reg_9__0_ ( .D(vector_y_w[72]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[72]) );
  DFFRX1 vector_y_r_reg_5__0_ ( .D(vector_y_w[40]), .CK(CLK), .RN(n3560), .Q(
        vector_y_r[40]) );
  DFFRX1 vector_y_r_reg_1__0_ ( .D(vector_y_w[8]), .CK(CLK), .RN(n3570), .Q(
        vector_y_r[8]) );
  EDFFTRX1 vector_y_w_reg_7__0_ ( .RN(n3580), .D(N451), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[56]) );
  DFFTRX1 counter_w_reg_3_ ( .D(N638), .RN(n3580), .CK(CLK), .Q(counter_w[3])
         );
  DFFTRX1 counter_w_reg_2_ ( .D(N637), .RN(n3580), .CK(CLK), .Q(counter_w[2])
         );
  DFFTRX1 counter_w_reg_0_ ( .D(N635), .RN(n3580), .CK(CLK), .Q(counter_w[0])
         );
  EDFFTRX1 vector_y_w_reg_7__5_ ( .RN(n3580), .D(N456), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[61]) );
  EDFFTRX1 vector_y_w_reg_7__4_ ( .RN(n3580), .D(N455), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[60]) );
  EDFFTRX1 vector_y_w_reg_7__3_ ( .RN(n3580), .D(N454), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[59]) );
  EDFFTRX1 vector_y_w_reg_7__2_ ( .RN(n3580), .D(N453), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[58]) );
  EDFFTRX1 vector_y_w_reg_7__1_ ( .RN(n3580), .D(N452), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[57]) );
  DFFTRX1 counter_w_reg_1_ ( .D(N636), .RN(n3580), .CK(CLK), .Q(counter_w[1])
         );
  EDFFX1 finish_w_reg ( .D(n359), .E(n362), .CK(CLK), .Q(finish_w) );
  DFFRX1 finish_r_reg ( .D(finish_w), .CK(CLK), .RN(n3570), .Q(finish_r) );
  DFFQXL vector_y_w_reg_12__7_ ( .D(n166), .CK(CLK), .Q(vector_y_w[103]) );
  DFFQXL vector_y_w_reg_12__6_ ( .D(n167), .CK(CLK), .Q(vector_y_w[102]) );
  DFFQXL vector_y_w_reg_8__7_ ( .D(n198), .CK(CLK), .Q(vector_y_w[71]) );
  DFFQXL vector_y_w_reg_8__6_ ( .D(n199), .CK(CLK), .Q(vector_y_w[70]) );
  DFFQXL vector_y_w_reg_4__7_ ( .D(n222), .CK(CLK), .Q(vector_y_w[39]) );
  DFFQXL vector_y_w_reg_4__6_ ( .D(n223), .CK(CLK), .Q(vector_y_w[38]) );
  DFFQXL vector_y_w_reg_0__7_ ( .D(n254), .CK(CLK), .Q(vector_y_w[7]) );
  DFFQXL vector_y_w_reg_0__6_ ( .D(n255), .CK(CLK), .Q(vector_y_w[6]) );
  DFFQXL vector_y_w_reg_15__7_ ( .D(n142), .CK(CLK), .Q(vector_y_w[127]) );
  DFFQXL vector_y_w_reg_15__6_ ( .D(n143), .CK(CLK), .Q(vector_y_w[126]) );
  DFFQXL vector_y_w_reg_11__7_ ( .D(n174), .CK(CLK), .Q(vector_y_w[95]) );
  DFFQXL vector_y_w_reg_11__6_ ( .D(n175), .CK(CLK), .Q(vector_y_w[94]) );
  DFFQXL vector_y_w_reg_3__7_ ( .D(n230), .CK(CLK), .Q(vector_y_w[31]) );
  DFFQXL vector_y_w_reg_3__6_ ( .D(n231), .CK(CLK), .Q(vector_y_w[30]) );
  DFFQXL vector_y_w_reg_14__7_ ( .D(n150), .CK(CLK), .Q(vector_y_w[119]) );
  DFFQXL vector_y_w_reg_14__6_ ( .D(n151), .CK(CLK), .Q(vector_y_w[118]) );
  DFFQXL vector_y_w_reg_10__7_ ( .D(n182), .CK(CLK), .Q(vector_y_w[87]) );
  DFFQXL vector_y_w_reg_10__6_ ( .D(n183), .CK(CLK), .Q(vector_y_w[86]) );
  DFFQXL vector_y_w_reg_6__7_ ( .D(n2060), .CK(CLK), .Q(vector_y_w[55]) );
  DFFQXL vector_y_w_reg_6__6_ ( .D(n207), .CK(CLK), .Q(vector_y_w[54]) );
  DFFQXL vector_y_w_reg_2__7_ ( .D(n238), .CK(CLK), .Q(vector_y_w[23]) );
  DFFQXL vector_y_w_reg_2__6_ ( .D(n239), .CK(CLK), .Q(vector_y_w[22]) );
  DFFQXL vector_y_w_reg_13__7_ ( .D(n158), .CK(CLK), .Q(vector_y_w[111]) );
  DFFQXL vector_y_w_reg_13__6_ ( .D(n159), .CK(CLK), .Q(vector_y_w[110]) );
  DFFQXL vector_y_w_reg_9__7_ ( .D(n190), .CK(CLK), .Q(vector_y_w[79]) );
  DFFQXL vector_y_w_reg_9__6_ ( .D(n191), .CK(CLK), .Q(vector_y_w[78]) );
  DFFQXL vector_y_w_reg_5__7_ ( .D(n2140), .CK(CLK), .Q(vector_y_w[47]) );
  DFFQXL vector_y_w_reg_5__6_ ( .D(n2150), .CK(CLK), .Q(vector_y_w[46]) );
  DFFQXL vector_y_w_reg_1__7_ ( .D(n246), .CK(CLK), .Q(vector_y_w[15]) );
  DFFQXL vector_y_w_reg_1__6_ ( .D(n247), .CK(CLK), .Q(vector_y_w[14]) );
  EDFFTRXL vector_y_w_reg_7__7_ ( .RN(n3580), .D(N458), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[63]) );
  EDFFTRXL vector_y_w_reg_7__6_ ( .RN(n3580), .D(N457), .E(n3630), .CK(CLK), 
        .Q(vector_y_w[62]) );
  DFFQX2 finish_reg ( .D(finish_r), .CK(CLK), .Q(finish) );
  DFFQX2 vector_y_reg_126_ ( .D(vector_y_r[126]), .CK(CLK), .Q(vector_y[126])
         );
  DFFQX2 vector_y_reg_125_ ( .D(vector_y_r[125]), .CK(CLK), .Q(vector_y[125])
         );
  DFFQX2 vector_y_reg_124_ ( .D(vector_y_r[124]), .CK(CLK), .Q(vector_y[124])
         );
  DFFQX2 vector_y_reg_123_ ( .D(vector_y_r[123]), .CK(CLK), .Q(vector_y[123])
         );
  DFFQX2 vector_y_reg_122_ ( .D(vector_y_r[122]), .CK(CLK), .Q(vector_y[122])
         );
  DFFQX2 vector_y_reg_121_ ( .D(vector_y_r[121]), .CK(CLK), .Q(vector_y[121])
         );
  DFFQX2 vector_y_reg_118_ ( .D(vector_y_r[118]), .CK(CLK), .Q(vector_y[118])
         );
  DFFQX2 vector_y_reg_117_ ( .D(vector_y_r[117]), .CK(CLK), .Q(vector_y[117])
         );
  DFFQX2 vector_y_reg_116_ ( .D(vector_y_r[116]), .CK(CLK), .Q(vector_y[116])
         );
  DFFQX2 vector_y_reg_115_ ( .D(vector_y_r[115]), .CK(CLK), .Q(vector_y[115])
         );
  DFFQX2 vector_y_reg_114_ ( .D(vector_y_r[114]), .CK(CLK), .Q(vector_y[114])
         );
  DFFQX2 vector_y_reg_113_ ( .D(vector_y_r[113]), .CK(CLK), .Q(vector_y[113])
         );
  DFFQX2 vector_y_reg_110_ ( .D(vector_y_r[110]), .CK(CLK), .Q(vector_y[110])
         );
  DFFQX2 vector_y_reg_109_ ( .D(vector_y_r[109]), .CK(CLK), .Q(vector_y[109])
         );
  DFFQX2 vector_y_reg_108_ ( .D(vector_y_r[108]), .CK(CLK), .Q(vector_y[108])
         );
  DFFQX2 vector_y_reg_107_ ( .D(vector_y_r[107]), .CK(CLK), .Q(vector_y[107])
         );
  DFFQX2 vector_y_reg_106_ ( .D(vector_y_r[106]), .CK(CLK), .Q(vector_y[106])
         );
  DFFQX2 vector_y_reg_105_ ( .D(vector_y_r[105]), .CK(CLK), .Q(vector_y[105])
         );
  DFFQX2 vector_y_reg_102_ ( .D(vector_y_r[102]), .CK(CLK), .Q(vector_y[102])
         );
  DFFQX2 vector_y_reg_101_ ( .D(vector_y_r[101]), .CK(CLK), .Q(vector_y[101])
         );
  DFFQX2 vector_y_reg_100_ ( .D(vector_y_r[100]), .CK(CLK), .Q(vector_y[100])
         );
  DFFQX2 vector_y_reg_99_ ( .D(vector_y_r[99]), .CK(CLK), .Q(vector_y[99]) );
  DFFQX2 vector_y_reg_98_ ( .D(vector_y_r[98]), .CK(CLK), .Q(vector_y[98]) );
  DFFQX2 vector_y_reg_97_ ( .D(vector_y_r[97]), .CK(CLK), .Q(vector_y[97]) );
  DFFQX2 vector_y_reg_94_ ( .D(vector_y_r[94]), .CK(CLK), .Q(vector_y[94]) );
  DFFQX2 vector_y_reg_93_ ( .D(vector_y_r[93]), .CK(CLK), .Q(vector_y[93]) );
  DFFQX2 vector_y_reg_92_ ( .D(vector_y_r[92]), .CK(CLK), .Q(vector_y[92]) );
  DFFQX2 vector_y_reg_91_ ( .D(vector_y_r[91]), .CK(CLK), .Q(vector_y[91]) );
  DFFQX2 vector_y_reg_90_ ( .D(vector_y_r[90]), .CK(CLK), .Q(vector_y[90]) );
  DFFQX2 vector_y_reg_89_ ( .D(vector_y_r[89]), .CK(CLK), .Q(vector_y[89]) );
  DFFQX2 vector_y_reg_86_ ( .D(vector_y_r[86]), .CK(CLK), .Q(vector_y[86]) );
  DFFQX2 vector_y_reg_85_ ( .D(vector_y_r[85]), .CK(CLK), .Q(vector_y[85]) );
  DFFQX2 vector_y_reg_84_ ( .D(vector_y_r[84]), .CK(CLK), .Q(vector_y[84]) );
  DFFQX2 vector_y_reg_83_ ( .D(vector_y_r[83]), .CK(CLK), .Q(vector_y[83]) );
  DFFQX2 vector_y_reg_82_ ( .D(vector_y_r[82]), .CK(CLK), .Q(vector_y[82]) );
  DFFQX2 vector_y_reg_81_ ( .D(vector_y_r[81]), .CK(CLK), .Q(vector_y[81]) );
  DFFQX2 vector_y_reg_78_ ( .D(vector_y_r[78]), .CK(CLK), .Q(vector_y[78]) );
  DFFQX2 vector_y_reg_77_ ( .D(vector_y_r[77]), .CK(CLK), .Q(vector_y[77]) );
  DFFQX2 vector_y_reg_76_ ( .D(vector_y_r[76]), .CK(CLK), .Q(vector_y[76]) );
  DFFQX2 vector_y_reg_75_ ( .D(vector_y_r[75]), .CK(CLK), .Q(vector_y[75]) );
  DFFQX2 vector_y_reg_74_ ( .D(vector_y_r[74]), .CK(CLK), .Q(vector_y[74]) );
  DFFQX2 vector_y_reg_73_ ( .D(vector_y_r[73]), .CK(CLK), .Q(vector_y[73]) );
  DFFQX2 vector_y_reg_70_ ( .D(vector_y_r[70]), .CK(CLK), .Q(vector_y[70]) );
  DFFQX2 vector_y_reg_69_ ( .D(vector_y_r[69]), .CK(CLK), .Q(vector_y[69]) );
  DFFQX2 vector_y_reg_68_ ( .D(vector_y_r[68]), .CK(CLK), .Q(vector_y[68]) );
  DFFQX2 vector_y_reg_67_ ( .D(vector_y_r[67]), .CK(CLK), .Q(vector_y[67]) );
  DFFQX2 vector_y_reg_66_ ( .D(vector_y_r[66]), .CK(CLK), .Q(vector_y[66]) );
  DFFQX2 vector_y_reg_65_ ( .D(vector_y_r[65]), .CK(CLK), .Q(vector_y[65]) );
  DFFQX2 vector_y_reg_62_ ( .D(vector_y_r[62]), .CK(CLK), .Q(vector_y[62]) );
  DFFQX2 vector_y_reg_61_ ( .D(vector_y_r[61]), .CK(CLK), .Q(vector_y[61]) );
  DFFQX2 vector_y_reg_60_ ( .D(vector_y_r[60]), .CK(CLK), .Q(vector_y[60]) );
  DFFQX2 vector_y_reg_59_ ( .D(vector_y_r[59]), .CK(CLK), .Q(vector_y[59]) );
  DFFQX2 vector_y_reg_58_ ( .D(vector_y_r[58]), .CK(CLK), .Q(vector_y[58]) );
  DFFQX2 vector_y_reg_57_ ( .D(vector_y_r[57]), .CK(CLK), .Q(vector_y[57]) );
  DFFQX2 vector_y_reg_54_ ( .D(vector_y_r[54]), .CK(CLK), .Q(vector_y[54]) );
  DFFQX2 vector_y_reg_53_ ( .D(vector_y_r[53]), .CK(CLK), .Q(vector_y[53]) );
  DFFQX2 vector_y_reg_52_ ( .D(vector_y_r[52]), .CK(CLK), .Q(vector_y[52]) );
  DFFQX2 vector_y_reg_51_ ( .D(vector_y_r[51]), .CK(CLK), .Q(vector_y[51]) );
  DFFQX2 vector_y_reg_50_ ( .D(vector_y_r[50]), .CK(CLK), .Q(vector_y[50]) );
  DFFQX2 vector_y_reg_49_ ( .D(vector_y_r[49]), .CK(CLK), .Q(vector_y[49]) );
  DFFQX2 vector_y_reg_46_ ( .D(vector_y_r[46]), .CK(CLK), .Q(vector_y[46]) );
  DFFQX2 vector_y_reg_45_ ( .D(vector_y_r[45]), .CK(CLK), .Q(vector_y[45]) );
  DFFQX2 vector_y_reg_44_ ( .D(vector_y_r[44]), .CK(CLK), .Q(vector_y[44]) );
  DFFQX2 vector_y_reg_43_ ( .D(vector_y_r[43]), .CK(CLK), .Q(vector_y[43]) );
  DFFQX2 vector_y_reg_42_ ( .D(vector_y_r[42]), .CK(CLK), .Q(vector_y[42]) );
  DFFQX2 vector_y_reg_41_ ( .D(vector_y_r[41]), .CK(CLK), .Q(vector_y[41]) );
  DFFQX2 vector_y_reg_38_ ( .D(vector_y_r[38]), .CK(CLK), .Q(vector_y[38]) );
  DFFQX2 vector_y_reg_37_ ( .D(vector_y_r[37]), .CK(CLK), .Q(vector_y[37]) );
  DFFQX2 vector_y_reg_36_ ( .D(vector_y_r[36]), .CK(CLK), .Q(vector_y[36]) );
  DFFQX2 vector_y_reg_35_ ( .D(vector_y_r[35]), .CK(CLK), .Q(vector_y[35]) );
  DFFQX2 vector_y_reg_34_ ( .D(vector_y_r[34]), .CK(CLK), .Q(vector_y[34]) );
  DFFQX2 vector_y_reg_33_ ( .D(vector_y_r[33]), .CK(CLK), .Q(vector_y[33]) );
  DFFQX2 vector_y_reg_30_ ( .D(vector_y_r[30]), .CK(CLK), .Q(vector_y[30]) );
  DFFQX2 vector_y_reg_29_ ( .D(vector_y_r[29]), .CK(CLK), .Q(vector_y[29]) );
  DFFQX2 vector_y_reg_28_ ( .D(vector_y_r[28]), .CK(CLK), .Q(vector_y[28]) );
  DFFQX2 vector_y_reg_27_ ( .D(vector_y_r[27]), .CK(CLK), .Q(vector_y[27]) );
  DFFQX2 vector_y_reg_26_ ( .D(vector_y_r[26]), .CK(CLK), .Q(vector_y[26]) );
  DFFQX2 vector_y_reg_25_ ( .D(vector_y_r[25]), .CK(CLK), .Q(vector_y[25]) );
  DFFQX2 vector_y_reg_22_ ( .D(vector_y_r[22]), .CK(CLK), .Q(vector_y[22]) );
  DFFQX2 vector_y_reg_21_ ( .D(vector_y_r[21]), .CK(CLK), .Q(vector_y[21]) );
  DFFQX2 vector_y_reg_20_ ( .D(vector_y_r[20]), .CK(CLK), .Q(vector_y[20]) );
  DFFQX2 vector_y_reg_19_ ( .D(vector_y_r[19]), .CK(CLK), .Q(vector_y[19]) );
  DFFQX2 vector_y_reg_18_ ( .D(vector_y_r[18]), .CK(CLK), .Q(vector_y[18]) );
  DFFQX2 vector_y_reg_17_ ( .D(vector_y_r[17]), .CK(CLK), .Q(vector_y[17]) );
  DFFQX2 vector_y_reg_14_ ( .D(vector_y_r[14]), .CK(CLK), .Q(vector_y[14]) );
  DFFQX2 vector_y_reg_13_ ( .D(vector_y_r[13]), .CK(CLK), .Q(vector_y[13]) );
  DFFQX2 vector_y_reg_12_ ( .D(vector_y_r[12]), .CK(CLK), .Q(vector_y[12]) );
  DFFQX2 vector_y_reg_11_ ( .D(vector_y_r[11]), .CK(CLK), .Q(vector_y[11]) );
  DFFQX2 vector_y_reg_10_ ( .D(vector_y_r[10]), .CK(CLK), .Q(vector_y[10]) );
  DFFQX2 vector_y_reg_9_ ( .D(vector_y_r[9]), .CK(CLK), .Q(vector_y[9]) );
  DFFQX2 vector_y_reg_6_ ( .D(vector_y_r[6]), .CK(CLK), .Q(vector_y[6]) );
  DFFQX2 vector_y_reg_5_ ( .D(vector_y_r[5]), .CK(CLK), .Q(vector_y[5]) );
  DFFQX2 vector_y_reg_4_ ( .D(vector_y_r[4]), .CK(CLK), .Q(vector_y[4]) );
  DFFQX2 vector_y_reg_3_ ( .D(vector_y_r[3]), .CK(CLK), .Q(vector_y[3]) );
  DFFQX2 vector_y_reg_2_ ( .D(vector_y_r[2]), .CK(CLK), .Q(vector_y[2]) );
  DFFQX2 vector_y_reg_1_ ( .D(vector_y_r[1]), .CK(CLK), .Q(vector_y[1]) );
  DFFQX2 vector_y_reg_127_ ( .D(vector_y_r[127]), .CK(CLK), .Q(vector_y[127])
         );
  DFFQX2 vector_y_reg_119_ ( .D(vector_y_r[119]), .CK(CLK), .Q(vector_y[119])
         );
  DFFQX2 vector_y_reg_111_ ( .D(vector_y_r[111]), .CK(CLK), .Q(vector_y[111])
         );
  DFFQX2 vector_y_reg_103_ ( .D(vector_y_r[103]), .CK(CLK), .Q(vector_y[103])
         );
  DFFQX2 vector_y_reg_95_ ( .D(vector_y_r[95]), .CK(CLK), .Q(vector_y[95]) );
  DFFQX2 vector_y_reg_87_ ( .D(vector_y_r[87]), .CK(CLK), .Q(vector_y[87]) );
  DFFQX2 vector_y_reg_79_ ( .D(vector_y_r[79]), .CK(CLK), .Q(vector_y[79]) );
  DFFQX2 vector_y_reg_71_ ( .D(vector_y_r[71]), .CK(CLK), .Q(vector_y[71]) );
  DFFQX2 vector_y_reg_63_ ( .D(vector_y_r[63]), .CK(CLK), .Q(vector_y[63]) );
  DFFQX2 vector_y_reg_55_ ( .D(vector_y_r[55]), .CK(CLK), .Q(vector_y[55]) );
  DFFQX2 vector_y_reg_47_ ( .D(vector_y_r[47]), .CK(CLK), .Q(vector_y[47]) );
  DFFQX2 vector_y_reg_39_ ( .D(vector_y_r[39]), .CK(CLK), .Q(vector_y[39]) );
  DFFQX2 vector_y_reg_31_ ( .D(vector_y_r[31]), .CK(CLK), .Q(vector_y[31]) );
  DFFQX2 vector_y_reg_23_ ( .D(vector_y_r[23]), .CK(CLK), .Q(vector_y[23]) );
  DFFQX2 vector_y_reg_15_ ( .D(vector_y_r[15]), .CK(CLK), .Q(vector_y[15]) );
  DFFQX2 vector_y_reg_7_ ( .D(vector_y_r[7]), .CK(CLK), .Q(vector_y[7]) );
  DFFQX2 vector_y_reg_120_ ( .D(vector_y_r[120]), .CK(CLK), .Q(vector_y[120])
         );
  DFFQX2 vector_y_reg_112_ ( .D(vector_y_r[112]), .CK(CLK), .Q(vector_y[112])
         );
  DFFQX2 vector_y_reg_104_ ( .D(vector_y_r[104]), .CK(CLK), .Q(vector_y[104])
         );
  DFFQX2 vector_y_reg_96_ ( .D(vector_y_r[96]), .CK(CLK), .Q(vector_y[96]) );
  DFFQX2 vector_y_reg_88_ ( .D(vector_y_r[88]), .CK(CLK), .Q(vector_y[88]) );
  DFFQX2 vector_y_reg_80_ ( .D(vector_y_r[80]), .CK(CLK), .Q(vector_y[80]) );
  DFFQX2 vector_y_reg_72_ ( .D(vector_y_r[72]), .CK(CLK), .Q(vector_y[72]) );
  DFFQX2 vector_y_reg_64_ ( .D(vector_y_r[64]), .CK(CLK), .Q(vector_y[64]) );
  DFFQX2 vector_y_reg_56_ ( .D(vector_y_r[56]), .CK(CLK), .Q(vector_y[56]) );
  DFFQX2 vector_y_reg_48_ ( .D(vector_y_r[48]), .CK(CLK), .Q(vector_y[48]) );
  DFFQX2 vector_y_reg_40_ ( .D(vector_y_r[40]), .CK(CLK), .Q(vector_y[40]) );
  DFFQX2 vector_y_reg_32_ ( .D(vector_y_r[32]), .CK(CLK), .Q(vector_y[32]) );
  DFFQX2 vector_y_reg_24_ ( .D(vector_y_r[24]), .CK(CLK), .Q(vector_y[24]) );
  DFFQX2 vector_y_reg_16_ ( .D(vector_y_r[16]), .CK(CLK), .Q(vector_y[16]) );
  DFFQX2 vector_y_reg_8_ ( .D(vector_y_r[8]), .CK(CLK), .Q(vector_y[8]) );
  DFFQX2 vector_y_reg_0_ ( .D(vector_y_r[0]), .CK(CLK), .Q(vector_y[0]) );
  DFFTRX2 A_reg_0_ ( .D(N635), .RN(n3570), .CK(CLK), .Q(A[0]) );
  DFFTRX2 A_reg_1_ ( .D(N636), .RN(n3570), .CK(CLK), .Q(A[1]) );
  DFFTRX2 A_reg_2_ ( .D(N637), .RN(n359), .CK(CLK), .Q(A[2]) );
  DFFTRX2 A_reg_3_ ( .D(N638), .RN(n359), .CK(CLK), .Q(A[3]) );
  CLKBUFX3 U231 ( .A(N2310), .Y(n3290) );
  CLKBUFX3 U232 ( .A(N2320), .Y(n3300) );
  CLKBUFX3 U233 ( .A(N2330), .Y(n3320) );
  CLKBUFX3 U234 ( .A(N2330), .Y(n3310) );
  CLKBUFX3 U235 ( .A(N2290), .Y(n3260) );
  CLKBUFX3 U236 ( .A(N2290), .Y(n3250) );
  CLKBUFX3 U237 ( .A(N2300), .Y(n3280) );
  CLKBUFX3 U238 ( .A(N2300), .Y(n3270) );
  CLKBUFX3 U239 ( .A(N2280), .Y(n3240) );
  CLKBUFX3 U240 ( .A(N2280), .Y(n3230) );
  CLKBUFX3 U241 ( .A(N2340), .Y(n3340) );
  CLKBUFX3 U242 ( .A(N2340), .Y(n3330) );
  NOR2X2 U243 ( .A(n3380), .B(RST), .Y(n133) );
  NOR2X2 U244 ( .A(n3450), .B(n360), .Y(n116) );
  NOR2X2 U245 ( .A(n3490), .B(RST), .Y(n104) );
  NOR2X2 U246 ( .A(n3360), .B(n3500), .Y(n138) );
  NOR2X2 U247 ( .A(n340), .B(RST), .Y(n129) );
  NOR2X2 U248 ( .A(n3430), .B(RST), .Y(n121) );
  NOR2X2 U249 ( .A(n3470), .B(n360), .Y(n110) );
  NOR2X2 U250 ( .A(n3370), .B(RST), .Y(n136) );
  NOR2X2 U251 ( .A(n341), .B(RST), .Y(n126) );
  NOR2X2 U252 ( .A(n3440), .B(n360), .Y(n119) );
  NOR2X2 U253 ( .A(n3480), .B(n360), .Y(n107) );
  NOR2X2 U254 ( .A(n3350), .B(n3500), .Y(n140) );
  NOR2X2 U255 ( .A(n339), .B(RST), .Y(n131) );
  NOR2X2 U256 ( .A(n342), .B(RST), .Y(n123) );
  NOR2X2 U257 ( .A(n3460), .B(n360), .Y(n113) );
  INVX3 U258 ( .A(n124), .Y(n3630) );
  INVX3 U259 ( .A(n360), .Y(n3580) );
  CLKINVX1 U260 ( .A(n3490), .Y(n362) );
  CLKINVX1 U261 ( .A(n360), .Y(n359) );
  INVX3 U262 ( .A(n360), .Y(n3570) );
  INVX3 U263 ( .A(RST), .Y(n3560) );
  INVX3 U264 ( .A(RST), .Y(n3550) );
  INVX3 U265 ( .A(RST), .Y(n3540) );
  INVX3 U266 ( .A(RST), .Y(n3530) );
  INVX3 U267 ( .A(RST), .Y(n3510) );
  INVX3 U268 ( .A(RST), .Y(n3520) );
  CLKINVX1 U269 ( .A(n141), .Y(n3640) );
  CLKBUFX3 U270 ( .A(n115), .Y(n3450) );
  AOI2BB1X1 U271 ( .A0N(n3640), .A1N(n117), .B0(RST), .Y(n115) );
  CLKBUFX3 U272 ( .A(n132), .Y(n3380) );
  AOI2BB1X1 U273 ( .A0N(n3640), .A1N(n134), .B0(n3500), .Y(n132) );
  CLKBUFX3 U274 ( .A(n103), .Y(n3490) );
  AOI2BB1X1 U275 ( .A0N(n3640), .A1N(n105), .B0(n360), .Y(n103) );
  NAND2X1 U276 ( .A(n108), .B(n111), .Y(N320) );
  CLKBUFX3 U277 ( .A(RST), .Y(n360) );
  OR2X1 U278 ( .A(n127), .B(n3640), .Y(n124) );
  CLKBUFX3 U279 ( .A(n137), .Y(n3360) );
  AOI2BB1X1 U280 ( .A0N(n111), .A1N(n134), .B0(n360), .Y(n137) );
  CLKBUFX3 U281 ( .A(n128), .Y(n340) );
  AOI2BB1X1 U282 ( .A0N(n111), .A1N(n127), .B0(n3500), .Y(n128) );
  CLKBUFX3 U283 ( .A(n120), .Y(n3430) );
  AOI2BB1X1 U284 ( .A0N(n111), .A1N(n117), .B0(n3500), .Y(n120) );
  CLKBUFX3 U285 ( .A(n109), .Y(n3470) );
  AOI2BB1X1 U286 ( .A0N(n105), .A1N(n111), .B0(RST), .Y(n109) );
  CLKBUFX3 U287 ( .A(n135), .Y(n3370) );
  AOI2BB1X1 U288 ( .A0N(n108), .A1N(n134), .B0(n360), .Y(n135) );
  CLKBUFX3 U289 ( .A(n125), .Y(n341) );
  AOI2BB1X1 U290 ( .A0N(n108), .A1N(n127), .B0(n3500), .Y(n125) );
  CLKBUFX3 U291 ( .A(n118), .Y(n3440) );
  AOI2BB1X1 U292 ( .A0N(n108), .A1N(n117), .B0(n3500), .Y(n118) );
  CLKBUFX3 U293 ( .A(n106), .Y(n3480) );
  AOI2BB1X1 U294 ( .A0N(n105), .A1N(n108), .B0(RST), .Y(n106) );
  CLKBUFX3 U295 ( .A(n139), .Y(n3350) );
  AOI2BB1X1 U296 ( .A0N(n114), .A1N(n134), .B0(n360), .Y(n139) );
  CLKBUFX3 U297 ( .A(n130), .Y(n339) );
  AOI2BB1X1 U298 ( .A0N(n114), .A1N(n127), .B0(n3500), .Y(n130) );
  CLKBUFX3 U299 ( .A(n122), .Y(n342) );
  AOI2BB1X1 U300 ( .A0N(n114), .A1N(n117), .B0(n3500), .Y(n122) );
  CLKBUFX3 U301 ( .A(n112), .Y(n3460) );
  AOI2BB1X1 U302 ( .A0N(n105), .A1N(n114), .B0(RST), .Y(n112) );
  AO22X1 U303 ( .A0(vector_y_w[15]), .A1(n3360), .B0(N338), .B1(n138), .Y(n246) );
  AO22X1 U304 ( .A0(vector_y_w[47]), .A1(n340), .B0(N418), .B1(n129), .Y(n2140) );
  AO22X1 U305 ( .A0(vector_y_w[79]), .A1(n3430), .B0(N498), .B1(n121), .Y(n190) );
  AO22X1 U306 ( .A0(vector_y_w[111]), .A1(n3470), .B0(N578), .B1(n110), .Y(
        n158) );
  AO22X1 U307 ( .A0(vector_y_w[23]), .A1(n3370), .B0(N358), .B1(n136), .Y(n238) );
  AO22X1 U308 ( .A0(vector_y_w[55]), .A1(n341), .B0(N438), .B1(n126), .Y(n2060) );
  AO22X1 U309 ( .A0(vector_y_w[87]), .A1(n3440), .B0(N518), .B1(n119), .Y(n182) );
  AO22X1 U310 ( .A0(vector_y_w[119]), .A1(n3480), .B0(N598), .B1(n107), .Y(
        n150) );
  AO22X1 U311 ( .A0(vector_y_w[31]), .A1(n3380), .B0(N378), .B1(n133), .Y(n230) );
  AO22X1 U312 ( .A0(vector_y_w[95]), .A1(n3450), .B0(N538), .B1(n116), .Y(n174) );
  AO22X1 U313 ( .A0(vector_y_w[127]), .A1(n3490), .B0(N618), .B1(n104), .Y(
        n142) );
  AO22X1 U314 ( .A0(vector_y_w[7]), .A1(n3350), .B0(N318), .B1(n140), .Y(n254)
         );
  AO22X1 U315 ( .A0(vector_y_w[39]), .A1(n339), .B0(N398), .B1(n131), .Y(n222)
         );
  AO22X1 U316 ( .A0(vector_y_w[71]), .A1(n342), .B0(N478), .B1(n123), .Y(n198)
         );
  AO22X1 U317 ( .A0(vector_y_w[103]), .A1(n3460), .B0(N558), .B1(n113), .Y(
        n166) );
  AO22X1 U318 ( .A0(vector_y_w[13]), .A1(n3360), .B0(N336), .B1(n138), .Y(n248) );
  AO22X1 U319 ( .A0(vector_y_w[14]), .A1(n3360), .B0(N337), .B1(n138), .Y(n247) );
  AO22X1 U320 ( .A0(vector_y_w[45]), .A1(n340), .B0(N416), .B1(n129), .Y(n2160) );
  AO22X1 U321 ( .A0(vector_y_w[46]), .A1(n340), .B0(N417), .B1(n129), .Y(n2150) );
  AO22X1 U322 ( .A0(vector_y_w[77]), .A1(n3430), .B0(N496), .B1(n121), .Y(n192) );
  AO22X1 U323 ( .A0(vector_y_w[78]), .A1(n3430), .B0(N497), .B1(n121), .Y(n191) );
  AO22X1 U324 ( .A0(vector_y_w[109]), .A1(n3470), .B0(N576), .B1(n110), .Y(
        n160) );
  AO22X1 U325 ( .A0(vector_y_w[110]), .A1(n3470), .B0(N577), .B1(n110), .Y(
        n159) );
  AO22X1 U326 ( .A0(vector_y_w[21]), .A1(n3370), .B0(N356), .B1(n136), .Y(n240) );
  AO22X1 U327 ( .A0(vector_y_w[22]), .A1(n3370), .B0(N357), .B1(n136), .Y(n239) );
  AO22X1 U328 ( .A0(vector_y_w[53]), .A1(n341), .B0(N436), .B1(n126), .Y(n208)
         );
  AO22X1 U329 ( .A0(vector_y_w[54]), .A1(n341), .B0(N437), .B1(n126), .Y(n207)
         );
  AO22X1 U330 ( .A0(vector_y_w[85]), .A1(n3440), .B0(N516), .B1(n119), .Y(n184) );
  AO22X1 U331 ( .A0(vector_y_w[86]), .A1(n3440), .B0(N517), .B1(n119), .Y(n183) );
  AO22X1 U332 ( .A0(vector_y_w[117]), .A1(n3480), .B0(N596), .B1(n107), .Y(
        n152) );
  AO22X1 U333 ( .A0(vector_y_w[118]), .A1(n3480), .B0(N597), .B1(n107), .Y(
        n151) );
  AO22X1 U334 ( .A0(vector_y_w[29]), .A1(n3380), .B0(N376), .B1(n133), .Y(n232) );
  AO22X1 U335 ( .A0(vector_y_w[30]), .A1(n3380), .B0(N377), .B1(n133), .Y(n231) );
  AO22X1 U336 ( .A0(vector_y_w[93]), .A1(n3450), .B0(N536), .B1(n116), .Y(n176) );
  AO22X1 U337 ( .A0(vector_y_w[94]), .A1(n3450), .B0(N537), .B1(n116), .Y(n175) );
  AO22X1 U338 ( .A0(vector_y_w[125]), .A1(n3490), .B0(N616), .B1(n104), .Y(
        n144) );
  AO22X1 U339 ( .A0(vector_y_w[126]), .A1(n3490), .B0(N617), .B1(n104), .Y(
        n143) );
  AO22X1 U340 ( .A0(vector_y_w[5]), .A1(n3350), .B0(N316), .B1(n140), .Y(n256)
         );
  AO22X1 U341 ( .A0(vector_y_w[6]), .A1(n3350), .B0(N317), .B1(n140), .Y(n255)
         );
  AO22X1 U342 ( .A0(vector_y_w[37]), .A1(n339), .B0(N396), .B1(n131), .Y(n224)
         );
  AO22X1 U343 ( .A0(vector_y_w[38]), .A1(n339), .B0(N397), .B1(n131), .Y(n223)
         );
  AO22X1 U344 ( .A0(vector_y_w[69]), .A1(n342), .B0(N476), .B1(n123), .Y(n2000) );
  AO22X1 U345 ( .A0(vector_y_w[70]), .A1(n342), .B0(N477), .B1(n123), .Y(n199)
         );
  AO22X1 U346 ( .A0(vector_y_w[101]), .A1(n3460), .B0(N556), .B1(n113), .Y(
        n168) );
  AO22X1 U347 ( .A0(vector_y_w[102]), .A1(n3460), .B0(N557), .B1(n113), .Y(
        n167) );
  AO22X1 U348 ( .A0(vector_y_w[12]), .A1(n3360), .B0(N335), .B1(n138), .Y(n249) );
  AO22X1 U349 ( .A0(vector_y_w[44]), .A1(n340), .B0(N415), .B1(n129), .Y(n2170) );
  AO22X1 U350 ( .A0(vector_y_w[76]), .A1(n3430), .B0(N495), .B1(n121), .Y(n193) );
  AO22X1 U351 ( .A0(vector_y_w[108]), .A1(n3470), .B0(N575), .B1(n110), .Y(
        n161) );
  AO22X1 U352 ( .A0(vector_y_w[20]), .A1(n3370), .B0(N355), .B1(n136), .Y(n241) );
  AO22X1 U353 ( .A0(vector_y_w[52]), .A1(n341), .B0(N435), .B1(n126), .Y(n209)
         );
  AO22X1 U354 ( .A0(vector_y_w[84]), .A1(n3440), .B0(N515), .B1(n119), .Y(n185) );
  AO22X1 U355 ( .A0(vector_y_w[116]), .A1(n3480), .B0(N595), .B1(n107), .Y(
        n153) );
  AO22X1 U356 ( .A0(vector_y_w[28]), .A1(n3380), .B0(N375), .B1(n133), .Y(n233) );
  AO22X1 U357 ( .A0(vector_y_w[92]), .A1(n3450), .B0(N535), .B1(n116), .Y(n177) );
  AO22X1 U358 ( .A0(vector_y_w[124]), .A1(n3490), .B0(N615), .B1(n104), .Y(
        n145) );
  AO22X1 U359 ( .A0(vector_y_w[4]), .A1(n3350), .B0(N315), .B1(n140), .Y(n257)
         );
  AO22X1 U360 ( .A0(vector_y_w[36]), .A1(n339), .B0(N395), .B1(n131), .Y(n225)
         );
  AO22X1 U361 ( .A0(vector_y_w[68]), .A1(n342), .B0(N475), .B1(n123), .Y(n2010) );
  AO22X1 U362 ( .A0(vector_y_w[100]), .A1(n3460), .B0(N555), .B1(n113), .Y(
        n169) );
  AO22X1 U363 ( .A0(vector_y_w[10]), .A1(n3360), .B0(N333), .B1(n138), .Y(n251) );
  AO22X1 U364 ( .A0(vector_y_w[11]), .A1(n3360), .B0(N334), .B1(n138), .Y(n250) );
  AO22X1 U365 ( .A0(vector_y_w[42]), .A1(n340), .B0(N413), .B1(n129), .Y(n2190) );
  AO22X1 U366 ( .A0(vector_y_w[43]), .A1(n340), .B0(N414), .B1(n129), .Y(n2180) );
  AO22X1 U367 ( .A0(vector_y_w[74]), .A1(n3430), .B0(N493), .B1(n121), .Y(n195) );
  AO22X1 U368 ( .A0(vector_y_w[75]), .A1(n3430), .B0(N494), .B1(n121), .Y(n194) );
  AO22X1 U369 ( .A0(vector_y_w[106]), .A1(n3470), .B0(N573), .B1(n110), .Y(
        n163) );
  AO22X1 U370 ( .A0(vector_y_w[107]), .A1(n3470), .B0(N574), .B1(n110), .Y(
        n162) );
  AO22X1 U371 ( .A0(vector_y_w[18]), .A1(n3370), .B0(N353), .B1(n136), .Y(n243) );
  AO22X1 U372 ( .A0(vector_y_w[19]), .A1(n3370), .B0(N354), .B1(n136), .Y(n242) );
  AO22X1 U373 ( .A0(vector_y_w[50]), .A1(n341), .B0(N433), .B1(n126), .Y(n211)
         );
  AO22X1 U374 ( .A0(vector_y_w[51]), .A1(n341), .B0(N434), .B1(n126), .Y(n210)
         );
  AO22X1 U375 ( .A0(vector_y_w[82]), .A1(n3440), .B0(N513), .B1(n119), .Y(n187) );
  AO22X1 U376 ( .A0(vector_y_w[83]), .A1(n3440), .B0(N514), .B1(n119), .Y(n186) );
  AO22X1 U377 ( .A0(vector_y_w[114]), .A1(n3480), .B0(N593), .B1(n107), .Y(
        n155) );
  AO22X1 U378 ( .A0(vector_y_w[115]), .A1(n3480), .B0(N594), .B1(n107), .Y(
        n154) );
  AO22X1 U379 ( .A0(vector_y_w[26]), .A1(n3380), .B0(N373), .B1(n133), .Y(n235) );
  AO22X1 U380 ( .A0(vector_y_w[27]), .A1(n3380), .B0(N374), .B1(n133), .Y(n234) );
  AO22X1 U381 ( .A0(vector_y_w[90]), .A1(n3450), .B0(N533), .B1(n116), .Y(n179) );
  AO22X1 U382 ( .A0(vector_y_w[91]), .A1(n3450), .B0(N534), .B1(n116), .Y(n178) );
  AO22X1 U383 ( .A0(vector_y_w[122]), .A1(n3490), .B0(N613), .B1(n104), .Y(
        n147) );
  AO22X1 U384 ( .A0(vector_y_w[123]), .A1(n3490), .B0(N614), .B1(n104), .Y(
        n146) );
  AO22X1 U385 ( .A0(vector_y_w[2]), .A1(n3350), .B0(N313), .B1(n140), .Y(n259)
         );
  AO22X1 U386 ( .A0(vector_y_w[3]), .A1(n3350), .B0(N314), .B1(n140), .Y(n258)
         );
  AO22X1 U387 ( .A0(vector_y_w[34]), .A1(n339), .B0(N393), .B1(n131), .Y(n227)
         );
  AO22X1 U388 ( .A0(vector_y_w[35]), .A1(n339), .B0(N394), .B1(n131), .Y(n226)
         );
  AO22X1 U389 ( .A0(vector_y_w[66]), .A1(n342), .B0(N473), .B1(n123), .Y(n2030) );
  AO22X1 U390 ( .A0(vector_y_w[67]), .A1(n342), .B0(N474), .B1(n123), .Y(n2020) );
  AO22X1 U391 ( .A0(vector_y_w[98]), .A1(n3460), .B0(N553), .B1(n113), .Y(n171) );
  AO22X1 U392 ( .A0(vector_y_w[99]), .A1(n3460), .B0(N554), .B1(n113), .Y(n170) );
  AO22X1 U393 ( .A0(vector_y_w[9]), .A1(n3360), .B0(N332), .B1(n138), .Y(n252)
         );
  AO22X1 U394 ( .A0(vector_y_w[41]), .A1(n340), .B0(N412), .B1(n129), .Y(n2200) );
  AO22X1 U395 ( .A0(vector_y_w[73]), .A1(n3430), .B0(N492), .B1(n121), .Y(n196) );
  AO22X1 U396 ( .A0(vector_y_w[105]), .A1(n3470), .B0(N572), .B1(n110), .Y(
        n164) );
  AO22X1 U397 ( .A0(vector_y_w[17]), .A1(n3370), .B0(N352), .B1(n136), .Y(n244) );
  AO22X1 U398 ( .A0(vector_y_w[49]), .A1(n341), .B0(N432), .B1(n126), .Y(n212)
         );
  AO22X1 U399 ( .A0(vector_y_w[81]), .A1(n3440), .B0(N512), .B1(n119), .Y(n188) );
  AO22X1 U400 ( .A0(vector_y_w[113]), .A1(n3480), .B0(N592), .B1(n107), .Y(
        n156) );
  AO22X1 U401 ( .A0(vector_y_w[25]), .A1(n3380), .B0(N372), .B1(n133), .Y(n236) );
  AO22X1 U402 ( .A0(vector_y_w[89]), .A1(n3450), .B0(N532), .B1(n116), .Y(n180) );
  AO22X1 U403 ( .A0(vector_y_w[121]), .A1(n3490), .B0(N612), .B1(n104), .Y(
        n148) );
  AO22X1 U404 ( .A0(vector_y_w[1]), .A1(n3350), .B0(N312), .B1(n140), .Y(n260)
         );
  AO22X1 U405 ( .A0(vector_y_w[33]), .A1(n339), .B0(N392), .B1(n131), .Y(n228)
         );
  AO22X1 U406 ( .A0(vector_y_w[65]), .A1(n342), .B0(N472), .B1(n123), .Y(n2040) );
  AO22X1 U407 ( .A0(vector_y_w[97]), .A1(n3460), .B0(N552), .B1(n113), .Y(n172) );
  NOR2X1 U408 ( .A(n101), .B(n3650), .Y(n141) );
  AO22X1 U409 ( .A0(vector_y_w[24]), .A1(n3380), .B0(N371), .B1(n133), .Y(n237) );
  AO22X1 U410 ( .A0(vector_y_w[88]), .A1(n3450), .B0(N531), .B1(n116), .Y(n181) );
  AO22X1 U411 ( .A0(vector_y_w[120]), .A1(n3490), .B0(N611), .B1(n104), .Y(
        n149) );
  NAND2X1 U412 ( .A(n3220), .B(n361), .Y(N637) );
  XOR2X1 U413 ( .A(counter_r[2]), .B(n3640), .Y(n3220) );
  OAI211X1 U414 ( .A0(n141), .A1(n98), .B0(n117), .C0(n124), .Y(N322) );
  NAND2X1 U415 ( .A(counter_r[1]), .B(n3650), .Y(n108) );
  NAND2X1 U416 ( .A(counter_r[0]), .B(n101), .Y(n111) );
  NAND2X1 U417 ( .A(counter_r[3]), .B(n99), .Y(n117) );
  NAND2X1 U418 ( .A(counter_r[2]), .B(n98), .Y(n127) );
  NAND2X1 U419 ( .A(n99), .B(n98), .Y(n134) );
  NAND2X1 U420 ( .A(counter_r[3]), .B(counter_r[2]), .Y(n105) );
  NAND2X1 U421 ( .A(n3650), .B(n101), .Y(n114) );
  AO22X1 U422 ( .A0(vector_y_w[8]), .A1(n3360), .B0(N331), .B1(n138), .Y(n253)
         );
  AO22X1 U423 ( .A0(vector_y_w[40]), .A1(n340), .B0(N411), .B1(n129), .Y(n221)
         );
  AO22X1 U424 ( .A0(vector_y_w[72]), .A1(n3430), .B0(N491), .B1(n121), .Y(n197) );
  AO22X1 U425 ( .A0(vector_y_w[104]), .A1(n3470), .B0(N571), .B1(n110), .Y(
        n165) );
  AO22X1 U426 ( .A0(vector_y_w[16]), .A1(n3370), .B0(N351), .B1(n136), .Y(n245) );
  AO22X1 U427 ( .A0(vector_y_w[48]), .A1(n341), .B0(N431), .B1(n126), .Y(n213)
         );
  AO22X1 U428 ( .A0(vector_y_w[80]), .A1(n3440), .B0(N511), .B1(n119), .Y(n189) );
  AO22X1 U429 ( .A0(vector_y_w[112]), .A1(n3480), .B0(N591), .B1(n107), .Y(
        n157) );
  AO22X1 U430 ( .A0(vector_y_w[0]), .A1(n3350), .B0(N311), .B1(n140), .Y(n261)
         );
  AO22X1 U431 ( .A0(vector_y_w[32]), .A1(n339), .B0(N391), .B1(n131), .Y(n229)
         );
  AO22X1 U432 ( .A0(vector_y_w[64]), .A1(n342), .B0(N471), .B1(n123), .Y(n2050) );
  AO22X1 U433 ( .A0(vector_y_w[96]), .A1(n3460), .B0(N551), .B1(n113), .Y(n173) );
  CLKBUFX3 U434 ( .A(RST), .Y(n3500) );
  NAND4X1 U435 ( .A(counter_r[0]), .B(counter_r[1]), .C(counter_r[2]), .D(
        counter_r[3]), .Y(n361) );
  NAND2BX1 U436 ( .AN(n3650), .B(n361), .Y(N635) );
  NAND2BX1 U437 ( .AN(N320), .B(n361), .Y(N636) );
  NAND2BX1 U438 ( .AN(N322), .B(n361), .Y(N638) );
endmodule

