module playsequence(
		input clock,
		input reset,
		input play_seq,
		output [9:0] note_gates
		);
		//currently only plays sequence from one RAM
		//figure out how to input certain memory blocks
		
		
		reg [5:0] address;
		reg [31:0] counter;
		
		always@(posedge clock)begin

		if (reset) begin
			address <= 6'b0;
			counter <= 32'd6250000;
			end
		if (play_seq) begin
			counter <= counter - 1'b1;
			if (counter == 0) begin
				counter <= 32'd6250000;
				address <= address + 1;
				end
			if (address == 6'b111111) begin
				address <= 6'b0;
				end
			
		end
	end
		
	sequence_ram s1(address, clock, note_sequence, 0, note_gates);
		
endmodule
		
		