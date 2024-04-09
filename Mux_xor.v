module xor_Mux(
	input wire A, 
	input wire B,
	output wire F
);

wire[3:0]mux_inputs;
assign mux_inputs = 4'b0110;

wire [1:0] signals;
assign signals = {A, B};

assign F = mux_inputs[signals];

endmodule
