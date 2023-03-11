///////////////////////////////////////////////////////////////////////////////
//
// fulladder module
//
// A full adder module for your Computer Architecture Elements Catalog
//
// module: fulladder
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef FULLADDER
`define FULLADDER

`include "../HalfAdd/halfadder.sv"

module FullAdder(cin,x,y,cout,s);
  input cin;
  input x,y;
  output cout,s;
  wire c1,c2,s1;

  halfadder HA1 (x,y,c1,s1);
  halfadder HA2 (s1,cin,c2,s);
  or(cout,c1,c2);

endmodule //Credit Peter Matyhs
`endif // FULLADDER
