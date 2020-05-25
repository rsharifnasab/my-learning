`timescale 1ns/100ps
`include "Sharifnasab.Roozbeh.97243093.Problem4.Module.v"

module cla_tb();
wire [31:0] o;
wire cout;
reg [31:0] a;
reg [31:0] b;
cla my_cla(o,cout,a,b);


initial
   begin
   $dumpfile("my_out.vcd");
   $dumpvars(0, cla_tb);

      // testing module zero
      a = 32'd24;
      b = 32'd56;
      #5;

      a = 32'd245451;
      b = 32'd4656556;
      #5;
      
      #10
     $finish;
   end
endmodule
