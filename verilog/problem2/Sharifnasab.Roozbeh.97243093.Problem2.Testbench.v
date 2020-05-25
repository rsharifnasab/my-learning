`timescale 1ns/100ps
`include "Sharifnasab.Roozbeh.97243093.Problem2.Module.v"

module eight_bit_adder_tb();
wire [7:0] o;
wire over_flow;
wire cout;
reg [7:0] a;
reg [7:0] b;

eight_bit_adder my_8bit_adder(o,cout,over_flow,a,b);


initial
   begin
   $dumpfile("my_out.vcd");
   $dumpvars(0, eight_bit_adder_tb);

      a = 8'b0000;
      b = 8'b0000;
      #5; // 0+0

      a = 8'b0001;
      b = 8'b0010;
      #5; // 1 + 2

      a = 8'b0100;
      b = 8'b0110;
      #5; // 4 + 6

      a = 8'b01000000;
      b = 8'b01100000;
      #5; // 64 + 96 (overflow)

      a = 8'b01010010;
      b = 8'b01101000;
      #5; // 82 + 104 (overflow)

      a = 8'b11010010;
      b = 8'b11101000;
      #5; // -46 - 24

      a = 8'b10011000;
      b = 8'b10100100;
      #5; // - 104 - 92 ( overflow)

      #10
     $finish;
   end
endmodule
