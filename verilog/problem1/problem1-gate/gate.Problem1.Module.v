module myfunc(
    output o,
    input a,
    input b,
    input c,
    input d
);
supply1 pwr;
supply0 Gnd;


    assign o = a&d | a&(~b)&c | b&(~d) | (~a)&(~c)&(~d);
endmodule
