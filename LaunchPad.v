// Reset: SW[9] active high
// Play C Note: KEY[1] active low



module LaunchPad(
	input CLOCK_50,
	input [9:0]SW,
	input [3:0]KEY,

	output	FPGA_I2C_SCLK,	// I2C
	inout	FPGA_I2C_SDAT,	// I2C

	inout	AUD_BCLK,
	inout	AUD_ADCLRCK,
	inout	AUD_DACLRCK,
	output AUD_XCK,
	output AUD_DACDAT
	);

	Audio_Controller AC(
		// Inputs
		.CLOCK_50(CLOCK_50),
		.reset(SW[9]),

		.clear_audio_in_memory(),			// For mic input, ignore for now
		.read_audio_in(),							// For mic input, ignore for now

		.clear_audio_out_memory(clear_audio_out_memory),
		.left_channel_audio_out(audio_out),
		.right_channel_audio_out(audio_out),
		.write_audio_out(write_audio_out),

		.AUD_ADCDAT(),								// For mic input, ignore for now

		// Bidirectionals
		.AUD_BCLK(AUD_BCLK),
		.AUD_ADCLRCK(AUD_ADCLRCK),
		.AUD_DACLRCK(AUD_DACLRCK),

		// Outputs
		.left_channel_audio_in(),			// For mic input, ignore for now
		.right_channel_audio_in(),		// For mic input, ignore for now
		.audio_in_available(),				// For mic input, ignore for now

		.audio_out_allowed(audio_out_allowed),

		.AUD_XCK(AUD_XCK),
		.AUD_DACDAT(AUD_DACDAT),
	);

	avconf u0(
		.CLOCK_50(CLOCK_50),
		.reset(SW[9]),

		.FPGA_I2C_SCLK(FPGA_I2C_SCLK),
		.FPGA_I2C_SDAT(FPGA_I2C_SDAT)
	);


	wire audio_out_allowed = 1'b1;
	wire clear_audio_out_memory, write_audio_out;
	wire signed [31:0] audio_out;

	Wave_Generator WG(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_C(~KEY[1]),
		.clear_audio_out_memory(clear_audio_out_memory),
		.write_audio_out(write_audio_out),
		.audio_out(audio_out),
		);

endmodule

module Wave_Generator(
	input clock,
	input reset,
	input play_C,
	output reg clear_audio_out_memory,
	output reg write_audio_out,
	output audio_out
	);

	localparam AMPLITUDE = 32'd613566756; 			//max 32b / 7
	localparam CYCLES_C = 32'd191570;

	wire signed [31:0] audio_out_C = play_C ? amp_C : 32'b0;
	reg signed [31:0]amp_C;
	reg [31:0] counter_C;

	assign audio_out = audio_out_C;

	always@(posedge clock)	begin

		clear_audio_out_memory <= 1'b0;

		if (reset) begin
			clear_audio_out_memory <= 1'b1;
			write_audio_out <= 1'b0;
			amp_C <= 32'b0;
			counter_C <= CYCLES_C;
			end
		if (play_C) begin
			// Okay thing, make sound plz thx
			write_audio_out <= 1'b1;
			//Every CLOCK_50 counter go down 1
			counter_C <= counter_C - 1'b1;
			// If counter > half, positive amplitude
			if (counter_C > (CYCLES_C / 2)) begin
				amp_C <= AMPLITUDE;
				end
			// If counter < half, negative amplitude
			if (counter_C <= (CYCLES_C / 2)) begin
				amp_C <= -AMPLITUDE;
				end
			// If counter is zero, reset cycles
			if (counter_C == 0) begin
				counter_C <= CYCLES_C;
				end
			end
		if (!play_C && !reset) begin
			clear_audio_out_memory <= 1'b1;
			write_audio_out <= 1'b0;
			end
	end
endmodule
