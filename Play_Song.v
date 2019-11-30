module Play_Song(
	input clock,
	input reset,
	
	inout PS2_CLK,
	inout PS2_DAT,
	
	input second_wotw,
	input second_juss,
	
	output reg [1:0] song,
	output [9:0]LEDR,
	
	output reg FW_1C,
	output reg FW_1Df,
	output reg FW_1D,
	output reg FW_1Ef,
	output reg FW_1E,
	output reg FW_1F,
	output reg FW_1Gf,
	output reg FW_1G,
	output reg FW_1Af,
	output reg FW_1A,
	output reg FW_1Bf,
	output reg FW_1B,
	
	output reg FW_C,
	output reg FW_Df,
	output reg FW_D,
	output reg FW_Ef,
	output reg FW_E,
	output reg FW_F,
	output reg FW_Gf,
	output reg FW_G,
	output reg FW_Af,
	output reg FW_A,
	output reg FW_Bf,
	output reg FW_B,

	output reg FW_C1,
	output reg FW_D1f,
	output reg FW_D1,
	output reg FW_E1f,
	output reg FW_E1,
	output reg FW_F1,
	output reg FW_G1f,
	output reg FW_G1,
	output reg FW_A1f,
	output reg FW_A1,
	output reg FW_B1f,
	output reg FW_B1,
	
	output reg FW_C2,
	output reg FW_D2f,
	output reg FW_D2,
	output reg FW_E2f,
	output reg FW_E2,
	output reg FW_F2
	);
	
	reg [15:0] measure_wotw;
	reg [15:0] measure_juss;

	always@(posedge clock) begin
		if (reset) begin
			FW_1C 	<= 1'b0;
			FW_1Df	<= 1'b0;
			FW_1D		<= 1'b0;
			FW_1Ef 	<= 1'b0;
			FW_1E 	<= 1'b0;
			FW_1F 	<= 1'b0;
			FW_1Gf 	<= 1'b0;
			FW_1G 	<= 1'b0;
			FW_1Af 	<= 1'b0;
			FW_1A 	<= 1'b0;
			FW_1Bf 	<= 1'b0;
			FW_1B 	<= 1'b0;
			
			FW_C 		<= 1'b0;
			FW_Df 	<= 1'b0;
			FW_D 		<= 1'b0;
			FW_Ef 	<= 1'b0;
			FW_E 		<= 1'b0;
			FW_F 		<= 1'b0;
			FW_Gf 	<= 1'b0;
			FW_G 		<= 1'b0;
			FW_Af 	<= 1'b0;
			FW_A 		<= 1'b0;
			FW_Bf 	<= 1'b0;
			FW_B 		<= 1'b0;
			
			FW_C1 	<= 1'b0;
			FW_D1f	<= 1'b0;
			FW_D1 	<= 1'b0;
			FW_E1f	<= 1'b0;
			FW_E1 	<= 1'b0;
			FW_F1 	<= 1'b0;
			FW_G1f	<= 1'b0;
			FW_G1 	<= 1'b0;
			FW_A1f	<= 1'b0;
			FW_A1 	<= 1'b0;
			FW_B1f	<= 1'b0;
			FW_B1 	<= 1'b0;
			
			FW_C2  	<= 1'b0;
			FW_D2f 	<= 1'b0;
			FW_D2  	<= 1'b0;
			FW_E2f 	<= 1'b0;
			FW_E2  	<= 1'b0;
			FW_F2  	<= 1'b0;
		
			measure_wotw 	<= 1'b0;
			measure_juss	<= 1'b0;
			
			clear 	<= 2'd0;
			octave	<= 2'b1;
			song		<= 2'b0;
			
			dummy_a		<= 1'b1;
			dummy_w		<= 1'b1;
			dummy_s		<= 1'b1;
			dummy_e		<= 1'b1;
			dummy_d		<= 1'b1;
			dummy_f		<= 1'b1;
			dummy_t		<= 1'b1;
			dummy_g		<= 1'b1;
			dummy_y		<= 1'b1;
			dummy_h		<= 1'b1;
			dummy_u		<= 1'b1;
			dummy_j		<= 1'b1;
			dummy_k		<= 1'b1;

			end
			
		if (song == 2'd1) begin
			if (second_wotw == 1'b1) begin									// measure counter
				measure_wotw <= measure_wotw + 16'b0000000000000001;
				end
				
//////////////////////////////////////////////////////////////
//																				//
//                  WEIGHT OF THE WORLD							//
//						  		 ~ START ~			  						//
//																				//
//////////////////////////////////////////////////////////////

			if (second_wotw == 1'b1 && measure_wotw == 16'd1) begin			// 1 - 1
				FW_A 	<= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd5) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd7) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd11) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd15) begin
				FW_G1	<= 1'b0;
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd19) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd21) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd23) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd31) begin
				FW_G1	<= 1'b0;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd33) begin			// 2 - 33
				FW_A 	<= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd37) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd39) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd43) begin
				FW_D1	<= 1'b0;
				FW_A1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd47) begin
				FW_A1	<= 1'b0;
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd51) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd53) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd55) begin
				FW_D1	<= 1'b0;
				FW_A1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd63) begin
				FW_A1	<= 1'b0;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd65) begin			// 3 - 65
				FW_A 	<= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd69) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd71) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd75) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd79) begin
				FW_G1	<= 1'b0;
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd83) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd85) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd87) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd95) begin
				FW_G1	<= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd97) begin			// 4 - 97
				FW_A 	<= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd101) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd103) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd107) begin
				FW_D1	<= 1'b0;
				FW_A1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd119) begin
				FW_A1	<= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd133) begin			// 5 - 129
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd134) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd135) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd136) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd137) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd140) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd141) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd142) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd143) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd146) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd147) begin
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd149) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd159) begin
				FW_C1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd165) begin			// 6 - 161
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd166) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd167) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd168) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd169) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd172) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd173) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd174) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd175) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd178) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd179) begin
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd181) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd188) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd189) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd191) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd193) begin			// 7 - 193
				FW_D1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd215) begin
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd217) begin
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd219) begin
				FW_E1 <= 1'b0;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd221) begin
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd222) begin
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd223) begin
				FW_E1 <= 1'b1;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd229) begin			// 8 - 225
				FW_E1 <= 1'b0;
				FW_A 	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd255) begin
				FW_A 	<= 1'b0;
				FW_D1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd261) begin			// 9 - 257
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd262) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd263) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd264) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd265) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd268) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd269) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd270) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd271) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd274) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd275) begin
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd277) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd287) begin
				FW_C1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd293) begin			// 10 - 289
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd294) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd295) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd296) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd297) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd300) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd301) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd302) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd303) begin
				FW_A  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd306) begin
				FW_A  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd307) begin
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd309) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd316) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd317) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd320) begin
				FW_C1 <= 1'b0;
				end
				
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd321) begin			// 11 - 321
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd341) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd345) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd347) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd349) begin
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd350) begin
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd351) begin
				FW_E1 <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd357) begin			// 12 - 353
				FW_E1 <= 1'b0;
				FW_A 	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd375) begin
				FW_A 	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd377) begin
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd379) begin
				FW_D1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd381) begin
				FW_C1 <= 1'b0;
				FW_B <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd385) begin			// 13 - 385
				FW_B	<= 1'b0;
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd399) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd401) begin
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd415) begin
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd417) begin			// 14 - 417
				FW_G	<=	1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd427) begin
				FW_G	<=	1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd431) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd433) begin
				FW_E1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd447) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd449) begin			// 15 - 449
				FW_F	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd452) begin
				FW_F	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd453) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd454) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd455) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd458) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd459) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd462) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd463) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd469) begin
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd473) begin
				FW_G	<= 1'b0;
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd477) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd480) begin
				FW_D1 <= 1'b0;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd481) begin			// 16 - 481
				FW_F	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd484) begin
				FW_F	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd485) begin
				FW_G 	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd486) begin
				FW_G 	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd487) begin
				FW_G 	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd509) begin
				FW_G 	<= 1'b0;
				FW_E1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd513) begin			// 17 - 513
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd527) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd529) begin
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd543) begin
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd545) begin			// 18 - 545
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd555) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd559) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd561) begin
				FW_E1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd571) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd573) begin
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd576) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				end
							
			if (second_wotw == 1'b1 && measure_wotw == 16'd577) begin			// 19 - 577
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd580) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd581) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd582) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd583) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd586) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd587) begin
				FW_C1	<= 1'b1;
				FW_A1f <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd590) begin
				FW_C1	<= 1'b0;
				FW_A1f <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd591) begin
				FW_C1	<= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd596) begin
				FW_C1	<= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd597) begin
				FW_G	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd601) begin
				FW_G	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd605) begin
				FW_E1 <= 1'b0;
				FW_F1 <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd609) begin			// 20 - 609
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd631) begin
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd633) begin
				FW_G	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd635) begin
				FW_G	<= 1'b0;
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd637) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd641) begin			// 21 - 641
				FW_D1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd649) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd651) begin
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd653) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_Af	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd654) begin
				FW_Af	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd655) begin
				FW_Af	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd667) begin
				FW_Af	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd669) begin
				FW_B  <= 1'b1;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd673) begin			// 22 - 673
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd674) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd675) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd677) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd679) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd682) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd683) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd686) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd687) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd699) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd701) begin
				FW_B  <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd705) begin			// 23 - 705
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd706) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd707) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd709) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd711) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd714) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd715) begin
				FW_C1 <= 1'b1;
				FW_A1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd719) begin
				FW_C1 <= 1'b0;
				FW_A1 <= 1'b0;
				FW_B	<= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd731) begin
				FW_B	<= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd733) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd735) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd737) begin			// 24 - 737
				FW_D1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd741) begin
				FW_E1 <= 1'b0;
				FW_G	<= 1'b0;
				FW_A	<=	1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd743) begin
				FW_A	<=	1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd747) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<=	1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd751) begin
				FW_A	<=	1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd757) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_F	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd761) begin
				FW_F	<= 1'b0;
				FW_D1 <= 1'b0;
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd765) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd779) begin			// 25 - 769
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd781) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd783) begin
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd795) begin
				FW_G	<= 1'b0;
				FW_B <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd797) begin
				FW_G	<= 1'b1;
				FW_B <= 1'b1;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd801) begin			// 26 - 801
				FW_G	<= 1'b0;
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd802) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd803) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd805) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd807) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd810) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd811) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd814) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd815) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd827) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd829) begin
				FW_B  <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd833) begin			// 27 - 833
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd834) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd835) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd837) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd839) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd843) begin
				FW_C1 <= 1'b0;
				FW_B	<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd846) begin
				FW_B	<=	1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd847) begin
				FW_B	<=	1'b1;
				FW_G1 <= 1'b1;
				end	
			if (second_wotw == 1'b1 && measure_wotw == 16'd851) begin
				FW_B	<=	1'b0;
				FW_G1 <= 1'b0;
				FW_C1	<= 1'b1;
				FW_A1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd853) begin
				FW_C1	<= 1'b0;
				FW_A1 <= 1'b0;
				FW_B	<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd861) begin
				FW_B	<=	1'b0;
				FW_G1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd863) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd865) begin			// 28 - 865
				FW_D1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd869) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd871) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd875) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd879) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd885) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_F	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd889) begin
				FW_F	<= 1'b0;
				FW_D1 <= 1'b0;
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd893) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end	
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd915) begin			// 29 - 896
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd921) begin
				FW_Af <= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd923) begin
				FW_Af <= 1'b0;
				FW_E1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd925) begin
				FW_D1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd927) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd929) begin			// 30 - 929
				FW_B <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd932) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd933) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd934) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd935) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd938) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd939) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd945) begin
				FW_C1 <= 1'b0;
				FW_B <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd949) begin
				FW_B <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd953) begin
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd957) begin
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd960) begin
				FW_G1 <= 1'b0;
				end
			
			if (second_wotw == 1'b1 && measure_wotw == 16'd961) begin			// 31 - 961
				FW_C1	<= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd973) begin
				FW_C1	<= 1'b0;
				FW_G1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd974) begin
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd975) begin
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd989) begin
				FW_C1 <= 1'b0;
				end
				
			if (second_wotw == 1'b1 && measure_wotw == 16'd993) begin			// 32 - 993
				FW_C	<= 1'b1;
				FW_G  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd1008) begin
				FW_C	<= 1'b0;
				FW_G  <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd1017) begin
				FW_D	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd1021) begin
				FW_D	<= 1'b0;
				FW_B  <= 1'b0;
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd1022) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd1023) begin
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_wotw == 1'b1 && measure_wotw == 16'd1039) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				measure_wotw <= 16'd0;
				song <= 2'd0;
				end
			end
			
