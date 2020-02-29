module FA(
    output sum,
    output cout,
    input a,
    input b,
    input cin
);
xor(sum, cin,a,b); //o_sum= i_bit1 ^ i_bit2 ^ i_carry;
//o_carry = ((i_bit1 ^ i_bit2) & i_carry)|(i_bit1 & i_bit2);
wire w1;
xor(w1, a, b);
wire w2;
and(w2,w1,cin);
wire w3;
and(w3,a,b);
or(cout, w2, w3);
endmodule
/////////////////////////////////////////////////////////
module cla(
      output [31:0] out,
      output cout,
      input [31:0] a,
      input [31:0] b
);

      assign {cout,out} = a+b; // wow! really?

endmodule
