module counter4bit(
	output  [3:0]	count,
	input			clk,
	input			reset,
	input			en,
	input			u_d
	);

	reg [3:0] count;

	always @ (posedge clk)
		if (reset == 1'b0) count <= 4'b0000;
		else if (en == 1'b1 && u_d == 1'b1) count <= count + 1'b1;
		else if (en == 1'b1 && u_d == 1'b0) count <= count - 1'b1;
		else count <= count;

endmodule