//////////////////////////////////////////////////////////////
//																				//
//                  WEIGHT OF THE WORLD							//
//						  		  ~ END ~			  						//
//																				//
//////////////////////////////////////////////////////////////	
			
			
//////////////////////////////////////////////////////////////
//																				//
//                  JUMP UP, SUPERSTAR!							//
//						  		 ~ START ~			  						//
//																				//
//////////////////////////////////////////////////////////////
			
		if (song == 2'd2) begin
			if (second_juss == 1'b1) begin										// measure counter
				measure_juss <= measure_juss + 16'b0000000000000001;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd21) begin			// 1 - 1
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd25) begin
				FW_1G		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd29) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd41) begin			// 2 - 33
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd45) begin
				FW_1A		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd53) begin
				FW_1A		<= 1'b0;
				FW_G		<= 1'b0;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd57) begin
				FW_1G		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd61) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd73) begin			// 3 - 65
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd77) begin
				FW_1A		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd85) begin
				FW_1A		<= 1'b0;
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd87) begin
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd89) begin
				FW_1G		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd93) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd93) begin			// 4 - 97
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd105) begin
				FW_C		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd113) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd121) begin
				FW_C		<= 1'b1;
				FW_D		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd125) begin
				FW_D		<= 1'b1;
				FW_C		<= 1'b0;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd129) begin		// 5 - 129
				FW_C		<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd133) begin
				FW_Ef		<= 1'b0;
				FW_G		<= 1'b0;
				FW_D		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd137) begin
				FW_D		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd141) begin
				FW_C		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd160) begin
				FW_C		<= 1'b0;
				FW_G		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd169) begin		// 6 - 161
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd177) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd181) begin
				FW_C		<= 1'b0;
				FW_D		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd185) begin
				FW_D		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd189) begin
				FW_C		<= 1'b0;
				FW_G		<= 1'b1;
				FW_Ef		<= 1'b1;
				end
					
			if (second_juss == 1'b1 && measure_juss == 16'd200) begin		// 7 - 193
				FW_G		<= 1'b0;
				FW_Ef		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd201) begin
				FW_G		<= 1'b1;
				FW_D		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd208) begin
				FW_G		<= 1'b0;
				FW_D		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd209) begin
				FW_G		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd213) begin
				FW_G		<= 1'b0;
				FW_C		<= 1'b0;
				FW_1Af	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd217) begin
				FW_1Af	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd221) begin
				FW_1G		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd228) begin		// 8 - 225
				FW_1G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd229) begin
				FW_1G		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd235) begin
				FW_1G		<= 1'b0;
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd237) begin
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd241) begin
				FW_1G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd245) begin
				FW_1G		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd251) begin
				FW_1G		<= 1'b0;
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd253) begin
				FW_1G		<= 1'b1;
				end	
			if (second_juss == 1'b1 && measure_juss == 16'd256) begin
				FW_1G		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd261) begin		// 9 - 257
				FW_G		<= 1'b1;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd267) begin
				FW_G		<= 1'b0;
				FW_1G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd269) begin
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd272) begin
				FW_1G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd273) begin
				FW_1G		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd276) begin
				FW_1G		<= 1'b0;
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd277) begin
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd281) begin
				FW_1G		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd285) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd297) begin		// 10 - 289
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd301) begin
				FW_1A		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd309) begin
				FW_1A		<= 1'b0;
				FW_G		<= 1'b0;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd313) begin
				FW_1G		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd317) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd329) begin		// 11 - 321
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd333) begin
				FW_G		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd341) begin
				FW_G		<= 1'b0;
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd345) begin
				FW_C		<= 1'b0;
				FW_D		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd349) begin
				FW_D		<= 1'b0;
				FW_E		<= 1'b1;
				FW_1G		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd361) begin		// 12 - 353
				FW_E		<= 1'b0;
				FW_1G		<= 1'b0;
				FW_C		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd368) begin
				FW_C		<= 1'b0;
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd369) begin
				FW_E		<= 1'b1;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd376) begin
				FW_E		<= 1'b0;
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd377) begin
				FW_C		<= 1'b1;
				FW_G		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd385) begin		// 13 - 385
				FW_C		<= 1'b0;
				FW_G		<= 1'b0;
				FW_A		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd388) begin
				FW_A		<= 1'b0;
				FW_1A		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd389) begin
				FW_A		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd393) begin
				FW_A		<= 1'b0;
				FW_1A		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd397) begin
				FW_E		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd409) begin
				FW_E		<= 1'b0;
				FW_1A		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd417) begin		// 14 - 417
				FW_E		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd424) begin
				FW_E		<= 1'b0;
				FW_1A		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd425) begin
				FW_Ef		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd432) begin
				FW_Ef		<= 1'b0;
				FW_1A		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd433) begin
				FW_E		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd437) begin
				FW_E		<= 1'b0;
				FW_1A		<= 1'b0;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd441) begin
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd445) begin
				FW_E		<= 1'b1;
				FW_1A		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd457) begin		// 15 - 449
				FW_E		<= 1'b0;
				FW_1A		<= 1'b0;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd465) begin
				FW_1G		<= 1'b0;
				FW_D		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd469) begin
				FW_D		<= 1'b0;
				FW_1A		<= 1'b0;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd473) begin
				FW_1G		<= 1'b0;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd477) begin
				FW_1A		<= 1'b0;
				FW_C		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd485) begin		// 16 - 481
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd489) begin
				FW_D		<= 1'b1;
				FW_1Bf	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd493) begin
				FW_D		<= 1'b0;
				FW_1Bf	<= 1'b0;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd497) begin
				FW_1G		<= 1'b0;
				FW_D		<= 1'b1;
				FW_1Bf	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd501) begin
				FW_D		<= 1'b0;
				FW_1Bf	<= 1'b0;
				FW_1G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd505) begin
				FW_1G		<= 1'b0;
				FW_D		<= 1'b1;
				FW_1A		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd509) begin
				FW_D		<= 1'b0;
				FW_1A		<= 1'b0;
				FW_1G		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd521) begin		// 17 - 513
				FW_1G		<= 1'b0;
				FW_E		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd529) begin
				FW_E		<= 1'b0;
				FW_C		<= 1'b0;
				FW_F		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd537) begin
				FW_F		<= 1'b0;
				FW_C		<= 1'b0;
				FW_G		<= 1'b1;
				FW_C		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd545) begin		// 18 - 545
				FW_G		<= 1'b0;
				FW_C		<= 1'b0;
				FW_A		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd549) begin
				FW_A		<= 1'b0;
				FW_C		<= 1'b0;
				FW_F		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd553) begin
				FW_F		<= 1'b0;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd557) begin
				FW_G		<= 1'b0;
				FW_A		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd565) begin
				FW_A		<= 1'b0;
				FW_C		<= 1'b0;
				FW_F		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd569) begin
				FW_F		<= 1'b0;
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd573) begin
				FW_G		<= 1'b0;
				FW_A		<= 1'b1;
				FW_C		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd577) begin		// 19 - 577
				FW_A		<= 1'b0;
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd585) begin
				FW_C1		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd601) begin
				FW_C1		<= 1'b0;
				FW_C		<= 1'b0;
				FW_B1		<= 1'b1;
				FW_B		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd609) begin		// 20 - 609
				FW_B1		<= 1'b0;
				FW_B		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd617) begin
				FW_G		<= 1'b1;
				FW_1Bf	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd629) begin
				FW_G		<= 1'b0;
				FW_1Bf	<= 1'b0;
				FW_E		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd641) begin		// 21 - 641
				FW_E		<= 1'b0;
				FW_Bf		<= 1'b1;
				FW_Df		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd644) begin
				FW_Bf		<= 1'b0;
				FW_Df		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd645) begin
				FW_Bf		<= 1'b1;
				FW_Df		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd649) begin
				FW_Bf		<= 1'b0;
				FW_Df		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd653) begin
				FW_A		<= 1'b1;
				FW_Df		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd665) begin
				FW_A		<= 1'b0;
				FW_Df		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd673) begin		// 22 - 673
				FW_E		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd680) begin
				FW_E		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd681) begin
				FW_E		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd685) begin
				FW_E		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd689) begin
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd693) begin
				FW_1A		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd705) begin		// 23 - 705
				FW_1A		<= 1'b0;
				FW_E		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd712) begin
				FW_E		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd713) begin
				FW_E		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd717) begin
				FW_E		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd721) begin
				FW_C		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd725) begin
				FW_G		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd736) begin
				FW_G		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd737) begin		// 24 - 737
				FW_G		<= 1'b1;
				FW_1B		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd741) begin
				FW_1B		<= 1'b0;
				FW_1Bf	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd745) begin
				FW_1Bf	<= 1'b0;
				FW_1B		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd748) begin
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd749) begin
				FW_1B		<= 1'b0;
				FW_G		<= 1'b1;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd757) begin
				FW_C		<= 1'b0;
				FW_Bf		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd761) begin
				FW_Bf		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd764) begin
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd765) begin
				FW_C		<= 1'b0;
				FW_G		<= 1'b1;
				FW_Df		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd773) begin		// 25 - 769
				FW_Df		<= 1'b0;
				FW_C		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd777) begin
				FW_C		<= 1'b0;
				FW_Df		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd780) begin
				FW_G		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd781) begin
				FW_Df		<= 1'b0;
				FW_G		<= 1'b1;
				FW_D		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd789) begin
				FW_G		<= 1'b0;
				FW_D		<= 1'b0;
				FW_Df		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd793) begin
				FW_Df		<= 1'b0;
				FW_D		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd796) begin
				FW_D		<= 1'b0;
				FW_E		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd799) begin
				FW_E		<= 1'b0;
				FW_F		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd803) begin		// 26 - 801
				FW_F		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd807) begin
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd811) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd812) begin
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd816) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd817) begin
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd822) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_A1f	<= 1'b1;
				FW_Af		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd827) begin
				FW_A1f	<= 1'b0;
				FW_Af		<= 1'b0;
				FW_A1		<= 1'b1;
				FW_A		<= 1'b1;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd833) begin		// 27 - 833
				FW_A1		<= 1'b0;
				FW_A		<= 1'b0;
				FW_B1f		<= 1'b1;
				FW_Bf		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd841) begin
				FW_B1f		<= 1'b0;
				FW_Bf		<= 1'b0;
				FW_C		<= 1'b1;
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd849) begin
				FW_C		<= 1'b0;
				FW_C1		<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd853) begin
				FW_Ef		<= 1'b0;
				FW_E1f	<= 1'b0;
				FW_C		<= 1'b1;
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd857) begin
				FW_C		<= 1'b0;
				FW_C1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd861) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd873) begin			// 28 - 865
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd881) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd885) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd889) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd893) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd921) begin			// 29 - 897
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd929) begin			// 30 - 929
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd937) begin
				FW_Bf		<= 1'b0;
				FW_B1f 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd945) begin
				FW_Af		<= 1'b0;
				FW_A1f 	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd949) begin
				FW_G		<= 1'b0;
				FW_G1 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd953) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd957) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd985) begin			// 31 - 961
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd993) begin			// 32 - 993
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1001) begin
				FW_Bf		<= 1'b0;
				FW_B1f 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1009) begin
				FW_Af		<= 1'b0;
				FW_A1f 	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1013) begin
				FW_G		<= 1'b0;
				FW_G1 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1017) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1021) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1033) begin			// 33 - 1025
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1041) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1045) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_F	 	<= 1'b1;
				FW_F1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1049) begin
				FW_F	 	<= 1'b0;
				FW_F1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1053) begin
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1081) begin			// 34 - 1057
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd1097) begin			// 35 - 1089
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1105) begin
				FW_C1		<= 1'b0;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1109) begin
				FW_E1f	<= 1'b0;
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1113) begin
				FW_C1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1117) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			
				
			if (second_juss == 1'b1 && measure_juss == 16'd1129) begin			// 36 - 1121
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1137) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1141) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1145) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1149) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1169) begin			// 37 - 1153
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1177) begin
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1181) begin
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd1185) begin			// 38 - 1185
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1193) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1201) begin
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				FW_D1		<= 1'b1;
				FW_D2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1209) begin
				FW_D1		<= 1'b0;
				FW_D2		<= 1'b0;
				FW_E1f	<= 1'b1;
				FW_E2f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1217) begin			// 39 - 1217
				FW_E1f	<= 1'b0;
				FW_E2f	<= 1'b0;
				FW_D1		<= 1'b1;
				FW_D2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1229) begin
				FW_D1		<= 1'b0;
				FW_D2		<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1245) begin
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1249) begin			// 40 - 417
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1257) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1273) begin
				FW_Ef		<= 1'b0;
				FW_E1f	<= 1'b0;
				FW_C		<= 1'b1;
				FW_C1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1281) begin			// 41 - 1281
				FW_C		<= 1'b0;
				FW_C1		<= 1'b0;
				FW_D		<= 1'b1;
				FW_D1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1297) begin
				FW_D		<= 1'b0;
				FW_D1		<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1313) begin			// 42 - 131
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_E1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1345) begin			// 43 - 513
				FW_Ef		<= 1'b0;
				FW_E1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1353) begin	
				FW_C1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1361) begin
				FW_C1		<= 1'b0;
				FW_Ef 	<= 1'b1;
				FW_E1f 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1365) begin
				FW_Ef 	<= 1'b0;
				FW_E1f	<= 1'b0;
				FW_C1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1369) begin
				FW_C1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1373) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1381) begin			// 44 - 1377
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1385) begin
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1393) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_G	 	<= 1'b1;
				FW_G1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1397) begin
				FW_G	 	<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1401) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1405) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1433) begin			// 45 - 1409
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1441) begin			// 46 - 1111
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1449) begin
				FW_Bf		<= 1'b0;
				FW_B1f 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1457) begin
				FW_Af		<= 1'b0;
				FW_A1f 	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1461) begin
				FW_G		<= 1'b0;
				FW_G1 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1465) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1469) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1485) begin			// 47 - 1473
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1497) begin
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd1505) begin			// 48 - 1505
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1513) begin
				FW_Bf		<= 1'b0;
				FW_B1f 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1521) begin
				FW_Af		<= 1'b0;
				FW_A1f 	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1525) begin
				FW_G		<= 1'b0;
				FW_G1 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1529) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1533) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1541) begin			// 49 - 1537
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1545) begin
				FW_E1f	<= 1'b1;
				FW_E2f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1561) begin
				FW_E1f	<= 1'b0;
				FW_E2f	<= 1'b0;
				FW_D1		<= 1'b1;
				FW_D2		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1569) begin			// 50 - 1569
				FW_D1		<= 1'b0;
				FW_D2		<= 1'b0;
				FW_D1f	<= 1'b1;
				FW_D2f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1573) begin
				FW_D1f	<= 1'b0;
				FW_D2f	<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1581) begin
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1589) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1597) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1609) begin			// 51 - 1601
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1617) begin
				FW_C1		<= 1'b0;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1621) begin
				FW_E1f	<= 1'b0;
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1625) begin
				FW_C1		<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1629) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1637) begin			// 52 - 1633
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1641) begin
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1649) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_G	 	<= 1'b1;
				FW_G1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1653) begin
				FW_G	 	<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1657) begin
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1661) begin
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1685) begin			// 53 - 1665
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1689) begin
				FW_G	 	<= 1'b1;
				FW_G1 	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1693) begin
				FW_G	 	<= 1'b0;
				FW_G1 	<= 1'b0;
				FW_Af		<= 1'b1;
				FW_A1f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1697) begin			// 54 - 1697
				FW_Af		<= 1'b0;
				FW_A1f	<= 1'b0;
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1705) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1713) begin
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				FW_D1		<= 1'b1;
				FW_D2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1721) begin
				FW_D1		<= 1'b0;
				FW_D2		<= 1'b0;
				FW_E1f	<= 1'b1;
				FW_E2f	<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1729) begin			// 55 - 1729
				FW_E1f	<= 1'b0;
				FW_E2f	<= 1'b0;
				FW_D1		<= 1'b1;
				FW_D2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1741) begin
				FW_D1		<= 1'b0;
				FW_D2		<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1757) begin
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1761) begin			// 56 - 1761
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1769) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1781) begin
				FW_Ef		<= 1'b0;
				FW_E1f	<= 1'b0;
				FW_C		<= 1'b1;
				FW_C1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1789) begin
				FW_C		<= 1'b0;
				FW_C1		<= 1'b0;
				FW_D		<= 1'b1;
				FW_D1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1817) begin			// 57 - 1793
				FW_D		<= 1'b0;
				FW_D1		<= 1'b0;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1825) begin			// 58 - 1825 
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1833) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_F		<= 1'b1;
				FW_F1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1845) begin
				FW_F		<= 1'b0;
				FW_F1		<= 1'b0;
				FW_D1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1849) begin
				FW_D1		<= 1'b0;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1853) begin
				FW_E1f	<= 1'b0;
				FW_E1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1865) begin			// 59 - 1857
				FW_E1		<= 1'b0;
				FW_D1f	<= 1'b1;
				FW_D2f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1881) begin
				FW_D1f	<= 1'b0;
				FW_D2f	<= 1'b0;
				FW_C1		<= 1'b1;
				FW_C2		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1889) begin		// 60 - 1889
				FW_C1		<= 1'b0;
				FW_C2		<= 1'b0;
				FW_Bf		<= 1'b1;
				FW_B1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1897) begin
				FW_Bf		<= 1'b0;
				FW_B1f	<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1913) begin
				FW_Ef		<= 1'b0;
				FW_E1f	<= 1'b0;
				FW_C		<= 1'b1;
				FW_C1		<= 1'b1;
				end
				
			if (second_juss == 1'b1 && measure_juss == 16'd1921) begin		// 61 - 1921
				FW_C		<= 1'b0;
				FW_C1		<= 1'b0;
				FW_D		<= 1'b1;
				FW_D1		<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1937) begin
				FW_D		<= 1'b0;
				FW_D1		<= 1'b0;
				FW_G		<= 1'b1;
				FW_G1		<= 1'b1;
				end
			
			if (second_juss == 1'b1 && measure_juss == 16'd1953) begin		// 62 - 1953
				FW_G		<= 1'b0;
				FW_G1		<= 1'b0;
				FW_Ef		<= 1'b1;
				FW_E1f	<= 1'b1;
				end
			if (second_juss == 1'b1 && measure_juss == 16'd1977) begin
				FW_Ef		<= 1'b0;
				FW_E1f	<= 1'b0;
				measure_juss <= 16'd0;
				song <= 2'd0;
				end
			end
			
