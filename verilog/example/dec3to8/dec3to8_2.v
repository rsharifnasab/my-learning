module decoder(
    output [7:0] o,
    input enb,
    input [2:0] sel
);

    reg [7:0] o;
    always @ (enb or sel)
        if (enb)
            o = 8'b00000000;
        else
            assign o = (8'b00000001) << sel;
endmodule