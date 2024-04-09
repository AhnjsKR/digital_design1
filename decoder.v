module decoder(
	input wire [1:0] in,
	output wire [3:0] out
);

	always @(in) begin
		out = 4'b0000;
		case (in)
			2'b00: out[0] = 1'b1;
			2'b01: out[1] = 1'b1;
			2'b10: out[2] = 1'b1;
			2'b11: out[3] = 1'b1;
			default: out = 4'b0000;
		endcase
	end
endmodule