 `timescale 1ns/100ps
 // `include "clk_gen.v"
 `include "counter4bit.v"

 module counter4bit_tb();
 reg clk;
 reg reset;
 reg en;
 reg u_d;
 wire [3:0] count;

 counter4bit counter4bit1(count, clk, reset, en, u_d);
 // clk_gen clk1(clk);
 
 initial clk = 0;
 always #10 clk = ~clk;

 initial
    begin
    $dumpfile("counter4bit.vcd");
    $dumpvars(0, counter4bit_tb);
      reset = 1'b0;
      en = 1'b0;
      u_d = 1'b1;
      
      #18; reset = 1'b1;
      #10; en = 1'b1;
      #250; u_d = 1'b0;
      #58; reset = 1'b0;
      #13; reset = 1'b1;

      #60; reset = 1'b0;
      #20; reset = 1'b1;

      #10;
      $finish;
    end
endmodule