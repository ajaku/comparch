///////////////////////////////////////////////////////////////////////////////
//
// dff_32 TESTBENCH module
//
// Positive Edge Triggered 32 Bit Flip Flop "Register" testbench module for your Computer Architecture Elements Catalog
//
// module: dff_32_tb
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
`include "dff_32.sv"

module dff_32_tb;
  reg [31:0] d;
  reg clk;
  reg reset;
  reg run;
  wire [31:0] q;

  dff_32 uut(.D(d), .Q(q), .clk(clk), .reset(reset));

  initial begin
    run = 1'b1;
    while(run)
      #1 clk = ~clk;
  end

  initial 
  begin
   /* for(i = 32'b00000000000000000000000000000000; i < 32'b11111111111111111111111111111111; i = i + 32'b00000000000000000000000000000001)
    begin
      a = i;
   end
    */ // code for testing all iterations
    $monitor("D=%b \nCLK=%b\nReset=%b\nQ=%b \n", d, clk, reset, q);
    clk <= 0;
    reset = 0;

    d = 32'b00000000000000000000000000000000;
    #1;
    #1;
    d = 32'b11111111111111111111111111111100;
    #1;
    #1;
    reset = 1;
    #1;
    #1;
    reset = 0;
    d = 32'b11111111111111111111111111111100;
    #1;
    #1;
    reset = 1;
    #1;
    run = 1'b0;
  end
endmodule
