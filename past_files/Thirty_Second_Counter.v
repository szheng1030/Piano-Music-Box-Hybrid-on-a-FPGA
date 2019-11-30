module Thirty_Second_Counter(
	input clock,
	input reset,
	input start,
	output reg [31:0]second_32
	);
	
	reg [31:0]counter_32;
	
	always@(posedge clock) begin
		if (reset) begin
			counter_32 <= 32'b0;
			second_32 <= 1'b0;
			end
		if (start) begin
			counter_32 <= counter_32 + 1'b1;
			
			if (counter_32 >= 32'd1562500) begin
				second_32 <= 1'b1;
				counter_32 <= 32'b0;
				end
			else begin
				second_32 <= 1'b0;
				end
			end
		end
endmodule
