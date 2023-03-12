///////////////////////////////////////////////////////////////////////////////
//
// regfile_32 module
//
// Register file module for your Computer Architecture Elements Catalog
//
// module: regfile_32
// hdl: Verilog
//
// author: Your Name <andy.jaku@cooper.edu>
//
///////////////////////////////////////////////////////////////////////////////

`ifndef REGFILE_32
`define REGFILE_32

module regfile_32(inp, inp_sel, 
             out, out_sel, 
             read, write, EN, clk);

  input [31:0] inp;
  input [5:0] inp_sel;
  input [5:0] out_sel;
  input read, write, EN, clk;
  integer i; 
  
  output reg [31:0] out;
  reg [31:0] regs [0:31];

  initial begin
    for (i = 0; i < 32; i++)
    begin
      regs[i] <= 32'b00000000000000000000000000000000;
    end
  end
  
  always @ (posedge clk)
  begin
    if (EN == 1)
      if (write == 1)
      begin
        regs [inp_sel] = inp;
      end
    else;
  end

  always @ (negedge clk)
  begin
    if (EN ==1)
      if (read == 1)
      begin
        out = regs [out_sel];
      end
    else;
  end

  /*
   * Code Partially Inspired by
   * https://github.com/Caskman/MIPS-Processor-in-Verilog/blob/master/RegisterFile.v
   *
   * Would stil like to implement selection logic write using 32-1 Mux and
   * reading using a 5 to 32 decoder, however, not sure how to implement yet.
   */

///////////////////////////////////////////////////////////////////////////////

    /* ------- Alternative Method
      case ({read, write})
        2'b00: begin // case 0 (neither)

        end

        2'b01: begin // case 1 (write)
          regs [inp_sel] = inp;
          
           * Goals:
           * Could this be implemented using as 32 to 1 mux.
           * As it is now, I can't seem to efficiently select between 32
           * inputs without specifying each one as an input and using
           * a substantial amount of copy and pasting.
           
        end

        2'b10: begin // case 2 (read)
          out = regs [out_sel];
          
           * Goals:
           * Implement this feature using a 32 to 5 decoder.
           
        end
      
        2'b11: begin // case 3 (both)
          regs [inp_sel] = inp;
          out = regs [out_sel];
        end

        default: begin

        end
      endcase

   * Source of inspiration for this register file.
   * https://esrd2014.blogspot.com/p/register-file.html
   */
endmodule
`endif  //REGFILE_32
