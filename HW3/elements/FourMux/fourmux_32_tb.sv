///////////////////////////////////////////////////////////////////////////////
//
// fourmux_32 TESTBENCH module
//
// A 32 Bit Four to ONe Mux testbench module for your Computer Architecture Elements Catalog
//
// module: fourmux_32_tb
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

`include "fourmux_32.sv"

module fourmux_32_tb;
   reg [31:0]a;
   reg [31:0]b;
   reg [31:0]c;
   reg [31:0]d;
   reg [1:0]s;
   integer i;
   integer j;
   wire [31:0]q;
   
   fourmux_32 uut(.A(a), .B(b), .C(c), .D(d), .S(s), .Q(q));
   initial 
   begin 
      for(i = 0; i < 32; i = i + 1) 
      begin
        a[i] = i%2;
        b[i] = 0;
        c[i] = !(i%2);
        d[i] = 1;
      end
      $monitor("time=%0d, a=%b, b=%b, c=%b, d=%b, s=%b, q=%b\n", $time, a, b, c, d, s, q);
      s = 0;
      #10;
      s = 1;
      #10;
      s = 2;
      #10;
      s = 3;
      #10;

      for(i = 0; i < 32; i = i + 1) 
      begin
        a[i] = !(i%2);
        b[i] = !a[i];
        c[i] = c[i]^!(i%2);
        d[i] = 1;
      end

      $monitor("time=%0d, a=%b, b=%b, c=%b, d=%b, s=%b, q=%b\n", $time, a, b, c, d, s, q);
      s = 0;
      #10;
      s = 1;
      #10;
      s = 2;
      #10;
      s = 3;
      #10;


  end
endmodule

// `endif // halfadder_tb
