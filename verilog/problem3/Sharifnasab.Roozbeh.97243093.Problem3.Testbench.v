`timescale 1ns/100ps
`include "Sharifnasab.Roozbeh.97243093.Problem3.Module.v"

module alu_tb();
wire [5:0] o;

reg [5:0] a;
reg [5:0] b;
reg [1:0] control;

alu my_alu(o,a,b,control);


initial
   begin
   $dumpfile("my_out.vcd");
   $dumpvars(0, alu_tb);

      // testing module zero
      a = 6'b1001;
      b = 6'b0100;
      control = 2'b00;
      #5;

      a = 6'b0101;
      b = 6'b0010;
      control = 2'b00;
      #5;

      // testing module one
      a = 6'b0000;
      b = 6'b0000;
      control = 2'b01;
      #5;

      a = 6'b0001; // 1 + 4 * 2 -> 7
      b = 6'b0010;
      control = 2'b01;
      #5;

      // testing module two
      a = 6'b0000;
      b = 6'b0000;
      control = 2'b10;
      #5;

      a = 6'b0101;
      b = 6'b1110;
      control = 2'b10;
      #5;

      //testing module three
      a = 6'b0100;
      b = 6'b1010;
      control = 2'b11;
      #5;

      a = 6'b1001;
      b = 6'b1010;
      control = 2'b11;
      #5;


      #10
     $finish;
   end
endmodule
