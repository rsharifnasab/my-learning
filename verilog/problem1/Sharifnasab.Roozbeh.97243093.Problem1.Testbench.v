`timescale 1ns/100ps
`include "Sharifnasab.Roozbeh.97243093.Problem1.Module.v"

module myfunc_tb();
wire o;
reg a,b,c,d;

myfunc myfunc1(o, a,b,c,d);


initial
   begin
   $dumpfile("my_out.vcd");
   $dumpvars(0, myfunc_tb);

      {a,b,c,d} = 4'b0000;
      #5; {a,b,c,d} = 4'b0001;
      #5; {a,b,c,d} = 4'b0010;
      #5; {a,b,c,d} = 4'b0011;
      #5; {a,b,c,d} = 4'b0100;
      #5; {a,b,c,d} = 4'b0101;
      #5; {a,b,c,d} = 4'b0110;
      #5; {a,b,c,d} = 4'b0111;

      #12; {a,b,c,d} = 4'b1000;
      #5; {a,b,c,d} = 4'b1001;
      #5; {a,b,c,d} = 4'b1010;
      #5; {a,b,c,d} = 4'b1011;
      #5; {a,b,c,d} = 4'b1100;
      #5; {a,b,c,d} = 4'b1101;
      #5; {a,b,c,d} = 4'b1110;
      #5; {a,b,c,d} = 4'b1111;

      #10;
     $finish;
   end
endmodule
