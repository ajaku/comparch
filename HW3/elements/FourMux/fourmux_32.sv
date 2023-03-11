///////////////////////////////////////////////////////////////////////////////
//
// fourmux_32 module
//
// A 32 Bit four to one multiplexer module for your Computer Architecture Elements Catalog
//
// module: fourmux_32
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef FOURMUX_32
`define FOURMUX_32
`include "fourmux.sv"

module fourmux_32(A, B, C, D, S, Q);
   //
   // ---------------- PORT DEFINITIONS ----------------
   //
   input [31:0] A;
   input [31:0] B;
   input [31:0] C;
   input [31:0] D;
   input [1:0] S; 
   output [31:0] Q;

   genvar k;
   generate for(k = 0; k<32; k = k+1)
      begin: mux_loop
      fourmux m1(A[k], B[k], C[k], D[k], S, Q[k]);
      end
   endgenerate
  endmodule

`endif // FOURMUX_32
