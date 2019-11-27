//////////////////////////////////////////////////////////////
//																				//
//                  WEIGHT OF THE WORLD							//
//						  		 ~ START ~			  						//
//																				//
//////////////////////////////////////////////////////////////

			if (second_32 == 1'b1 && measure == 16'd1) begin			// 1 - 1
				FW_A 	<= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd5) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd7) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd11) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd15) begin
				FW_G1	<= 1'b0;
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd19) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd21) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd23) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd31) begin
				FW_G1	<= 1'b0;
				end
			
			if (second_32 == 1'b1 && measure == 16'd33) begin			// 2 - 33
				FW_A 	<= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd37) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd39) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd43) begin
				FW_D1	<= 1'b0;
				FW_A1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd47) begin
				FW_A1	<= 1'b0;
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd51) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd53) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd55) begin
				FW_D1	<= 1'b0;
				FW_A1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd63) begin
				FW_A1	<= 1'b0;
				end
			
			if (second_32 == 1'b1 && measure == 16'd65) begin			// 3 - 65
				FW_A 	<= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd69) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd71) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd75) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd79) begin
				FW_G1	<= 1'b0;
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd83) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd85) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd87) begin
				FW_D1	<= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd95) begin
				FW_G1	<= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd97) begin			// 4 - 97
				FW_A 	<= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd101) begin
				FW_A 	<= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd103) begin
				FW_E1	<= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd107) begin
				FW_D1	<= 1'b0;
				FW_A1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd119) begin
				FW_A1	<= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd133) begin			// 5 - 129
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd134) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd135) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd136) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd137) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd140) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd141) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd142) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd143) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd146) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd147) begin
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd149) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd159) begin
				FW_C1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd165) begin			// 6 - 161
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd166) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd167) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd168) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd169) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd172) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd173) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd174) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd175) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd178) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd179) begin
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd181) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd188) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd189) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd191) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd193) begin			// 7 - 193
				FW_D1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd215) begin
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd217) begin
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd219) begin
				FW_E1 <= 1'b0;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd221) begin
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd222) begin
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd223) begin
				FW_E1 <= 1'b1;
				end
			
			if (second_32 == 1'b1 && measure == 16'd229) begin			// 8 - 225
				FW_E1 <= 1'b0;
				FW_A 	<= 1'b1;
				FW_B 	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd255) begin
				FW_A 	<= 1'b0;
				FW_B 	<= 1'b0;
				FW_D1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd261) begin			// 9 - 257
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd262) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd263) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd264) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd265) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd268) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd269) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd270) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd271) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd274) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd275) begin
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd277) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd287) begin
				FW_C1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd293) begin			// 10 - 289
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd294) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd295) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd296) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd297) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd300) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd301) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd302) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd303) begin
				FW_A  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd306) begin
				FW_A  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd307) begin
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd309) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd316) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd317) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd320) begin
				FW_C1 <= 1'b0;
				end
				
				
			if (second_32 == 1'b1 && measure == 16'd321) begin			// 11 - 321
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd341) begin
				FW_C1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd345) begin
				FW_C1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd347) begin
				FW_G1 <= 1'b0;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd349) begin
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd350) begin
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd351) begin
				FW_E1 <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd357) begin			// 12 - 353
				FW_E1 <= 1'b0;
				FW_A 	<= 1'b1;
				FW_B 	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd375) begin
				FW_A 	<= 1'b0;
				FW_B 	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd377) begin
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd379) begin
				FW_D1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd381) begin
				FW_C1 <= 1'b0;
				FW_B <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd385) begin			// 13 - 385
				FW_B	<= 1'b0;
				FW_E	<= 1'b1;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd399) begin
				FW_E	<= 1'b0;
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd401) begin
				FW_G	<= 1'b1;
				FW_B	<=	1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd415) begin
				FW_G	<= 1'b0;
				FW_B	<=	1'b0;
				FW_D1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd417) begin			// 14 - 417
				FW_G	<=	1'b1;
				FW_C1 <= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd427) begin
				FW_G	<=	1'b0;
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd431) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd433) begin
				FW_E1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd447) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd449) begin			// 15 - 449
				FW_F	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd452) begin
				FW_F	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd453) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd454) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd455) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd458) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd459) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd462) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd463) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd469) begin
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd473) begin
				FW_G	<= 1'b0;
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd477) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd480) begin
				FW_D1 <= 1'b0;
				end
			
			if (second_32 == 1'b1 && measure == 16'd481) begin			// 16 - 481
				FW_F	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd484) begin
				FW_F	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd485) begin
				FW_G 	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd486) begin
				FW_G 	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd487) begin
				FW_G 	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd509) begin
				FW_G 	<= 1'b0;
				FW_E1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd513) begin			// 17 - 513
				FW_E	<= 1'b1;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd526) begin
				FW_E	<= 1'b0;
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd527) begin
				FW_G	<= 1'b1;
				FW_B	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd543) begin
				FW_G	<= 1'b0;
				FW_B	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			
			if (second_32 == 1'b1 && measure == 16'd545) begin			// 18 - 545
				FW_G	<= 1'b1;
				FW_C1	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd555) begin
				FW_G	<= 1'b0;
				FW_C1	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd559) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd561) begin
				FW_E1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd571) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd573) begin
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd576) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				end
							
			if (second_32 == 1'b1 && measure == 16'd577) begin			// 19 - 577
				FW_C1 <= 1'b1;
				FW_E1f<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd580) begin
				FW_C1 <= 1'b0;
				FW_E1f<=	1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd581) begin
				FW_C1 <= 1'b1;
				FW_E1f<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd582) begin
				FW_C1 <= 1'b0;
				FW_E1f<=	1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd583) begin
				FW_C1 <= 1'b1;
				FW_E1f<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd586) begin
				FW_C1 <= 1'b0;
				FW_E1f<=	1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd587) begin
				FW_C1	<= 1'b1;
				FW_E1f<= 1'b1;
				FW_G1s <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd590) begin
				FW_C1	<= 1'b0;
				FW_E1f<= 1'b0;
				FW_G1s <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd591) begin
				FW_C1	<= 1'b1;
				FW_E1f<= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd596) begin
				FW_C1	<= 1'b0;
				FW_E1f<= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd597) begin
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd601) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				FW_F1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd605) begin
				FW_E1 <= 1'b0;
				FW_F1 <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd609) begin			// 20 - 609
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_C1 <= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd631) begin
				FW_G	<= 1'b0;
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd633) begin
				FW_G	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd635) begin
				FW_G	<= 1'b0;
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd637) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd641) begin			// 21 - 641
				FW_D1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd649) begin
				FW_A	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd651) begin
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd653) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_Gs	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd654) begin
				FW_Gs	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd655) begin
				FW_Gs	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd667) begin
				FW_Gs	<= 1'b0;
				FW_E1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd669) begin
				FW_B  <= 1'b1;
				end
			
			if (second_32 == 1'b1 && measure == 16'd673) begin			// 22 - 673
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd674) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd675) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd677) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd679) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd682) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd683) begin
				FW_C1 <= 1'b1;
				FW_E1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd686) begin
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd687) begin
				FW_C1 <= 1'b1;
				FW_E1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd699) begin
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd701) begin
				FW_B  <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd705) begin			// 23 - 705
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd706) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd707) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd709) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd711) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd714) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd715) begin
				FW_C1 <= 1'b1;
				FW_A1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd719) begin
				FW_C1 <= 1'b0;
				FW_A1 <= 1'b0;
				FW_B	<= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd731) begin
				FW_B	<= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd733) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd735) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd737) begin			// 24 - 737
				FW_D1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd741) begin
				FW_E1 <= 1'b0;
				FW_G	<= 1'b0;
				FW_A	<=	1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd743) begin
				FW_A	<=	1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd747) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<=	1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd751) begin
				FW_A	<=	1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd757) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_F	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd761) begin
				FW_F	<= 1'b0;
				FW_D1 <= 1'b0;
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd765) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd779) begin			// 25 - 769
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd781) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd783) begin
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd795) begin
				FW_G	<= 1'b0;
				FW_B <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd797) begin
				FW_G	<= 1'b1;
				FW_B <= 1'b1;
				end
			
			if (second_32 == 1'b1 && measure == 16'd801) begin			// 26 - 801
				FW_G	<= 1'b0;
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd802) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd803) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd805) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd807) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd810) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd811) begin
				FW_C1 <= 1'b1;
				FW_E1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd814) begin
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd815) begin
				FW_C1 <= 1'b1;
				FW_E1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd827) begin
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd829) begin
				FW_B  <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd833) begin			// 27 - 833
				FW_B  <= 1'b0;
				FW_A	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd834) begin
				FW_A	<= 1'b0;
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd835) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd837) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd839) begin
				FW_B  <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd843) begin
				FW_C1  <= 1'b0;
				FW_B	<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd846) begin
				FW_B	<=	1'b0;
				FW_G1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd847) begin
				FW_B	<=	1'b1;
				FW_G1 <= 1'b1;
				end	
			if (second_32 == 1'b1 && measure == 16'd851) begin
				FW_B	<=	1'b0;
				FW_G1 <= 1'b0;
				FW_C1	<= 1'b1;
				FW_A1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd853) begin
				FW_C1	<= 1'b0;
				FW_A1 <= 1'b0;
				FW_B	<=	1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd861) begin
				FW_B	<=	1'b0;
				FW_G1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd863) begin
				FW_C1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
			
			if (second_32 == 1'b1 && measure == 16'd865) begin			// 28 - 865
				FW_D1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd869) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd871) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd875) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_A	<= 1'b1;
				FW_F1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd879) begin
				FW_A	<= 1'b0;
				FW_F1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd885) begin
				FW_G	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_F	<= 1'b1;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd889) begin
				FW_F	<= 1'b0;
				FW_D1 <= 1'b0;
				FW_E	<= 1'b1;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd893) begin
				FW_E	<= 1'b0;
				FW_C1 <= 1'b0;
				FW_G	<= 1'b1;
				FW_D1 <= 1'b1;
				end	
			
			if (second_32 == 1'b1 && measure == 16'd903) begin			// 29 - 896
				FW_G	<= 1'b0;
				FW_D1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd921) begin
				FW_Gs <= 1'b1;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd923) begin
				FW_Gs <= 1'b0;
				FW_E1 <= 1'b0;
				FW_D1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd925) begin
				FW_D1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd927) begin
				FW_C1 <= 1'b0;
				FW_B  <= 1'b1;
				end
				
			if (second_32 == 1'b1 && measure == 16'd929) begin			// 30 - 929
				FW_B <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd932) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd933) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd934) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd935) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd938) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd939) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd945) begin
				FW_C1 <= 1'b0;
				FW_B <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd949) begin
				FW_B <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd953) begin
				FW_C1 <= 1'b0;
				FW_E1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd957) begin
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd960) begin
				FW_G1 <= 1'b0;
				end
			
			if (second_32 == 1'b1 && measure == 16'd961) begin			// 31 - 961
				FW_C1	<= 1'b1;
				FW_E1 <= 1'b1;
				FW_G1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd973) begin
				FW_C1	<= 1'b0;
				FW_E1 <= 1'b0;
				FW_G1 <= 1'b0;
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd974) begin
				FW_C1 <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd975) begin
				FW_C1 <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd989) begin
				FW_C1 <= 1'b0;
				end
				
			if (second_32 == 1'b1 && measure == 16'd993) begin			// 32 - 993
				FW_C	<= 1'b1;
				FW_G  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd1008) begin
				FW_C	<= 1'b0;
				FW_G  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd1017) begin
				FW_D	<= 1'b1;
				FW_B  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd1021) begin
				FW_D	<= 1'b0;
				FW_B  <= 1'b0;
				FW_E	<= 1'b1;
				FW_C1  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd1022) begin
				FW_E	<= 1'b0;
				FW_C1  <= 1'b0;
				end
			if (second_32 == 1'b1 && measure == 16'd1023) begin
				FW_E	<= 1'b1;
				FW_C1  <= 1'b1;
				end
			if (second_32 == 1'b1 && measure == 16'd1039) begin
				FW_E	<= 1'b0;
				FW_C1  <= 1'b0;
				end
			end
			
//////////////////////////////////////////////////////////////
//																				//
//                  WEIGHT OF THE WORLD							//
//						  		  ~ END ~			  						//
//																				//
//////////////////////////////////////////////////////////////	