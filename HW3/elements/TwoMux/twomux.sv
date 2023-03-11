///////////////////////////////////////////////////////////////////////////////
//
// twomux module
//
// A two to one multiplexer module for your Computer Architecture Elements Catalog
//
// module: twomux
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef TWOMUX
`define TWOMUX

module twomux(A, B, S, Q);
   //
   // ---------------- PORT DEFINITIONS ----------------
   //
   input A;
   input B; 
   input S;
   wire a1, a2, o1;
   output Q;

   //
   // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
   //
   and(a1, A, !S);
   and(a2, B, S);
   or(Q, a1, a2);
  
endmodule

`endif // TWOMUX