//////////////////////////////////////////////////////////////
//																				//
//                  JUMP UP, SUPERSTAR!							//
//						  		 ~ END ~			  							//
//																				//
//////////////////////////////////////////////////////////////
				
		
		if (ps_en_input == 1'b1) begin
			if (ps_data == 8'hF0) begin
				clear <= 1'b1;
				end
			else begin
				if (clear == 1'b0) begin
					if (ps_data == 8'h0D) begin			// High Octave
						octave <= 2'd2;
						end
					else if (ps_data == 8'h58) begin		// Mid Octave
						octave <= 2'd1;
						end
					else if (ps_data == 8'h12) begin		// Low Octave
						octave <= 2'd0;
						end
					else if (ps_data == 8'h16) begin
						song 	<= 2'd1;
						end
					else if (ps_data == 8'h1E) begin
						song 	<= 2'd2;
						end
					else begin
						if (octave == 2'd1) begin
							if (ps_data == 8'h1C) begin
								dummy_a <= 1'b1;
								FW_C <= dummy_a;
								end
							if (ps_data == 8'h1D) begin
								dummy_w <= 1'b1;
								FW_Df <= dummy_w;
								end
							if (ps_data == 8'h1B) begin
								dummy_s <= 1'b1;
								FW_D <= dummy_s;
								end
							if (ps_data == 8'h24) begin
								dummy_e <= 1'b1;
								FW_Ef <= dummy_e;
								end
							if (ps_data == 8'h23) begin
								dummy_d <= 1'b1;
								FW_E <= dummy_d;
								end
							if (ps_data == 8'h2B) begin
								dummy_f <= 1'b1;
								FW_F <= dummy_f;
								end
							if (ps_data == 8'h2C) begin
								dummy_t <= 1'b1;
								FW_Gf <= dummy_t;
								end
							if (ps_data == 8'h34) begin
								dummy_g <= 1'b1;
								FW_G <= dummy_g;
								end
							if (ps_data == 8'h35) begin
								dummy_y <= 1'b1;
								FW_Af <= dummy_y;
								end
							if (ps_data == 8'h33) begin
								dummy_h <= 1'b1;
								FW_A <= dummy_h;
								end
							if (ps_data == 8'h3C) begin
								dummy_u <= 1'b1;
								FW_Bf <= dummy_u;
								end
							if (ps_data == 8'h3B) begin
								dummy_j <= 1'b1;
								FW_B <= dummy_j;
								end
							if (ps_data == 8'h42) begin
								dummy_k <= 1'b1;
								FW_C1 <= dummy_k;
								end
							end
						else if (octave == 2'd0) begin
							if (ps_data == 8'h1C) begin
								dummy_a <= 1'b1;
								FW_1C <= dummy_a;
								end
							if (ps_data == 8'h1D) begin
								dummy_w <= 1'b1;
								FW_1Df <= dummy_w;
								end
							if (ps_data == 8'h1B) begin
								dummy_s <= 1'b1;
								FW_1D <= dummy_s;
								end
							if (ps_data == 8'h24) begin
								dummy_e <= 1'b1;
								FW_1Ef <= dummy_e;
								end
							if (ps_data == 8'h23) begin
								dummy_d <= 1'b1;
								FW_1E <= dummy_d;
								end
							if (ps_data == 8'h2B) begin
								dummy_f <= 1'b1;
								FW_1F <= dummy_f;
								end
							if (ps_data == 8'h2C) begin
								dummy_t <= 1'b1;
								FW_1Gf <= dummy_t;
								end
							if (ps_data == 8'h34) begin
								dummy_g <= 1'b1;
								FW_1G <= dummy_g;
								end
							if (ps_data == 8'h35) begin
								dummy_y <= 1'b1;
								FW_1Af <= dummy_y;
								end
							if (ps_data == 8'h33) begin
								dummy_h <= 1'b1;
								FW_1A <= dummy_h;
								end
							if (ps_data == 8'h3C) begin
								dummy_u <= 1'b1;
								FW_1Bf <= dummy_u;
								end
							if (ps_data == 8'h3B) begin
								dummy_j <= 1'b1;
								FW_1B <= dummy_j;
								end
							if (ps_data == 8'h42) begin
								dummy_k <= 1'b1;
								FW_C <= dummy_k;
								end
							end
						if (octave == 2'd2) begin
							if (ps_data == 8'h1C) begin
								dummy_a <= 1'b1;
								FW_C1 <= dummy_a;
								end
							if (ps_data == 8'h1D) begin
								dummy_w <= 1'b1;
								FW_D1f <= dummy_w;
								end
							if (ps_data == 8'h1B) begin
								dummy_s <= 1'b1;
								FW_D1 <= dummy_s;
								end
							if (ps_data == 8'h24) begin
								dummy_e <= 1'b1;
								FW_E1f <= dummy_e;
								end
							if (ps_data == 8'h23) begin
								dummy_d <= 1'b1;
								FW_E1 <= dummy_d;
								end
							if (ps_data == 8'h2B) begin
								dummy_f <= 1'b1;
								FW_F1 <= dummy_f;
								end
							if (ps_data == 8'h2C) begin
								dummy_t <= 1'b1;
								FW_G1f <= dummy_t;
								end
							if (ps_data == 8'h34) begin
								dummy_g <= 1'b1;
								FW_G1 <= dummy_g;
								end
							if (ps_data == 8'h35) begin
								dummy_y <= 1'b1;
								FW_A1f <= dummy_y;
								end
							if (ps_data == 8'h33) begin
								dummy_h <= 1'b1;
								FW_A1 <= dummy_h;
								end
							if (ps_data == 8'h3C) begin
								dummy_u <= 1'b1;
								FW_B1f <= dummy_u;
								end
							if (ps_data == 8'h3B) begin
								dummy_j <= 1'b1;
								FW_B1 <= dummy_j;
								end
							if (ps_data == 8'h42) begin
								dummy_k <= 1'b1;
								FW_C2 <= dummy_k;
								end
							end
						end
					end
				end
			end
		if (clear == 1'b1) begin
			if (octave == 2'd1) begin
				if (ps_data == 8'h1C) begin
					dummy_a <= 1'b0;
					FW_C <= dummy_a;
					clear <= 1'b0;
					end
				if (ps_data == 8'h1D) begin
					dummy_w <= 1'b0;
					FW_Df <= dummy_w;
					clear <= 1'b0;
					end
				if (ps_data == 8'h1B) begin
					dummy_s <= 1'b0;
					FW_D <= dummy_s;
					clear <= 1'b0;
					end
				if (ps_data == 8'h24) begin
					dummy_e <= 1'b0;
					FW_Ef <= dummy_e;
					clear <= 1'b0;
					end
				if (ps_data == 8'h23) begin
					dummy_d <= 1'b0;
					FW_E <= dummy_d;
					clear <= 1'b0;
					end
				if (ps_data == 8'h2B) begin
					dummy_f <= 1'b0;
					FW_F <= dummy_f;
					clear <= 1'b0;
					end
				if (ps_data == 8'h2C) begin
					dummy_t <= 1'b0;
					FW_Gf <= dummy_t;
					clear <= 1'b0;
					end
				if (ps_data == 8'h34) begin
					dummy_g <= 1'b0;
					FW_G <= dummy_g;
					clear <= 1'b0;
					end
				if (ps_data == 8'h35) begin
					dummy_y <= 1'b0;
					FW_Af <= dummy_y;
					clear <= 1'b0;
					end
				if (ps_data == 8'h33) begin
					dummy_h <= 1'b0;
					FW_A <= dummy_h;
					clear <= 1'b0;
					end
				if (ps_data == 8'h3C) begin
					dummy_u <= 1'b0;
					FW_Bf <= dummy_u;
					clear <= 1'b0;
					end
				if (ps_data == 8'h3B) begin
					dummy_j <= 1'b0;
					FW_B <= dummy_j;
					clear <= 1'b0;
					end
				if (ps_data == 8'h42) begin
					dummy_k <= 1'b0;
					FW_C1 <= dummy_k;
					clear <= 1'b0;
					end
				end
			if (octave == 2'd0) begin
				if (ps_data == 8'h1C) begin
					dummy_a <= 1'b0;
					FW_1C <= dummy_a;
					clear <= 1'b0;
					end
				if (ps_data == 8'h1D) begin
					dummy_w <= 1'b0;
					FW_1Df <= dummy_w;
					clear <= 1'b0;
					end
				if (ps_data == 8'h1B) begin
					dummy_s <= 1'b0;
					FW_1D <= dummy_s;
					clear <= 1'b0;
					end
				if (ps_data == 8'h24) begin
					dummy_e <= 1'b0;
					FW_1Ef <= dummy_e;
					clear <= 1'b0;
					end
				if (ps_data == 8'h23) begin
					dummy_d <= 1'b0;
					FW_1E <= dummy_d;
					clear <= 1'b0;
					end
				if (ps_data == 8'h2B) begin
					dummy_f <= 1'b0;
					FW_1F <= dummy_f;
					clear <= 1'b0;
					end
				if (ps_data == 8'h2C) begin
					dummy_t <= 1'b0;
					FW_1Gf <= dummy_t;
					clear <= 1'b0;
					end
				if (ps_data == 8'h34) begin
					dummy_g <= 1'b0;
					FW_1G <= dummy_g;
					clear <= 1'b0;
					end
				if (ps_data == 8'h35) begin
					dummy_y <= 1'b0;
					FW_1Af <= dummy_y;
					clear <= 1'b0;
					end
				if (ps_data == 8'h33) begin
					dummy_h <= 1'b0;
					FW_1A <= dummy_h;
					clear <= 1'b0;
					end
				if (ps_data == 8'h3C) begin
					dummy_u <= 1'b0;
					FW_1Bf <= dummy_u;
					clear <= 1'b0;
					end
				if (ps_data == 8'h3B) begin
					dummy_j <= 1'b0;
					FW_1B <= dummy_j;
					clear <= 1'b0;
					end
				if (ps_data == 8'h42) begin
					dummy_k <= 1'b0;
					FW_C <= dummy_k;
					clear <= 1'b0;
					end
				end
			if (octave == 2'd2) begin
				if (ps_data == 8'h1C) begin
					dummy_a <= 1'b0;
					FW_C1 <= dummy_a;
					clear <= 1'b0;
					end
				if (ps_data == 8'h1D) begin
					dummy_w <= 1'b0;
					FW_D1f <= dummy_w;
					clear <= 1'b0;
					end
				if (ps_data == 8'h1B) begin
					dummy_s <= 1'b0;
					FW_D1 <= dummy_s;
					clear <= 1'b0;
					end
				if (ps_data == 8'h24) begin
					dummy_e <= 1'b0;
					FW_E1f <= dummy_e;
					clear <= 1'b0;
					end
				if (ps_data == 8'h23) begin
					dummy_d <= 1'b0;
					FW_E1 <= dummy_d;
					clear <= 1'b0;
					end
				if (ps_data == 8'h2B) begin
					dummy_f <= 1'b0;
					FW_F1 <= dummy_f;
					clear <= 1'b0;
					end
				if (ps_data == 8'h2C) begin
					dummy_t <= 1'b0;
					FW_G1f <= dummy_t;
					clear <= 1'b0;
					end
				if (ps_data == 8'h34) begin
					dummy_g <= 1'b0;
					FW_G1 <= dummy_g;
					clear <= 1'b0;
					end
				if (ps_data == 8'h35) begin
					dummy_y <= 1'b0;
					FW_A1f <= dummy_y;
					clear <= 1'b0;
					end
				if (ps_data == 8'h33) begin
					dummy_h <= 1'b0;
					FW_A1 <= dummy_h;
					clear <= 1'b0;
					end
				if (ps_data == 8'h3C) begin
					dummy_u <= 1'b0;
					FW_B1f <= dummy_u;
					clear <= 1'b0;
					end
				if (ps_data == 8'h3B) begin
					dummy_j <= 1'b0;
					FW_B1 <= dummy_j;
					clear <= 1'b0;
					end
				if (ps_data == 8'h42) begin
					dummy_k <= 1'b0;
					FW_C2 <= dummy_k;
					clear <= 1'b0;
					end
				end
			end
		end

		
	PS2_Controller PS2(
		// Inputs
		.CLOCK_50(clock),
		.reset(reset),
		
		// Bidirectionals
		.PS2_CLK(PS2_CLK),						// PS2 Clock
		.PS2_DAT(PS2_DAT),						// PS2 Data

		// Outputs
		.received_data(ps_data_input),
		.received_data_en(ps_en_input)
	);
	
	wire [7:0] ps_data_input;
	wire ps_en_input;
	reg [7:0] ps_data;
	reg [7:0] temp_data;
	
	reg dummy_a, dummy_w, dummy_s, dummy_e, dummy_d, dummy_f;
	reg dummy_t, dummy_g, dummy_y, dummy_h, dummy_u, dummy_j, dummy_k;
		
	always@(*) begin
		ps_data <= ps_data_input;
		end
		
	reg [1:0] clear;						// Clear Flag
	reg [1:0] octave;						// Current Ocatve (0 -> Low, 1 -> Mid, 2 -> High)
	
	
endmodule