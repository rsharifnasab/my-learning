module myfunc(
    output o,
    input a,
    input b,
    input c,
    input d
);

supply1 pwr;
supply0 gnd;

// not e har kodum ro besazim!
wire not_a, not_b, not_c, not_d;
not(not_a, a);
not(not_b, b);
not(not_c, c);
not(not_d, d);

// xmos (out,in,control)


//bala : dual ~F - P network
wire o_bala;

wire t1;
pmos( t1 ,pwr,not_a); // ~a & ~d
pmos( o_bala ,t1,not_d);

wire t2_0,t2_1;
pmos( t2_0 ,pwr,not_a); // ~a & B & ~c
pmos( t2_1 ,t2_0,b);
pmos( o_bala ,t2_1,not_c);


wire t3_0;
pmos( t3_0 ,pwr,not_b); // ~b & d
pmos( o_bala ,t3_0,d);

wire t4_0,t4_1;
pmos( t4_0 ,pwr,a); // a & c & d
pmos( t4_1 ,t4_0,c);
pmos( o_bala ,t4_1,d);


// down : F  ---> N network
wire o_paeen;

wire step_1;
nmos(step_1,gnd,not_a); // ~a + ~ d
nmos(step_1,gnd,not_d);


wire step_2;
nmos(step_2,step_1,not_a); // ~a + b + ~c
nmos(step_2,step_1,b);
nmos(step_2,step_1,not_c);


wire step_3;
nmos(step_3,step_2,not_b); // ~b + d
nmos(step_3,step_2,d);

nmos(o_paeen,step_3,a); // a+c+d
nmos(o_paeen,step_3,c);
nmos(o_paeen,step_3,d);

//------------------------//

assign o = o_bala;
assign o = o_paeen;

    //assign o = a&d | a&(~b)&c | b&(~d) | a&(~c)&(~d);
endmodule
