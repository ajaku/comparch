///////////////////////////////////////////////////////////////////////////////
//
// regfile_32 TESTBENCH module
//
// 32 Bit Register File testbench module for your Computer Architecture Elements Catalog
//
// module: regfile_32_tb
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
`include "regfile_32.sv"

module regfile_32_tb;
  reg [31:0] inp;
  reg [31:0] out;
  reg [5:0] inp_sel;
  reg [5:0] out_sel;
  reg run, read, write, EN, clk;

  regfile_32 uut(.inp(inp), .inp_sel(inp_sel), .out(out), .out_sel(out_sel), .read(read), .write(write), .EN(EN), .clk(clk));

  initial begin
    run = 1'b1;
    while(run)
      #1 clk = ~clk;
  end

  initial 
  begin
    $monitor("Read=%b Write=%b \nInput=%b Input Sel=%b \nOutput=%b Output Sel=%b\n", read, write, inp, inp_sel, out, out_sel);
    clk <= 0;
    EN = 1;
    out_sel = 5'b00000;
    read = 1;
    write = 0;
    #1;
    #1;
    inp_sel = 5'b00000;
    inp = 32'b10101010101010101010101010101010;
    write = 1;
    read = 0;
    #1;
    #1;
    out_sel = 5'b00000;
    read = 1;
    write = 0;
    #1;
    #1;
    out_sel = 5'b00001;
    read = 1;
    write = 0;
    #1;
    #1;
    out_sel = 5'b00000;
    read = 1;
    write = 0;
    #1;
    #1;
    out_sel = 5'b00001;
    read = 1;
    write = 0;
    #1;
    #1;
    inp_sel = 5'b00001;
    inp = 32'b01010101010101010101010101010101;
    write = 1;
    read = 0;
    #1;
    #1;
    out_sel = 5'b00000;
    read = 1;
    write = 0;
    #1;
    #1;
    out_sel = 5'b00001;
    read = 1;
    write = 0;
    #1;
    #1;
    out_sel = 5'b00000;
    read = 1;
    write = 0;
    #1;
    #1;
    out_sel = 5'b00001;
    read = 1;
    write = 0;
    #1;
    #1;
    run = 1'b0;
  end
endmodule
