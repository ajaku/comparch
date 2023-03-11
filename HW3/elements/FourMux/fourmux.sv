///////////////////////////////////////////////////////////////////////////////
//
// fourmux module
//
// A four to one multiplexer module for your Computer Architecture Elements Catalog
//
// module: fourmux
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef FOURMUX
`define FOURMUX

module fourmux(A, B, C, D, S, Q);
   //
   // ---------------- PORT DEFINITIONS ----------------
   //
   input A, B, C, D;
   input [1:0] S;
   wire a1, a2, a3, a4, o1;
   output Q;

   //
   // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
   //
   and(a1, !S[0], !S[1], A);
   and(a2,  S[0], !S[1], B);
   and(a3, !S[0],  S[1], C);
   and(a4,  S[0],  S[1], D);
   or(Q, a1, a2, a3, a4);
    
endmodule

`endif // FOURMUX
