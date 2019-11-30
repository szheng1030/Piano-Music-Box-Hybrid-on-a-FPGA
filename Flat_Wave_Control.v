module Flat_Wave_Control(
	input clock,
	input reset,
	
	input FW_1C,
	input FW_1Df,
	input FW_1D,
	input FW_1Ef,
	input FW_1E,
	input FW_1F,
	input FW_1Gf,
	input FW_1G,
	input FW_1Af,
	input FW_1A,
	input FW_1Bf,
	input FW_1B,
	
	input FW_C,
	input FW_Df,
	input FW_D,
	input FW_Ef,
	input FW_E,
	input FW_F,
	input FW_Gf,
	input FW_G,
	input FW_Af,
	input FW_A,
	input FW_Bf,
	input FW_B,

	input FW_C1,
	input FW_D1f,
	input FW_D1,
	input FW_E1f,
	input FW_E1,
	input FW_F1,
	input FW_G1f,
	input FW_G1,
	input FW_A1f,
	input FW_A1,
	input FW_B1f,
	input FW_B1,
	
	input FW_C2,
	input FW_D2f,
	input FW_D2,
	input FW_E2f,
	input FW_E2,
	input FW_F2,
	
	output [31:0]FW_OUTPUT
	);
	
	
	
	/////////////////////////////
	//		Freq for Each Note	//
	/////////////////////////////
	
	parameter HZ_1C	= 32'd382234;		// Low
	parameter HZ_1Df	= 32'd360776;
	parameter HZ_1D 	= 32'd340529;
	parameter HZ_1Ef 	= 32'd321419;
	parameter HZ_1E 	= 32'd303380;
	parameter HZ_1F 	= 32'd286352;
	parameter HZ_1Gf 	= 32'd270270;
	parameter HZ_1G 	= 32'd255102;
	parameter HZ_1Af 	= 32'd240790;
	parameter HZ_1A 	= 32'd227272;
	parameter HZ_1Bf 	= 32'd214519;
	parameter HZ_1B 	= 32'd202478;
	
	parameter HZ_C 	= 32'd191109;		// Mid
	parameter HZ_Df	= 32'd180388;
	parameter HZ_D 	= 32'd170265;
	parameter HZ_Ef	= 32'd160705;
	parameter HZ_E 	= 32'd151685;		
	parameter HZ_F 	= 32'd143172;
	parameter HZ_Gf 	= 32'd135139;
	parameter HZ_G 	= 32'd127551;
	parameter HZ_Af 	= 32'd120394;
	parameter HZ_A 	= 32'd113636;
	parameter HZ_Bf 	= 32'd107259;
	parameter HZ_B 	= 32'd101239;
	
	parameter HZ_C1 	= 32'd95556;		// High
	parameter HZ_D1f 	= 32'd90192;
	parameter HZ_D1 	= 32'd85131;
	parameter HZ_E1f 	= 32'd80354;
	parameter HZ_E1 	= 32'd75844;
	parameter HZ_F1 	= 32'd71586;
	parameter HZ_G1f 	= 32'd67568;
	parameter HZ_G1 	= 32'd63776;
	parameter HZ_A1f 	= 32'd60197;
	parameter HZ_A1 	= 32'd56818;
	parameter HZ_B1f 	= 32'd53629;
	parameter HZ_B1 	= 32'd50619;
	
	parameter HZ_C2 	= 32'd47778;		// DHigh
	parameter HZ_D2f 	= 32'd45097;
	parameter HZ_D2 	= 32'd42566;
	parameter HZ_E2f 	= 32'd40176;
	parameter HZ_E2 	= 32'd37922;
	parameter HZ_F2 	= 32'd35793;
	
	
	
	///////////////////////////////////
	//		Output Wire for Each Note	//
	///////////////////////////////////

	wire signed [31:0] audio_out_1C;		// Low
	wire signed [31:0] audio_out_1Df;
	wire signed [31:0] audio_out_1D;
	wire signed [31:0] audio_out_1Ef;
	wire signed [31:0] audio_out_1E;
	wire signed [31:0] audio_out_1F;
	wire signed [31:0] audio_out_1Gf;
	wire signed [31:0] audio_out_1G;
	wire signed [31:0] audio_out_1Af;
	wire signed [31:0] audio_out_1A;
	wire signed [31:0] audio_out_1Bf;
	wire signed [31:0] audio_out_1B;
	
	wire signed [31:0] audio_out_C;		// Mid
	wire signed [31:0] audio_out_Df;
	wire signed [31:0] audio_out_D;
	wire signed [31:0] audio_out_Ef;
	wire signed [31:0] audio_out_E;
	wire signed [31:0] audio_out_F;
	wire signed [31:0] audio_out_Gf;
	wire signed [31:0] audio_out_G;
	wire signed [31:0] audio_out_Af;
	wire signed [31:0] audio_out_A;
	wire signed [31:0] audio_out_Bf;
	wire signed [31:0] audio_out_B;
	
	wire signed [31:0] audio_out_C1;		// High
	wire signed [31:0] audio_out_D1f;
	wire signed [31:0] audio_out_D1;
	wire signed [31:0] audio_out_E1f;
	wire signed [31:0] audio_out_E1;
	wire signed [31:0] audio_out_F1;
	wire signed [31:0] audio_out_G1f;
	wire signed [31:0] audio_out_G1;
	wire signed [31:0] audio_out_A1f;
	wire signed [31:0] audio_out_A1;
	wire signed [31:0] audio_out_B1f;
	wire signed [31:0] audio_out_B1;
	
	wire signed [31:0] audio_out_C2;		// DHigh
	wire signed [31:0] audio_out_D2f;
	wire signed [31:0] audio_out_D2;
	wire signed [31:0] audio_out_E2f;
	wire signed [31:0] audio_out_E2;
	wire signed [31:0] audio_out_F2;
	
	
	
	///////////////////////////////////
	//		Output Sum of All Wires		//
	///////////////////////////////////
	
	assign FW_OUTPUT = 	audio_out_1C + audio_out_1D +  audio_out_1E + audio_out_1F + audio_out_1G + audio_out_1A + audio_out_1B +	// Low
								audio_out_1Df +  audio_out_1Ef + audio_out_1Gf + audio_out_1Af + audio_out_1Bf +										// Low_Flat
								audio_out_C + audio_out_D +  audio_out_E + audio_out_F + audio_out_G + audio_out_A + audio_out_B +				// Mid
								audio_out_Df +  audio_out_Ef + audio_out_Gf + audio_out_Af + audio_out_Bf +											// Mid_Flat
								audio_out_C1 + audio_out_D1 +  audio_out_E1 + audio_out_F1 + audio_out_G1 + audio_out_A1 + audio_out_B1 +	// High
								audio_out_D1f +  audio_out_E1f + audio_out_G1f + audio_out_A1f + audio_out_B1f +										// High_Flat
								audio_out_C2 + audio_out_D2 + audio_out_E2 + audio_out_F2 +																	// DHigh
								audio_out_D2f + audio_out_E2f;																										// DHigh_Flat
	

	
	///////////////////////////////////
	//		Generator for Each Note		//
	///////////////////////////////////

	
	Flat_Wave FW1C(									//////////	Low	//////////
		.clock(clock),
		.reset(reset),
		.play_note(FW_1C),
		.hz(HZ_1C[31:0]),
		.audio_out(audio_out_1C[31:0])
		);
		
	Flat_Wave FW1Df(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1Df),
		.hz(HZ_1Df[31:0]),
		.audio_out(audio_out_1Df[31:0])
		);
		
	Flat_Wave FW1D(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1D),
		.hz(HZ_1D[31:0]),
		.audio_out(audio_out_1D[31:0])
		);
		
	Flat_Wave FW1Ef(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1Ef),
		.hz(HZ_1Ef[31:0]),
		.audio_out(audio_out_1Ef[31:0])
		);
	
	Flat_Wave FW1E(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1E),
		.hz(HZ_1E[31:0]),
		.audio_out(audio_out_1E[31:0])
		);
	
	Flat_Wave FW1F(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1F),
		.hz(HZ_1F[31:0]),
		.audio_out(audio_out_1F[31:0])
		);
		
	Flat_Wave FW1Gf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1Gf),
		.hz(HZ_1Gf[31:0]),
		.audio_out(audio_out_1Gf[31:0])
		);
	
	Flat_Wave FW1G(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1G),
		.hz(HZ_1G[31:0]),
		.audio_out(audio_out_1G[31:0])
		);
		
	Flat_Wave FW1Af(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1Af),
		.hz(HZ_1Af[31:0]),
		.audio_out(audio_out_1Af[31:0])
		);
	
	Flat_Wave FW1A(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1A),
		.hz(HZ_1A[31:0]),
		.audio_out(audio_out_1A[31:0])
		);
		
	Flat_Wave FW1Bf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1Bf),
		.hz(HZ_1Bf[31:0]),
		.audio_out(audio_out_1Bf[31:0])
		);
	
	Flat_Wave FW1B(
		.clock(clock),
		.reset(reset),
		.play_note(FW_1B),
		.hz(HZ_1B[31:0]),
		.audio_out(audio_out_1B[31:0])
		);
		
		
	
	Flat_Wave FWC(										//////////	Mid	//////////
		.clock(clock),
		.reset(reset),
		.play_note(FW_C),
		.hz(HZ_C[31:0]),
		.audio_out(audio_out_C[31:0])
		);
		
	Flat_Wave FWDf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_Df),
		.hz(HZ_Df[31:0]),
		.audio_out(audio_out_Df[31:0])
		);
		
	Flat_Wave FWD(
		.clock(clock),
		.reset(reset),
		.play_note(FW_D),
		.hz(HZ_D[31:0]),
		.audio_out(audio_out_D[31:0])
		);
		
	Flat_Wave FWEf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_Ef),
		.hz(HZ_Ef[31:0]),
		.audio_out(audio_out_Ef[31:0])
		);
	
	Flat_Wave FWE(
		.clock(clock),
		.reset(reset),
		.play_note(FW_E),
		.hz(HZ_E[31:0]),
		.audio_out(audio_out_E[31:0])
		);
	
	Flat_Wave FWF(
		.clock(clock),
		.reset(reset),
		.play_note(FW_F),
		.hz(HZ_F[31:0]),
		.audio_out(audio_out_F[31:0])
		);
		
	Flat_Wave FWGf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_Gf),
		.hz(HZ_Gf[31:0]),
		.audio_out(audio_out_Gf[31:0])
		);
	
	Flat_Wave FWG(
		.clock(clock),
		.reset(reset),
		.play_note(FW_G),
		.hz(HZ_G[31:0]),
		.audio_out(audio_out_G[31:0])
		);
		
	Flat_Wave FWAf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_Af),
		.hz(HZ_Af[31:0]),
		.audio_out(audio_out_Af[31:0])
		);
	
	Flat_Wave FWA(
		.clock(clock),
		.reset(reset),
		.play_note(FW_A),
		.hz(HZ_A[31:0]),
		.audio_out(audio_out_A[31:0])
		);
		
	Flat_Wave FWBf(
		.clock(clock),
		.reset(reset),
		.play_note(FW_Bf),
		.hz(HZ_Bf[31:0]),
		.audio_out(audio_out_Bf[31:0])
		);
	
	Flat_Wave FWB(
		.clock(clock),
		.reset(reset),
		.play_note(FW_B),
		.hz(HZ_B[31:0]),
		.audio_out(audio_out_B[31:0])
		);
		
		
	
	Flat_Wave FWC1(									//////////	High	//////////
		.clock(clock),
		.reset(reset),
		.play_note(FW_C1),
		.hz(HZ_C1[31:0]),
		.audio_out(audio_out_C1[31:0])
		);
		
	Flat_Wave FWD1f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_D1f),
		.hz(HZ_D1f[31:0]),
		.audio_out(audio_out_D1f[31:0])
		);
		
	Flat_Wave FWD1(
		.clock(clock),
		.reset(reset),
		.play_note(FW_D1),
		.hz(HZ_D1[31:0]),
		.audio_out(audio_out_D1[31:0])
		);
		
	Flat_Wave FWE1f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_E1f),
		.hz(HZ_E1f[31:0]),
		.audio_out(audio_out_E1f[31:0])
		);
	
	Flat_Wave FWE1(
		.clock(clock),
		.reset(reset),
		.play_note(FW_E1),
		.hz(HZ_E1[31:0]),
		.audio_out(audio_out_E1[31:0])
		);
	
	Flat_Wave FWF1(
		.clock(clock),
		.reset(reset),
		.play_note(FW_F1),
		.hz(HZ_F1[31:0]),
		.audio_out(audio_out_F1[31:0])
		);
		
	Flat_Wave FWG1f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_G1f),
		.hz(HZ_G1f[31:0]),
		.audio_out(audio_out_G1f[31:0])
		);
	
	Flat_Wave FWG1(
		.clock(clock),
		.reset(reset),
		.play_note(FW_G1),
		.hz(HZ_G1[31:0]),
		.audio_out(audio_out_G1[31:0])
		);
		
	Flat_Wave FWA1f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_A1f),
		.hz(HZ_A1f[31:0]),
		.audio_out(audio_out_A1f[31:0])
		);
	
	Flat_Wave FWA1(
		.clock(clock),
		.reset(reset),
		.play_note(FW_A1),
		.hz(HZ_A1[31:0]),
		.audio_out(audio_out_A1[31:0])
		);
	
	Flat_Wave FWB1f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_B1f),
		.hz(HZ_B1f[31:0]),
		.audio_out(audio_out_B1f[31:0])
		);
	
	Flat_Wave FWB1(
		.clock(clock),
		.reset(reset),
		.play_note(FW_B1),
		.hz(HZ_B1[31:0]),
		.audio_out(audio_out_B1[31:0])
		);
		
		
		
	Flat_Wave FWC2(									//////////	DHigh	//////////
		.clock(clock),
		.reset(reset),
		.play_note(FW_C2),
		.hz(HZ_C2[31:0]),
		.audio_out(audio_out_C2[31:0])
		);	
		
	Flat_Wave FWD2f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_D2f),
		.hz(HZ_D2f[31:0]),
		.audio_out(audio_out_D2f[31:0])
		);
		
	Flat_Wave FWD2(
		.clock(clock),
		.reset(reset),
		.play_note(FW_D2),
		.hz(HZ_D2[31:0]),
		.audio_out(audio_out_D2[31:0])
		);
		
	Flat_Wave FWE2f(
		.clock(clock),
		.reset(reset),
		.play_note(FW_E2f),
		.hz(HZ_E2f[31:0]),
		.audio_out(audio_out_E2f[31:0])
		);
		
	Flat_Wave FWE2(
		.clock(clock),
		.reset(reset),
		.play_note(FW_E2),
		.hz(HZ_E2[31:0]),
		.audio_out(audio_out_E2[31:0])
		);
		
	Flat_Wave FWF2(
		.clock(clock),
		.reset(reset),
		.play_note(FW_F2),
		.hz(HZ_F2[31:0]),
		.audio_out(audio_out_F2[31:0])
		);
	
endmodule
