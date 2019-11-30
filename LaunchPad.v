`timescale 1ns/1ns
module LaunchPad(
	input 			CLOCK_50,
	input  [9:0] 	SW,
	input  [3:0]	KEY,

	output 			FPGA_I2C_SCLK,		// Audio Core - I2C
	inout				FPGA_I2C_SDAT,		// Audio Core - I2C

	inout				AUD_BCLK,			// Audio Core
	inout				AUD_ADCLRCK,		// Audio Core
	inout				AUD_DACLRCK,		// Audio Core
	output 			AUD_XCK,				// Audio Core
	output 			AUD_DACDAT,			// Audio Core

	inout 			PS2_CLK,				// PS2 Core
	inout 			PS2_DAT,				// PS2 Core
	
	output [9:0] LEDR,
	output			VGA_CLK, 			// VGA Core	
	output			VGA_HS,				// VGA Core	
	output			VGA_VS,				// VGA Core	
	output			VGA_BLANK_N,		// VGA Core	
	output			VGA_SYNC_N,			// VGA Core	
	output [7:0]	VGA_R,				// VGA Core	
	output [7:0]	VGA_G,				// VGA Core	
	output [7:0]	VGA_B					// VGA Core	
	);

	Audio_Controller AC(
		// Inputs
		.CLOCK_50(CLOCK_50),
		.reset(SW[9]),

		.clear_audio_in_memory(),				// For mic input
		.read_audio_in(),							// For mic input

		.clear_audio_out_memory(clear_audio_out_memory),
		.left_channel_audio_out(audio_out),
		.right_channel_audio_out(audio_out),
		.write_audio_out(write_audio_out),

		.AUD_ADCDAT(),								// For mic input

		// Bidirectionals
		.AUD_BCLK(AUD_BCLK),
		.AUD_ADCLRCK(AUD_ADCLRCK),
		.AUD_DACLRCK(AUD_DACLRCK),

		// Outputs
		.left_channel_audio_in(),				// For mic input
		.right_channel_audio_in(),				// For mic input
		.audio_in_available(),					// For mic input

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

	vga_adapter VGA(
		.resetn(!SW[9]),
		.clock(CLOCK_50),
		.colour(colour),
		.x(x),
		.y(y),
		.plot(writeEn),
		.VGA_R(VGA_R),
		.VGA_G(VGA_G),
		.VGA_B(VGA_B),
		.VGA_HS(VGA_HS),
		.VGA_VS(VGA_VS),
		.VGA_BLANK(VGA_BLANK_N),
		.VGA_SYNC(VGA_SYNC_N),
		.VGA_CLK(VGA_CLK)
		);
		
	defparam VGA.RESOLUTION = "160x120";
	defparam VGA.MONOCHROME = "FALSE";
	defparam VGA.BITS_PER_COLOUR_CHANNEL = 8;
	defparam VGA.BACKGROUND_IMAGE = "black.mif";
	
	wire [6:0] r1, r2;
	wire [7:0] x;
	wire [6:0] y;
	wire [23:0] colour;
	wire writeEn;

	circle_radius c1(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.FW_1C(FW_1C),
		.FW_1Df(FW_1Df),
		.FW_1D(FW_1D),
		.FW_1Ef(FW_1Ef),
		.FW_1E(FW_1E),
		.FW_1F(FW_1F),
		.FW_1Gf(FW_1Gf),
		.FW_1G(FW_1G),
		.FW_1Af(FW_1Af),
		.FW_1A(FW_1A),
		.FW_1Bf(FW_1Bf),
		.FW_1B(FW_1B),					
		.FW_C(FW_C),
		.FW_Df(FW_Df),
		.FW_D(FW_D),
		.FW_Ef(FW_Ef),
		.FW_E(FW_E),
		.FW_F(FW_F),
		.FW_Gf(FW_Gf),
		.FW_G(FW_G),
		.FW_Af(FW_Af),
		.FW_A(FW_A),
		.FW_Bf(FW_Bf),
		.FW_B(FW_B),	
		.FW_C1(FW_C1),
		.FW_D1f(FW_D1f),
		.FW_D1(FW_D1),
		.FW_E1f(FW_E1f),
		.FW_E1(FW_E1),
		.FW_F1(FW_F1),
		.FW_G1f(FW_G1f),
		.FW_G1(FW_G1),
		.FW_A1f(FW_A1f),
		.FW_A1(FW_A1),
		.FW_B1f(FW_B1f),
		.FW_B1(FW_B1),
		.FW_C2(FW_C2),
		.FW_D2f(FW_D2f),
		.FW_D2(FW_D2),
		.FW_E2f(FW_E2f),
		.FW_E2(FW_E2),
		.FW_F2(FW_F2),
		.new_r1(r1[6:0]),
		.new_r2(r2[6:0])
		);

	plotdata p0(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.radius1(r1[6:0]),
		.radius2(r2[6:0]),
		.x(x[7:0]),
		.y(y[6:0]),
		.c(colour[23:0]),
		.plotEn(writeEn)
		);
		
	wire signed [31:0] audio_out_FW;

	wire audio_out_allowed = 1'b1;
	wire clear_audio_out_memory;
	wire write_audio_out;
	wire signed [31:0] audio_out = audio_out_FW;

	assign clear_audio_out_memory = ~|audio_out;
	assign write_audio_out = |audio_out;
	
	wire FW_1C, FW_1D, FW_1E, FW_1F, FW_1G, FW_1A, FW_1B;
	wire FW_1Df, FW_1Ef, FW_1Gf, FW_1Af, FW_1Bf;
	wire FW_C, FW_D, FW_E, FW_F, FW_G, FW_A, FW_B;
	wire FW_Df, FW_Ef, FW_Gf, FW_Af, FW_Bf;
	wire FW_C1, FW_D1, FW_E1, FW_F1, FW_G1, FW_A1, FW_B1;
	wire FW_D1f, FW_E1f, FW_G1f, FW_A1f, FW_B1f;
	wire FW_C2, FW_D2, FW_E2, FW_F2;
	wire FW_D2f, FW_E2f;

	wire second_wotw;
	wire second_juss;
	
	wire [1:0] song;
	

	Metronome M(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.second_wotw(second_wotw),
		.second_juss(second_juss)
		);
	
	Play_Song PS(
		.clock(CLOCK_50),
		.reset(SW[9]),
	
		.PS2_CLK(PS2_CLK),
		.PS2_DAT(PS2_DAT),
		
		.second_wotw(second_wotw),
		.second_juss(second_juss),
		.song(song),
		.LEDR(LEDR[9:0]),
		
		.FW_1C(FW_1C),
		.FW_1Df(FW_1Df),
		.FW_1D(FW_1D),
		.FW_1Ef(FW_1Ef),
		.FW_1E(FW_1E),
		.FW_1F(FW_1F),
		.FW_1Gf(FW_1Gf),
		.FW_1G(FW_1G),
		.FW_1Af(FW_1Af),
		.FW_1A(FW_1A),
		.FW_1Bf(FW_1Bf),
		.FW_1B(FW_1B),
		
		.FW_C(FW_C),
		.FW_Df(FW_Df),
		.FW_D(FW_D),
		.FW_Ef(FW_Ef),
		.FW_E(FW_E),
		.FW_F(FW_F),
		.FW_Gf(FW_Gf),
		.FW_G(FW_G),
		.FW_Af(FW_Af),
		.FW_A(FW_A),
		.FW_Bf(FW_Bf),
		.FW_B(FW_B),
		
		.FW_C1(FW_C1),
		.FW_D1f(FW_D1f),
		.FW_D1(FW_D1),
		.FW_E1f(FW_E1f),
		.FW_E1(FW_E1),
		.FW_F1(FW_F1),
		.FW_G1f(FW_G1f),
		.FW_G1(FW_G1),
		.FW_A1f(FW_A1f),
		.FW_A1(FW_A1),
		.FW_B1f(FW_B1f),
		.FW_B1(FW_B1),
		
		.FW_C2(FW_C2),
		.FW_D2f(FW_D2f),
		.FW_D2(FW_D2),
		.FW_E2f(FW_E2f),
		.FW_E2(FW_E2),
		.FW_F2(FW_F2)
	);
	
	
	Flat_Wave_Control FWC(
		.clock(CLOCK_50),
		.reset(SW[9]),
		
		.FW_1C(FW_1C),
		.FW_1Df(FW_1Df),
		.FW_1D(FW_1D),
		.FW_1Ef(FW_1Ef),
		.FW_1E(FW_1E),
		.FW_1F(FW_1F),
		.FW_1Gf(FW_1Gf),
		.FW_1G(FW_1G),
		.FW_1Af(FW_1Af),
		.FW_1A(FW_1A),
		.FW_1Bf(FW_1Bf),
		.FW_1B(FW_1B),
		
		.FW_C(FW_C),
		.FW_Df(FW_Df),
		.FW_D(FW_D),
		.FW_Ef(FW_Ef),
		.FW_E(FW_E),
		.FW_F(FW_F),
		.FW_Gf(FW_Gf),
		.FW_G(FW_G),
		.FW_Af(FW_Af),
		.FW_A(FW_A),
		.FW_Bf(FW_Bf),
		.FW_B(FW_B),
		
		.FW_C1(FW_C1),
		.FW_D1f(FW_D1f),
		.FW_D1(FW_D1),
		.FW_E1f(FW_E1f),
		.FW_E1(FW_E1),
		.FW_F1(FW_F1),
		.FW_G1f(FW_G1f),
		.FW_G1(FW_G1),
		.FW_A1f(FW_A1f),
		.FW_A1(FW_A1),
		.FW_B1f(FW_B1f),
		.FW_B1(FW_B1),
		
		.FW_C2(FW_C2),
		.FW_D2f(FW_D2f),
		.FW_D2(FW_D2),
		.FW_E2f(FW_E2f),
		.FW_E2(FW_E2),
		.FW_F2(FW_F2),		

		.FW_OUTPUT(audio_out_FW[31:0])
	);
	
endmodule
