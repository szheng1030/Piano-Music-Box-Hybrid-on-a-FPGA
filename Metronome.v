module Metronome(
	input clock,
	input reset,
	output reg second_wotw,
	output reg second_juss
	);
	
	reg [31:0] counter_wotw;
	reg [31:0] counter_juss;
	
	always@(posedge clock) begin
		if (reset) begin
			counter_wotw <= 32'b0;
			counter_juss <= 32'b0;
			second_wotw <= 1'b0;
			second_juss <= 1'b0;
			end
		else begin
			counter_wotw <= counter_wotw + 1'b1;
			counter_juss <= counter_juss + 1'b1;
			
			if (counter_wotw >= 32'd5000000) begin
				second_wotw <= 1'b1;
				counter_wotw <= 32'b0;
				end
			else begin
				second_wotw <= 1'b0;
				end
				
			if (counter_juss >= 32'd2000000) begin
				second_juss <= 1'b1;
				counter_juss <= 32'b0;
				end
			else begin
				second_juss <= 1'b0;
				end
				
			end
		end
endmodule 
	