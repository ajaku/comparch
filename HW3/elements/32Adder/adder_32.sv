///////////////////////////////////////////////////////////////////////////////
//
// adder_32 module
//
// A 32 Bit adder module for your Computer Architecture Elements Catalog
//
// module: adder_32
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef ADDER_32
`define ADDER_32

`include "fulladder.sv"

module adder_32(A,B,C,S,Cin);
  /*input [31:0] A;
  input [31:0] B;
  input Cin;
  output [31:0] S;*/
  input [31:0] A;
  input [31:0] B;
  input Cin;
  output [31:0] S;
  output C;
  wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;
  
  FullAdder FA1(Cin,A[0],B[0],c1,S[0]);
  FullAdder FA2(c1,A[1],B[1],c2,S[1]);
  FullAdder FA3(c2,A[2],B[2],c3,S[2]);
  FullAdder FA4(c3,A[3],B[3],c4,S[3]);
  FullAdder FA5(c4,A[4],B[4],c5,S[4]);
  FullAdder FA6(c5,A[5],B[5],c6,S[5]);
  FullAdder FA7(c6,A[6],B[6],c7,S[6]);
  FullAdder FA8(c7,A[7],B[7],c8,S[7]);
  FullAdder FA9(c8,A[8],B[8],c9,S[8]);
  FullAdder FA10(c9,A[9],B[9],c10,S[9]);
  FullAdder FA11(c10,A[10],B[10],c11,S[10]);
  FullAdder FA12(c11,A[11],B[11],c12,S[11]);
  FullAdder FA13(c12,A[12],B[12],c13,S[12]);
  FullAdder FA14(c13,A[13],B[13],c14,S[13]);
  FullAdder FA15(c14,A[14],B[14],c15,S[14]);
  FullAdder FA16(c15,A[15],B[15],c16,S[15]);
  FullAdder FA17(c16,A[16],B[16],c17,S[16]);
  FullAdder FA18(c17,A[17],B[17],c18,S[17]);
  FullAdder FA19(c18,A[18],B[18],c19,S[18]);
  FullAdder FA20(c19,A[19],B[19],c20,S[19]);
  FullAdder FA21(c20,A[20],B[20],c21,S[20]);
  FullAdder FA22(c21,A[21],B[21],c22,S[21]);
  FullAdder FA23(c22,A[22],B[22],c23,S[22]);
  FullAdder FA24(c23,A[23],B[23],c24,S[23]);
  FullAdder FA25(c24,A[24],B[24],c25,S[24]);
  FullAdder FA26(c25,A[25],B[25],c26,S[25]);
  FullAdder FA27(c26,A[26],B[26],c27,S[26]);
  FullAdder FA28(c27,A[27],B[27],c28,S[27]);
  FullAdder FA29(c28,A[28],B[28],c29,S[28]);
  FullAdder FA30(c29,A[29],B[29],c30,S[29]);
  FullAdder FA31(c30,A[30],B[30],c31,S[30]);
  FullAdder FA32(c31,A[31],B[31],C,S[31]);
endmodule

`endif  //ADDER_32
