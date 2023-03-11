///////////////////////////////////////////////////////////////////////////////
//
// twomux_32 TESTBENCH module
//
// An two to one (32 bit input) multiplexer testbench module for your Computer Architecture Elements Catalog
//
// module: two_one_32_mux_tb
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

`include "twomux_32.sv"

module twomux_32_tb;
   reg [31:0]a;
   reg [31:0]b;
   reg s;
   integer i;
   wire [31:0]q;
   
   twomux_32 uut(.A(a), .B(b), .S(s), .Q(q));
  
   initial 
   begin 
      for(i = 0; i < 32; i = i + 1) 
      begin
         a[i] = i%2;
         b[i] = !(a[i]); 
      end
      $monitor("time=%0d, a=%b, b=%b, s=%b, q=%b\n", $time, a, b, s, q);
      s = 0;
      #10;
      s = 1;
      #10;

      for(i = 0; i < 32; i = i + 1) 
      begin
         a[i] = !(i%2);
    	 b[i] = !(a[i]); 
      end
      $monitor("time=%0d, a=%b, b=%b, s=%b, q=%b\n", $time, a, b, s, q);
      s = 0;
      #10;
      s = 1;
      #10;

  end
endmodule

// `endif // halfadder_tb
