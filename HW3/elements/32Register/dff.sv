///////////////////////////////////////////////////////////////////////////////
//
// dff module
//
// A Positive Edge Triggered D Flip Flop module for your Computer Architecture Elements Catalog
//
// module: dff
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef DFF
`define DFF

module DFF(D, Q, clk, reset);
  input D, clk, reset;
  output reg Q;
 /*
  wire w1, w2, w3, w4, nQ;
  
  nand(w1,D,reset,w2);
  nand(w2,clk,w1,w3);
  nand(w3,reset,clk,w4);
  nand(w4,w1,w3);
  nand(nQ,w2,reset,Q);
  nand(Q,w3,nQ); */

  always @(posedge clk)
  begin
    if(reset == 1)
      Q <= 0;
    else
      Q <= D;
  end

endmodule
`endif  //DFF
