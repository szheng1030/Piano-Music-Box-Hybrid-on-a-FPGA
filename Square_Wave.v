module Square_Wave(
	input clock,
	input reset,
	input play_note,
	input [31:0]hz,
	output [31:0]audio_out
	);

	localparam AMP_1 = 32'd300000000;
	localparam AMP_2 = 32'd290000000;
	localparam AMP_3 = 32'd280000000;
	localparam AMP_4 = 32'd270000000;
	localparam AMP_5 = 32'd260000000;
	localparam AMP_6 = 32'd250000000;
	localparam AMP_7 = 32'd240000000;
	localparam AMP_8 = 32'd230000000;
	localparam AMP_9 = 32'd225000000;
	localparam AMP_10 = 32'd220000000;

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
			if (counter > (hz / 20 * 19)) begin
				amp <= AMP_1;
				end
			if (counter <= (hz / 20 * 19) && counter > (hz / 20 * 18)) begin
				amp <= AMP_2;
				end
			if (counter <= (hz / 20 * 18) && counter > (hz / 20 * 17)) begin
				amp <= AMP_3;
				end
			if (counter <= (hz / 20 * 17) && counter > (hz / 20 * 16)) begin
				amp <= AMP_4;
				end
			if (counter <= (hz / 20 * 16) && counter > (hz / 20 * 15)) begin
				amp <= AMP_5;
				end
			if (counter <= (hz / 20 * 15) && counter > (hz / 20 * 14)) begin
				amp <= AMP_6;
				end
			if (counter <= (hz / 20 * 14) && counter > (hz / 20 * 13)) begin
				amp <= AMP_7;
				end
			if (counter <= (hz / 20 * 13) && counter > (hz / 20 * 12)) begin
				amp <= AMP_8;
				end
			if (counter <= (hz / 20 * 12) && counter > (hz / 20 * 11)) begin
				amp <= AMP_9;
				end
			if (counter <= (hz / 20 * 11) && counter > (hz / 20 * 10)) begin
				amp <= AMP_10;
				end
			if (counter <= (hz / 20 * 10) && counter > (hz / 20 * 9)) begin
				amp <= -AMP_1;
				end
			if (counter <= (hz / 20 * 9) && counter > (hz / 20 * 8)) begin
				amp <= -AMP_2;
				end
			if (counter <= (hz / 20 * 8) && counter > (hz / 20 * 7)) begin
				amp <= -AMP_3;
				end
			if (counter <= (hz / 20 * 7) && counter > (hz / 20 * 6)) begin
				amp <= -AMP_4;
				end
			if (counter <= (hz / 20 * 6) && counter > (hz / 20 * 5)) begin
				amp <= -AMP_5;
				end
			if (counter <= (hz / 20 * 5) && counter > (hz / 20 * 4)) begin
				amp <= -AMP_6;
				end
			if (counter <= (hz / 20 * 4) && counter > (hz / 20 * 3)) begin
				amp <= -AMP_7;
				end
			if (counter <= (hz / 20 * 3) && counter > (hz / 20 * 2)) begin
				amp <= -AMP_8;
				end
			if (counter <= (hz / 20 * 2) && counter > (hz / 20)) begin
				amp <= -AMP_9;
				end
			if (counter <= (hz / 20)) begin
				amp <= -AMP_10;
				end
			if (counter == 0) begin
				counter <= hz;
				end
		end
	end
endmodule
