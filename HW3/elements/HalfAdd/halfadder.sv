///////////////////////////////////////////////////////////////////////////////
//
// halfadder module
//
// A half adder module for your Computer Architecture Elements Catalog
//
// module: halfadder
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef HALFADDER
`define HALFADDER

module halfadder(A, B, C, S);
   //
   // ---------------- PORT DEFINITIONS ----------------
   //
   input  A, B;
   output C, S;

   //
   // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
   //

   // mix up the input bits
   assign S = A^B;
   assign C = A&B;

endmodule

`endif // HALFADDER
