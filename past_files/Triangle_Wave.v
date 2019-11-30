module Triangle_Wave(
	input clock,
	input reset,
	input play_note,
	input [31:0]hz,
	input [3:0]duration,
	output [31:0]audio_out
	);

  localparam MINAMPLITUDE = -32'd150000000;
  localparam RISE_1 = -32'd75000000;
  localparam RISE_2 = -32'd25000000;
  localparam RISE_3 = 32'd25000000;
  localparam RISE_4 = 32'd600000000;
  localparam RISE_5 = 32'd1000000000;
  localparam RISE_6 = 32'd1200000000;
  localparam RISE_7 = 32'd1350000000;
  localparam MAXAMPLITUDE = 32'd150000000;
  localparam FALL_1 = 32'd100000000;
  localparam FALL_2 = 32'd60000000;
  localparam FALL_3 = 32'd20000000;
  localparam FALL_4 = -32'd15000000;
  localparam FALL_5 = -32'd45000000;
  localparam FALL_6 = -32'd70000000;
  localparam FALL_7 = -32'd90000000;
  localparam FALL_8 = -32'd110000000;
  localparam FALL_9 = -32'd125000000;
  localparam FALL_10 = -32'd135000000;
  localparam FALL_11 = -32'd145000000;

  reg signed [31:0] amp;
  reg [31:0] counter;
	assign audio_out[31:0] = play_note ? amp : 32'b0;

  always@(posedge clock) begin
    if (reset) begin
      amp <= 32'b0;
      counter <= hz / duration;
      end
    if (play_note) begin
		counter <= counter - 1'b1;
      if (counter > (hz / 20 * 19)) begin
        amp <= MINAMPLITUDE;
        end
      if (counter <= (hz / 20 * 19) && counter > (hz / 20 * 18)) begin
			amp <= RISE_1;
			end
		if (counter <= (hz / 20 * 18) && counter > (hz / 20 * 17)) begin
			amp <= RISE_2;
			end
		if (counter <= (hz / 20 * 17) && counter > (hz / 20 * 16)) begin
			amp <= RISE_3;
			end
		if (counter <= (hz / 20 * 16) && counter > (hz / 20 * 15)) begin
			amp <= RISE_4;
			end
		if (counter <= (hz / 20 * 15) && counter > (hz / 20 * 14)) begin
			amp <= RISE_5;
			end
		if (counter <= (hz / 20 * 14) && counter > (hz / 20 * 13)) begin
			amp <= RISE_6;
			end
		if (counter <= (hz / 20 * 13) && counter > (hz / 20 * 12)) begin
			amp <= RISE_7;
			end
		if (counter <= (hz / 20 * 12) && counter > (hz / 20 * 11)) begin
			amp <= MAXAMPLITUDE;
			end
		if (counter <= (hz / 20 * 11) && counter > (hz / 20 * 10)) begin
			amp <= FALL_1;
			end
		if (counter <= (hz / 20 * 10) && counter > (hz / 20 * 9)) begin
			amp <= FALL_2;
			end
		if (counter <= (hz / 20 * 9) && counter > (hz / 20 * 8)) begin
			amp <= FALL_3;
			end
		if (counter <= (hz / 20 * 8) && counter > (hz / 20 * 7)) begin
			amp <= FALL_4;
			end
		if (counter <= (hz / 20 * 7) && counter > (hz / 20 * 6)) begin
			amp <= FALL_5;
			end
		if (counter <= (hz / 20 * 6) && counter > (hz / 20 * 5)) begin
			amp <= FALL_6;
			end
		if (counter <= (hz / 20 * 5) && counter > (hz / 20 * 4)) begin
			amp <= FALL_7;
			end
		if (counter <= (hz / 20 * 4) && counter > (hz / 20 * 3)) begin
			amp <= FALL_8;
			end
		if (counter <= (hz / 20 * 3) && counter > (hz / 20 * 2)) begin
			amp <= FALL_9;
			end
		if (counter <= (hz / 20 * 2) && counter > (hz / 20)) begin
			amp <= FALL_10;
			end
		if (counter <= (hz / 20)) begin
			amp <= FALL_11;
			end
		if (counter == 0) begin
			counter <= hz;
			end
    end
  end
endmodule
