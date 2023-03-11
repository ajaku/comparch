///////////////////////////////////////////////////////////////////////////////
//
// adder_32 TESTBENCH module
//
// A 32 Bit adder testbench module for your Computer Architecture Elements Catalog
//
// module: adder_32_tb
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
`include "adder_32.sv"

module adder_32_tb;
  //reg [31:0] a;
  reg [31:0] a;
  //reg [31:0] b;
  reg [31:0] b;
  reg cin;
  integer i,j;
  wire cout;
  //wire [31:0] s;
  wire [31:0] s;

  adder_32 uut(.A(a), .B(b), .C(cout), .S(s), .Cin(cin));
  initial 
  begin
   /* for(i = 32'b00000000000000000000000000000000; i < 32'b11111111111111111111111111111111; i = i + 32'b00000000000000000000000000000001)
    begin
      a = i;
     for(j = 32'b00000000000000000000000000000000; j < 32'b11111111111111111111111111111111; j = j + 32'b00000000000000000000000000000001)
     begin
        b = j;
      end
    end
    */ // code for testing all iterations
    $monitor("$time=%0d, a=%b, b=%b, cout=%b, cin=%b, s=%b",$time, a, b, cout, cin, s);
    cin = 0;
    a = 32'b11111111111111111111111111111100;
    b = 32'b00000000000000000000000000000001;
    #10;
    cin = 1;
    #10;
    cin = 0;
    a = 32'b00000000000000000000000000000000;
    b = 32'b00000000000000000000000000000001;
    #10;
    cin = 1;
    #10;
    

  end
endmodule
