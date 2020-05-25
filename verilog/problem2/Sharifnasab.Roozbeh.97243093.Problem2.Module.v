module addd(
    output sum,
    output cout,

    input a,
    input b,
    input cin
);

// assign o_sum   = i_bit1 ^ i_bit2 ^ i_carry;
xor(sum, cin,a,b);


// assign o_carry = (i_bit1 ^ i_bit2) & i_carry) | (i_bit1 & i_bit2);
wire w1;
xor(w1, a, b);

wire w2;
and(w2,w1,cin);

wire w3;
and(w3,a,b);

or(cout, w2, w3);

endmodule

// ta inja ye full adder e 1 biti sakhtim

module eight_bit_adder(
      output [7:0] sum,
      output cout,
      output over_flow,
      input [7:0] a,
      input [7:0] b
);

// cheat :  addd ( sum, cout , a , b , cin)

wire zero;
assign zero =  0;
// ye sefr besazim bara voroudi cin e avvali

wire cout0;
addd add(sum[0],cout0,a[0],b[0],zero);
wire cout1;
addd add2(sum[1],cout1,a[1],b[1],cout0);
wire cout2;
addd add3(sum[2],cout2,a[2],b[2],cout1);
wire cout3;
addd add4(sum[3],cout3,a[3],b[3],cout2);

wire cout4;
addd add5(sum[4],cout4,a[4],b[4],cout3);
wire cout5;
addd add6(sum[5],cout5,a[5],b[5],cout4);
wire cout6;
addd add7(sum[6],cout6,a[6],b[6],cout5);
wire cout7;
addd add8(sum[7],cout7,a[7],b[7],cout6);

xor(over_flow, cout7 ,cout6);
 // ragham e naghli e voroudi be bit e akhar va koruji az an barabar bashad

endmodule
