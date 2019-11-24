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
	output AUD_DACDAT,
	
	output [9:0]LEDR
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

	wire signed [31:0] audio_out_SW;
	//wire signed [31:0] audio_out_TW;
	//wire signed [31:0] audio_out_FW;

	wire audio_out_allowed = 1'b1;
	wire clear_audio_out_memory;
	wire write_audio_out;
	wire signed [31:0] audio_out = audio_out_SW;

	assign clear_audio_out_memory = ~|audio_out;
	assign write_audio_out = |audio_out;
	
	reg SW_1C, SW_1D, SW_1E, SW_1F, SW_1G, SW_1A, SW_1B;
	reg SW_C,  SW_D,  SW_E,  SW_F,  SW_G,  SW_A,  SW_B;
	reg SW_C1, SW_D1, SW_E1, SW_F1, SW_G1, SW_A1, SW_B1;
	
	wire [31:0] second_32;
	
	Thirty_Second_Counter TSC(
		.clock(CLOCK_50),
		.reset(SW[9]),
		.start(SW[0]),
		.second_32(second_32)
	);
	
	reg [15:0] measure;
	
	always@(posedge CLOCK_50) begin
		if (SW[9]) begin
			SW_1C <= 1'b0;
			SW_1D <= 1'b0;
			SW_1E <= 1'b0;
			SW_1F <= 1'b0;
			SW_1G <= 1'b0;
			SW_1A <= 1'b0;
			SW_1B <= 1'b0;
			SW_C <= 1'b0;
			SW_D <= 1'b0;
			SW_E <= 1'b0;
			SW_F <= 1'b0;
			SW_G <= 1'b0;
			SW_A <= 1'b0;
			SW_B <= 1'b0;
			SW_C1 <= 1'b0;
			SW_D1 <= 1'b0;
			SW_E1 <= 1'b0;
			SW_F1 <= 1'b0;
			SW_G1 <= 1'b0;
			SW_A1 <= 1'b0;
			SW_B1 <= 1'b0;
			measure <= 1'b0;
			end
		if (SW[1]) begin
			if (second_32 == 1'b1) begin									// measure counter
				measure <= measure + 1'b1;
				end
				
//////////////////////////////////////////////////////////////
//                  WEIGHT OF THE WORLD							//
//////////////////////////////////////////////////////////////

			if (second_32 == 1'b1 && measure == 8'd1) begin			// 1 - 1
				SW_A 	<= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd5) begin
				SW_A 	<= 1'b0;
				SW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd7) begin
				SW_E1	<= 1'b0;
				SW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd11) begin
				SW_D1	<= 1'b0;
				SW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd15) begin
				SW_F1	<= 1'b0;
				SW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd19) begin
				SW_A	<= 1'b0;
				SW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd21) begin
				SW_E1	<= 1'b0;
				SW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd23) begin
				SW_D1	<= 1'b0;
				SW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd31) begin
				SW_F1	<= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 8'd33) begin			// 2 - 33
				SW_A 	<= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd37) begin
				SW_A 	<= 1'b0;
				SW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd39) begin
				SW_E1	<= 1'b0;
				SW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd43) begin
				SW_D1	<= 1'b0;
				SW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd47) begin
				SW_F1	<= 1'b0;
				SW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd51) begin
				SW_A	<= 1'b0;
				SW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd53) begin
				SW_E1	<= 1'b0;
				SW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd55) begin
				SW_D1	<= 1'b0;
				SW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 8'd63) begin
				SW_G1	<= 1'b0;
				end
			end
		end
				
				
	Square_Wave_Control SWC(
		.clock(CLOCK_50),
		.reset(reset),
		.SW_1C(SW_1C),
		.SW_1D(SW_1D),
		.SW_1E(SW_1E),
		.SW_1F(SW_1F),
		.SW_1G(SW_1G),
		.SW_1A(SW_1A),
		.SW_1B(SW_1B),
		.SW_C(SW_C),
		.SW_D(SW_D),
		.SW_E(SW_E),
		.SW_F(SW_F),
		.SW_G(SW_G),
		.SW_A(SW_A),
		.SW_B(SW_B),
		.SW_C1(SW_C1),
		.SW_D1(SW_D1),
		.SW_E1(SW_E1),
		.SW_F1(SW_F1),
		.SW_G1(SW_G1),
		.SW_A1(SW_A1),
		.SW_B1(SW_B1),
		.SW_OUTPUT(audio_out_SW[31:0])
	);
	
	/*
	Triangle_Wave_Control TWC(
		.clock(CLOCK_50),
		.reset(reset),
		.TW_1C(TW_1C),
		.TW_1D(TW_1D),
		.TW_1E(TW_1E),
		.TW_1F(TW_1F),
		.TW_1G(TW_1G),
		.TW_1A(TW_1A),
		.TW_1B(TW_1B),
		.TW_2D(TW_2D),
		.TW_2E(TW_2E),
		.TW_2F(TW_2F),
		.TW_2G(TW_2G),
		.TW_2A(TW_2A),
		.TW_2B(TW_2B),
		.TW_3C(TW_3C),
		.TW_3D(TW_3D),
		.TW_3E(TW_3E),
		.TW_3F(TW_3F),
		.TW_3G(TW_3G),
		.TW_3A(TW_3A),
		.TW_3B(TW_3B),
		.TW_OUTPUT(audio_out_TW[31:0])
	);
	
	
	Flat_Wave_Control FWC(
		.clock(CLOCK_50),
		.reset(reset),
		.FW_1C(FW_1C),
		.FW_1D(FW_1D),
		.FW_1E(FW_1E),
		.FW_1F(FW_1F),
		.FW_1G(FW_1G),
		.FW_1A(FW_1A),
		.FW_1B(FW_1B),
		.FW_C(FW_C),
		.FW_D(FW_D),
		.FW_E(FW_E),
		.FW_F(FW_F),
		.FW_G(FW_G),
		.FW_A(FW_A),
		.FW_B(FW_B),
		.FW_C1(FW_C1),
		.FW_D1(FW_D1),
		.FW_E1(FW_E1),
		.FW_F1(FW_F1),
		.FW_G1(FW_G1),
		.FW_A1(FW_A1),
		.FW_B1(FW_B1),
		.FW_OUTPUT(audio_out_FW[31:0])
	);
	*/
	
endmodule
