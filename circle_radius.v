module circle_radius(
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
	output reg [6:0]new_r1,
	output reg [6:0]new_r2
	);
	
	wire [41:0]FW_Gates;
	assign FW_Gates = {FW_1C,FW_1Df,FW_1D,FW_1Ef,FW_1E,FW_1F,FW_1Gf,FW_1G,FW_1Af,FW_1A,FW_1Bf,FW_1B,
								FW_C,FW_Df,FW_D,FW_Ef,FW_E,FW_F,FW_Gf,FW_G,FW_Af,FW_A,FW_Bf,FW_B,	
								FW_C1,FW_D1f,FW_D1,FW_E1f,FW_E1,FW_F1,FW_G1f,FW_G1,FW_A1f,FW_A1,FW_B1f,FW_B1,
								FW_C2,FW_D2f,FW_D2,FW_E2f,FW_E2,FW_F2};
	
	reg [6:0]rad_high;	//higher note radius
	reg [6:0]rad_low;		//lower note radius
	reg [20:0]counter;
	
	//get the radius and frequencies
	always @ (posedge clock) begin
		if (reset) begin
			rad_high <= 0;
			rad_low <= 0;
			counter <= 21'd800278;
		end
		counter <= counter - 1;
		//all frequencies that are currently playing
		if (FW_1C) begin
			if (^(FW_Gates)) begin					//one note being played
				rad_low <= 0;
				rad_high <= 7'd3;
			end
			if (~^FW_Gates) begin
				rad_low <= 7'd3;
			end
		end
		if (FW_1D || FW_1Df) begin
			if (^FW_Gates) begin				
				rad_low <= 0 ;
				rad_high <= 7'd5;
			end
			else begin								//two notes being played
				if (^FW_Gates[41:39]) begin	//lowest frequency being played
					rad_low <= 7'd5;
				end
				else begin
					rad_high <= 7'd5;		//higher frequency being played
				end
			end
		end
		if (FW_1E || FW_1Ef) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd7;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:37]) begin
					rad_low <= 7'd7;
				end
				else begin
					rad_high <= 7'd7;
				end
			end
		end
		if (FW_1F) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd9;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:36]) begin	
					rad_low <= 7'd9;
				end
				else begin
					rad_high <= 7'd9;		
				end
			end
		end
		if (FW_1G||FW_1Gf) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd11;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:34]) begin	
					rad_low <= 7'd11;
				end
				else begin
					rad_high <= 7'd11;		
				end
			end
		end
		if (FW_1A||FW_1Af) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd13;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:32]) begin	
					rad_low <= 7'd13;
				end
				else begin
					rad_high <= 7'd13;		
				end
			end
		end
		if (FW_1B||FW_1Bf) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd15;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:30]) begin	
					rad_low <= 7'd15;
				end
				else begin
					rad_high <= 7'd15;		
				end
			end
		end
		if (FW_C) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd17;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:29]) begin	
					rad_low <= 7'd17;
				end
				else begin
					rad_high <= 7'd17;		
				end
			end
		end
		if (FW_D||FW_Df) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd19;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:27]) begin	
					rad_low <= 7'd19;
				end
				else begin
					rad_high <= 7'd19;	
				end
			end
		end
		if (FW_E||FW_Ef)begin
			if (^FW_Gates) begin				
				rad_high <= 7'd21;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:25]) begin	
					rad_low <= 7'd21;
				end
				else begin
					rad_high <= 7'd21;		
				end
			end
		end
		if (FW_F) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd23;
				rad_low <= 0;
			end
			else begin						
				if (^FW_Gates[41:24]) begin	
					rad_low <= 7'd23;
				end
				else begin
					rad_high <= 7'd23;		
				end
			end
		end
		if (FW_G || FW_Gf) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd25;
				rad_low <= 0;
			end
			else begin							
				if (^FW_Gates[41:22]) begin	
					rad_low <= 7'd25;
				end
				else begin
					rad_high <= 7'd25;	
				end
			end
		end
		if (FW_A || FW_Af) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd27;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:20]) begin
					rad_low <= 7'd27;
				end
				else begin
					rad_high <= 7'd27;	
				end
			end
		end
		if (FW_B || FW_Bf) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd29;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:18]) begin	
					rad_low <= 7'd29;
				end
				else begin
					rad_high <= 7'd29;		
				end
			end
		end
		if (FW_C1) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd31;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:17]) begin	
					rad_low <= 7'd31;
				end
				else begin
					rad_high <= 7'd31;	
				end
			end
		end
		if (FW_D1 || FW_D1f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd33;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:15]) begin	
					rad_low <= 7'd33;
				end
				else begin
					rad_high <= 7'd33;
				end
			end
		end
		if (FW_E1 || FW_E1f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd35;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:13]) begin	
					rad_low <= 7'd35;
				end
				else begin
					rad_high <= 7'd35;	
				end
			end
		end
		if (FW_F1) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd37;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:12]) begin
					rad_low <= 7'd37;
				end
				else begin
					rad_high <= 7'd37;
				end
			end
		end
		if (FW_G1 || FW_G1f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd39;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:10]) begin
					rad_low <= 7'd39;
				end
				else begin
					rad_high <= 7'd39;	
				end
			end
		end
		if (FW_A1 || FW_A1f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd41;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:8]) begin	
					rad_low <= 7'd41;
				end
				else begin
					rad_high <= 7'd41;		
				end
			end
		end
		if (FW_B1 || FW_B1f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd43;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:6]) begin
					rad_low <= 7'd43;
				end
				else begin
					rad_high <= 7'd43;
				end
			end
		end
		if (FW_C2) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd45;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:5]) begin	
					rad_low <= 7'd45;
				end
				else begin
					rad_high <= 7'd45;
				end
			end
		end
		if (FW_D2 || FW_D2f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd47;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:3]) begin	
					rad_low <= 7'd47;
				end
				else begin
					rad_high <= 7'd47;		
				end
			end
		end
		if (FW_E2 || FW_E2f) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd49;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates[41:1]) begin
					rad_low <= 7'd49;
				end
				else begin
					rad_high <= 7'd49;
				end
			end
		end
		if (FW_F2) begin
			if (^FW_Gates) begin				
				rad_high <= 7'd51;
				rad_low <= 0;
			end
			else begin								
				if (^FW_Gates) begin	
					rad_low <= 7'd51;
				end
				else begin
					rad_high <= 7'd51;
				end
			end
		end
		if (counter == 0) begin
			counter <= 21'd800278;
			if (new_r1 != rad_high) begin
				if (new_r1 < rad_high) begin
					new_r1 <= new_r1 + 1;
				end
				else begin
					new_r1 <= new_r1 - 1;
				end
			end
			else begin
				new_r1 <= rad_high;
			end
			if (new_r2 != rad_low) begin
				if (new_r2 < rad_low) begin
					new_r2 <= new_r2 + 1;
				end
				else begin
					new_r2 <= new_r2 - 1;
				end
			end
			else begin
				new_r2 <= rad_low;
			end
		end
	end
	
	//assign new_r1 = (rad_high == old_r1) ? rad_high : old_r1 + 1;
	//assign new_r2 = (rad_low == old_r2) ? rad_high : old_r2 + 1;
	//assign new_r1 = rad_high;
	//assign new_r2 = rad_low;
	
endmodule
