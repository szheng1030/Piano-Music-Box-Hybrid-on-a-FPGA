//different sounds low C to high C + bass + scratch

module recordsequence(
	input clock,
	input reset,
	input record_mode,
	input record,
	input [9:0]note_sequence,
	output [9:0]saved_sequence);
	//inputs clock, reset, recording mode, sequences and button to save sequence into memory
	
	localparam S_LOAD_NOTES = 0,
				  S_LOAD_NOTES_WAIT = 1;
	
	reg current_state, next_state;
	reg [5:0] address;
	
	reg write_en;	//enables saving of sequence to memory
	
	always@(posedge clock)begin
		if (reset) begin
			write_en <= 0;
			end
		if (record_mode) begin
			if (record) begin
				write_en <= 1;
				end
			if (!record) begin
				write_en <=0;
				end
		end
	end
	// Next state logic aka our state table
    always@(*)
    begin: state_table 
            case (current_state)
                S_LOAD_NOTES: next_state = record ? S_LOAD_NOTES_WAIT : S_LOAD_NOTES; // Loop in current state until value is input
                S_LOAD_NOTES_WAIT: next_state = record ? S_LOAD_NOTES_WAIT : S_LOAD_NOTES; // Loop in current state until go signal goes loW
            default:     next_state = S_LOAD_NOTES;
        endcase
    end // state_table
	
	// Output logic aka all of our datapath control signals
    always @(*)
    begin: enable_signals
        address = 6'b0;

        case (current_state)
            S_LOAD_NOTES: begin	//changes to next memory address once button is pressed
					if (address == 6'b111111) begin
						address <= 0;
						end
					address <= address + 1;
               end
        // default:    // don't need default since we already made sure all of our outputs were assigned a value at the start of the always block
        endcase
    end // enable_signals
	sequence_ram s1(address, clock, note_sequence, write_en, saved_sequence);
	// write to sequence of address 
endmodule
