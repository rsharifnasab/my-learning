module decoder(
    output [7:0] o,
    input enb,
    input [2:0] sel
);

    reg [7:0] o;
    always @ (enb or sel)
        if (enb)
            o = 8'b11111111;
        else
            case (sel)
                3'b000: o = 8'b11111110;
                3'b001: o = 8'b11111101;
                3'b010: o = 8'b11111011;
                3'b011: o = 8'b11110111;
                3'b100: o = 8'b11101111;
                3'b101: o = 8'b11011111;
                3'b110: o = 8'b10111111;
                3'b111: o = 8'b01111111;
                default: o = 8'bx;
            endcase   
endmodule