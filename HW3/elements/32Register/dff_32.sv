///////////////////////////////////////////////////////////////////////////////
//
// dff_32 module
//
// A positive edge triggered 32 Bit D Flip Flop "Register" module for your Computer Architecture Elements Catalog
//
// module: dff_32
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef DFF_32
`define DFF_32
`include "dff.sv"

module dff_32(D, Q, clk, reset);
  input [31:0] D;
  input clk, reset;
  output wire [31:0] Q;
  genvar k;
  generate for(k = 0; k < 32; k = k + 1)
    begin
      DFF DFF1(D[k], Q[k], clk, reset);
    end
  endgenerate
endmodule
`endif  //DFF_32
