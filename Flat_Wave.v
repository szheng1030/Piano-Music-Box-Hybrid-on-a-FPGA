module Flat_Wave(
	input clock,
	input reset,
	input play_note,
	input [31:0]hz,
	output [31:0]audio_out
	);
	
	localparam AMPLITUDE = 32'd200000000;
	
	reg signed [31:0]amp;
	reg [31:0] counter;
	assign audio_out[31:0] = play_note ? amp : 32'b0;

	always@(posedge clock)begin

		if (reset) begin
			amp <= 32'b0;
			counter <= hz;
			end
		if (play_note) begin
			counter <= counter - 1'b1;
			if (counter > (hz / 2)) begin
				amp <= AMPLITUDE;
				end
			if (counter <= (hz / 2)) begin
				amp <= -AMPLITUDE;
				end
			if (counter == 0) begin
				counter <= hz;
				end
		end
	end
endmodule
