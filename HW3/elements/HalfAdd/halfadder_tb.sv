///////////////////////////////////////////////////////////////////////////////
//
// HALFADDER TESTBENCH module
//
// An half adder testbench module for your Computer Architecture Elements Catalog
//
// module: halfadder_tb
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

`include "./halfadder.sv"

module halfadder_tb;

   reg a;
   reg b;   //inputs are reg for test bench
   wire c, s;     //outputs are wire for test bench
   reg [1:0] i;
   reg [1:0] j;
   //
   // ---------------- INITIALIZE TEST BENCH ----------------
   //
   initial begin
   $monitor("time=%0d, a=%b, b=%b, c=%b, s=%b\n", $time, a, b, c, s);
   #10 
   a=1'b0;
   b=1'b0;
   #10 
   a=1'b0;
   b=1'b1;                        
   #10 
   a=1'b1;
   b=1'b0;                        
   #10
   a=1'b1;
   b=1'b1;      
   
   end

   //
   // ---------------- INSTANTIATE UNIT UNDER TEST (UUT) ----------------
   //
   halfadder uut(.A(a), .B(b), .C(c), .S(s));

endmodule

// `endif // halfadder_tb
