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
		.AUD_DACDAT(AUD_DACDAT)
	);

	avconf u0(
		.CLOCK_50(CLOCK_50),
		.reset(SW[9]),

		.FPGA_I2C_SCLK(FPGA_I2C_SCLK),
		.FPGA_I2C_SDAT(FPGA_I2C_SDAT)
	);

	
	parameter HZ_C = 32'd191109; 		//191109.58
	parameter HZ_D = 32'd170265;		//170264.93
	parameter HZ_E = 32'd151685;		//151685.22
	parameter HZ_F = 32'd143172;		//143172.12
	parameter HZ_G = 32'd127551;		//127551.02
	parameter HZ_A = 32'd113636;		//113636.36
	parameter HZ_B = 32'd101239;		//101239.17
	parameter HZ_CC = 32'd95556;		//95556.62
	
	wire signed [31:0] audio_out_C;
	wire signed [31:0] audio_out_D;
	wire signed [31:0] audio_out_E;
	wire signed [31:0] audio_out_F;
	wire signed [31:0] audio_out_G;
	wire signed [31:0] audio_out_A;
	wire signed [31:0] audio_out_B;
	wire signed [31:0] audio_out_CC;

	wire audio_out_allowed = 1'b1;
	wire clear_audio_out_memory;
	wire write_audio_out;
	wire signed [31:0] audio_out = audio_out_C + audio_out_D + audio_out_E + audio_out_F
												+ audio_out_G + audio_out_A + audio_out_B + audio_out_CC;
												
	assign clear_audio_out_memory = ~|audio_out;
	assign write_audio_out = |audio_out;
	
	Wave_Generator WG_C(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[0]),
		.hz(HZ_C[31:0]),
		.audio_out(audio_out_C[31:0])
		);
		
	Wave_Generator WG_D(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[1]),
		.hz(HZ_D[31:0]),
		.audio_out(audio_out_D[31:0])
		);
	
	Wave_Generator WG_E(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[2]),
		.hz(HZ_E[31:0]),
		.audio_out(audio_out_E[31:0])
		);
		
	Wave_Generator WG_F(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[3]),
		.hz(HZ_F[31:0]),
		.audio_out(audio_out_F[31:0])
		);
		
	Wave_Generator WG_G(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[4]),
		.hz(HZ_G[31:0]),
		.audio_out(audio_out_G[31:0])
		);
		
	Wave_Generator WG_A(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[5]),
		.hz(HZ_A[31:0]),
		.audio_out(audio_out_A[31:0])
		);
		
	Wave_Generator WG_B(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[6]),
		.hz(HZ_B[31:0]),
		.audio_out(audio_out_B[31:0])
		);
		
		
	Wave_Generator WG_CC(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.play_note(SW[7]),
		.hz(HZ_CC[31:0]),
		.audio_out(audio_out_CC[31:0])
		);

endmodule

module Wave_Generator(
	input clock,
	input reset,
	input play_note,
	input [31:0]hz,
	output [31:0]audio_out
	);
	
	localparam AMPLITUDE = 32'd300000000;		//536870911.9
	
	reg signed [31:0]amp;
	
	reg [31:0] counter;
	
	assign audio_out[31:0] = play_note ? amp : 32'b0;

	always@(posedge clock)	begin

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
