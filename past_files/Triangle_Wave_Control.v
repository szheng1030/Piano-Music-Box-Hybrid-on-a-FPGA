module Triangle_Wave_Control(
	input clock,
	input reset,
	input TW_1C,
	input TW_1D,
	input TW_1E,
	input TW_1F,
	input TW_1G,
	input TW_1A,
	input TW_1B,
	input TW_2C,
	input TW_2D,
	input TW_2E,
	input TW_2F,
	input TW_2G,
	input TW_2A,
	input TW_2B,
	input TW_3C,
	input TW_3D,
	input TW_3E,
	input TW_3F,
	input TW_3G,
	input TW_3A,
	input TW_3B,
	output [31:0]TW_OUTPUT
	);
	
	parameter HZ_1C = 32'd382234;
	parameter HZ_1D = 32'd360776;
	parameter HZ_1E = 32'd303380;
	parameter HZ_1F = 32'd286352;
	parameter HZ_1G = 32'd255102;
	parameter HZ_1A = 32'd227272;
	parameter HZ_1B = 32'd202478;
	parameter HZ_2C = 32'd764409;
	parameter HZ_2D = 32'd681013;
	parameter HZ_2E = 32'd606722;
	parameter HZ_2F = 32'd572672;
	parameter HZ_2G = 32'd510204;
	parameter HZ_2A = 32'd454545;
	parameter HZ_2B = 32'd404957;
	parameter HZ_3C = 32'd1529051;
	parameter HZ_3D = 32'd1362027;
	parameter HZ_3E = 32'd1213592;
	parameter HZ_3F = 32'd1145475;
	parameter HZ_3G = 32'd1020408;
	parameter HZ_3A = 32'd909091;
	parameter HZ_3B = 32'd809848;
	
	wire signed [31:0] audio_out_1C;
	wire signed [31:0] audio_out_1D;
	wire signed [31:0] audio_out_1E;
	wire signed [31:0] audio_out_1F;
	wire signed [31:0] audio_out_1G;
	wire signed [31:0] audio_out_1A;
	wire signed [31:0] audio_out_1B;
	wire signed [31:0] audio_out_2C;
	wire signed [31:0] audio_out_2D;
	wire signed [31:0] audio_out_2E;
	wire signed [31:0] audio_out_2F;
	wire signed [31:0] audio_out_2G;
	wire signed [31:0] audio_out_2A;
	wire signed [31:0] audio_out_2B;
	wire signed [31:0] audio_out_3C;
	wire signed [31:0] audio_out_3D;
	wire signed [31:0] audio_out_3E;
	wire signed [31:0] audio_out_3F;
	wire signed [31:0] audio_out_3G;
	wire signed [31:0] audio_out_3A;
	wire signed [31:0] audio_out_3B;
	
	assign TW_OUTPUT = audio_out_1C + audio_out_1D +  audio_out_1E + audio_out_1F + audio_out_1G + audio_out_1A + audio_out_1B +
								audio_out_2C + audio_out_2D +  audio_out_2E + audio_out_2F + audio_out_2G + audio_out_2A + audio_out_2B +
								audio_out_3C + audio_out_3D +  audio_out_3E + audio_out_3F + audio_out_3G + audio_out_3A + audio_out_3B;
								
	Triangle_Wave TW1C(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1C),
		.hz(HZ_1C[31:0]),
		.audio_out(audio_out_1C[31:0])
		);
		
	Triangle_Wave TW1D(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1D),
		.hz(HZ_1D[31:0]),
		.audio_out(audio_out_1D[31:0])
		);
	
	Triangle_Wave TW1E(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1E),
		.hz(HZ_1E[31:0]),
		.audio_out(audio_out_1E[31:0])
		);
	
	Triangle_Wave TW1F(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1F),
		.hz(HZ_1F[31:0]),
		.audio_out(audio_out_1F[31:0])
		);
	
	Triangle_Wave TW1G(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1G),
		.hz(HZ_1G[31:0]),
		.audio_out(audio_out_1G[31:0])
		);
	
	Triangle_Wave TW1A(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1A),
		.hz(HZ_1A[31:0]),
		.audio_out(audio_out_1A[31:0])
		);
	
	Triangle_Wave TW1B(
		.clock(clock),
		.reset(reset),
		.play_note(TW_1B),
		.hz(HZ_1B[31:0]),
		.audio_out(audio_out_1B[31:0])
		);
	
	Triangle_Wave TW2C(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2C),
		.hz(HZ_2C[31:0]),
		.audio_out(audio_out_2C[31:0])
		);
		
	Triangle_Wave TW2D(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2D),
		.hz(HZ_2D[31:0]),
		.audio_out(audio_out_2D[31:0])
		);
	
	Triangle_Wave TW2E(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2E),
		.hz(HZ_2E[31:0]),
		.audio_out(audio_out_2E[31:0])
		);
	
	Triangle_Wave TW2F(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2F),
		.hz(HZ_2F[31:0]),
		.audio_out(audio_out_2F[31:0])
		);
	
	Triangle_Wave TW2G(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2G),
		.hz(HZ_2G[31:0]),
		.audio_out(audio_out_2G[31:0])
		);
	
	Triangle_Wave TW2A(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2A),
		.hz(HZ_2A[31:0]),
		.audio_out(audio_out_2A[31:0])
		);
	
	Triangle_Wave TW2B(
		.clock(clock),
		.reset(reset),
		.play_note(TW_2B),
		.hz(HZ_2B[31:0]),
		.audio_out(audio_out_2B[31:0])
		);
	
	Triangle_Wave TW3C(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3C),
		.hz(HZ_3C[31:0]),
		.audio_out(audio_out_3C[31:0])
		);
		
	Triangle_Wave TW3D(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3D),
		.hz(HZ_3D[31:0]),
		.audio_out(audio_out_3D[31:0])
		);
	
	Triangle_Wave TW3E(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3E),
		.hz(HZ_3E[31:0]),
		.audio_out(audio_out_3E[31:0])
		);
	
	Triangle_Wave TW3F(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3F),
		.hz(HZ_3F[31:0]),
		.audio_out(audio_out_3F[31:0])
		);
	
	Triangle_Wave TW3G(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3G),
		.hz(HZ_3G[31:0]),
		.audio_out(audio_out_3G[31:0])
		);
	
	Triangle_Wave TW3A(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3A),
		.hz(HZ_3A[31:0]),
		.audio_out(audio_out_3A[31:0])
		);
	
	Triangle_Wave TW3B(
		.clock(clock),
		.reset(reset),
		.play_note(TW_3B),
		.hz(HZ_3B[31:0]),
		.audio_out(audio_out_3B[31:0])
		);
	
endmodule
