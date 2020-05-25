module zero(
      output [5:0] out,
      input [5:0] a,
      input [5:0] b
);
assign out = (a<<<2)+(b>>>1);

endmodule
//////////////////////////////////////////////////
module one(
      output [5:0] out,
      input [5:0] a,
      input [5:0] b
);

assign out = a + 3 * b;

endmodule
////////////////////////////////////////////////
module two(
      output [5:0] out,
      input [5:0] a,
      input [5:0] b
);
assign out = -1 * b;

endmodule
///////////////////////////////////////////////////
module three(
      output [5:0] out,
      input [5:0] a,
      input [5:0] b
);
wire [5:0] two_a_menha_b;
assign two_a_menha_b =  2*a - b; // err
assign out = (two_a_menha_b[5] == 1'b1) ? (-1 * two_a_menha_b ) : two_a_menha_b;

endmodule
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
module alu(
      output [5:0] out,
      input [5:0] a,
      input [5:0] b,
      input [1:0] control
);

      wire [5:0] out0;
      zero myzero(out0,a,b);

      wire [5:0] out1;
      one myone(out1,a,b);

      wire [5:0] out2;
      two mytwo(out2,a,b);

      wire [5:0] out3;
      three mythree(out3,a,b);

      assign out = (control[1])?
       (control[0]? (out3) : (out2) ): // 11 , 10
       (control[0]? (out1) : (out0) ); // 01 , 00

endmodule
