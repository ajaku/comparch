///////////////////////////////////////////////////////////////////////////////
//
// twomux_32 module
//
// A two to one multiplexer module for your Computer Architecture Elements Catalog
//
// module: twomux
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef TWOMUX_32
`define TWOMUX_32
`include "twomux.sv"

module twomux_32(A, B, S, Q);
   //
   // ---------------- PORT DEFINITIONS ----------------
   //
   input [31:0] A;
   input [31:0] B; 
   input S;
   output [31:0] Q;

   // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
   //for(integer i=0; i<31; i=i+1)
   genvar k;
   generate for(k = 0; k < 32; k = k + 1)
      begin
         twomux m1(A[k], B[k], S, Q[k]);
      end
   endgenerate
endmodule
`endif // twomux_32
