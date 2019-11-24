module Square_Wave_Control(
	input clock,
	input reset,
	input SW_1C,
	input SW_1D,
	input SW_1E,
	input SW_1F,
	input SW_1G,
	input SW_1A,
	input SW_1B,
	input SW_C,
	input SW_D,
	input SW_E,
	input SW_F,
	input SW_G,
	input SW_A,
	input SW_B,
	input SW_C1,
	input SW_D1,
	input SW_E1,
	input SW_F1,
	input SW_G1,
	input SW_A1,
	input SW_B1,
	output [31:0]SW_OUTPUT
	);
	
	parameter HZ_1C = 32'd382234;
	parameter HZ_1D = 32'd360776;
	parameter HZ_1E = 32'd303380;
	parameter HZ_1F = 32'd286352;
	parameter HZ_1G = 32'd255102;
	parameter HZ_1A = 32'd227272;
	parameter HZ_1B = 32'd202478;
	parameter HZ_C = 32'd191109; 		//191109.58
	parameter HZ_D = 32'd170265;		//170264.93
	parameter HZ_E = 32'd151685;		//151685.22
	parameter HZ_F = 32'd143172;		//143172.12
	parameter HZ_G = 32'd127551;		//127551.02
	parameter HZ_A = 32'd113636;		//113636.36
	parameter HZ_B = 32'd101239;		//101239.17
	parameter HZ_C1 = 32'd95556;		//95556.62
	parameter HZ_D1 = 32'd85131;
	parameter HZ_E1 = 32'd75844;
	parameter HZ_F1 = 32'd71586;
	parameter HZ_G1 = 32'd63776;
	parameter HZ_A1 = 32'd56818;
	parameter HZ_B1 = 32'd50619;
	
	wire signed [31:0] audio_out_1C;
	wire signed [31:0] audio_out_1D;
	wire signed [31:0] audio_out_1E;
	wire signed [31:0] audio_out_1F;
	wire signed [31:0] audio_out_1G;
	wire signed [31:0] audio_out_1A;
	wire signed [31:0] audio_out_1B;
	wire signed [31:0] audio_out_C;
	wire signed [31:0] audio_out_D;
	wire signed [31:0] audio_out_E;
	wire signed [31:0] audio_out_F;
	wire signed [31:0] audio_out_G;
	wire signed [31:0] audio_out_A;
	wire signed [31:0] audio_out_B;
	wire signed [31:0] audio_out_C1;
	wire signed [31:0] audio_out_D1;
	wire signed [31:0] audio_out_E1;
	wire signed [31:0] audio_out_F1;
	wire signed [31:0] audio_out_G1;
	wire signed [31:0] audio_out_A1;
	wire signed [31:0] audio_out_B1;
	
	assign SW_OUTPUT = audio_out_1C + audio_out_1D +  audio_out_1E + audio_out_1F + audio_out_1G + audio_out_1A + audio_out_1B +
								audio_out_C + audio_out_D +  audio_out_E + audio_out_F + audio_out_G + audio_out_A + audio_out_B +
								audio_out_C1 + audio_out_D1 +  audio_out_E1 + audio_out_F1 + audio_out_G1 + audio_out_A1 + audio_out_B1;
								
	Square_Wave SW1C(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1C),
		.hz(HZ_1C[31:0]),
		.audio_out(audio_out_1C[31:0])
		);
		
	Square_Wave SW1D(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1D),
		.hz(HZ_1D[31:0]),
		.audio_out(audio_out_1D[31:0])
		);
	
	Square_Wave SW1E(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1E),
		.hz(HZ_1E[31:0]),
		.audio_out(audio_out_1E[31:0])
		);
	
	Square_Wave SW1F(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1F),
		.hz(HZ_1F[31:0]),
		.audio_out(audio_out_1F[31:0])
		);
	
	Square_Wave SW1G(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1G),
		.hz(HZ_1G[31:0]),
		.audio_out(audio_out_1G[31:0])
		);
	
	Square_Wave SW1A(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1A),
		.hz(HZ_1A[31:0]),
		.audio_out(audio_out_1A[31:0])
		);
	
	Square_Wave SW1B(
		.clock(clock),
		.reset(reset),
		.play_note(SW_1B),
		.hz(HZ_1B[31:0]),
		.audio_out(audio_out_1B[31:0])
		);
	
	Square_Wave SWC(
		.clock(clock),
		.reset(reset),
		.play_note(SW_C),
		.hz(HZ_C[31:0]),
		.audio_out(audio_out_C[31:0])
		);
		
	Square_Wave SWD(
		.clock(clock),
		.reset(reset),
		.play_note(SW_D),
		.hz(HZ_D[31:0]),
		.audio_out(audio_out_D[31:0])
		);
	
	Square_Wave SWE(
		.clock(clock),
		.reset(reset),
		.play_note(SW_E),
		.hz(HZ_E[31:0]),
		.audio_out(audio_out_E[31:0])
		);
	
	Square_Wave SWF(
		.clock(clock),
		.reset(reset),
		.play_note(SW_F),
		.hz(HZ_F[31:0]),
		.audio_out(audio_out_F[31:0])
		);
	
	Square_Wave SWG(
		.clock(clock),
		.reset(reset),
		.play_note(SW_G),
		.hz(HZ_G[31:0]),
		.audio_out(audio_out_G[31:0])
		);
	
	Square_Wave SWA(
		.clock(clock),
		.reset(reset),
		.play_note(SW_A),
		.hz(HZ_A[31:0]),
		.audio_out(audio_out_A[31:0])
		);
	
	Square_Wave SWB(
		.clock(clock),
		.reset(reset),
		.play_note(SW_B),
		.hz(HZ_B[31:0]),
		.audio_out(audio_out_B[31:0])
		);
	
	Square_Wave SWC1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_C1),
		.hz(HZ_C1[31:0]),
		.audio_out(audio_out_C1[31:0])
		);
		
	Square_Wave SWD1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_D1),
		.hz(HZ_D1[31:0]),
		.audio_out(audio_out_D1[31:0])
		);
	
	Square_Wave SWE1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_E1),
		.hz(HZ_E1[31:0]),
		.audio_out(audio_out_E1[31:0])
		);
	
	Square_Wave SWF1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_F1),
		.hz(HZ_F1[31:0]),
		.audio_out(audio_out_F1[31:0])
		);
	
	Square_Wave SWG1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_G1),
		.hz(HZ_G1[31:0]),
		.audio_out(audio_out_G1[31:0])
		);
	
	Square_Wave SWA1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_A1),
		.hz(HZ_A1[31:0]),
		.audio_out(audio_out_A1[31:0])
		);
	
	Square_Wave SWB1(
		.clock(clock),
		.reset(reset),
		.play_note(SW_B1),
		.hz(HZ_B1[31:0]),
		.audio_out(audio_out_B1[31:0])
		);
	
endmodule