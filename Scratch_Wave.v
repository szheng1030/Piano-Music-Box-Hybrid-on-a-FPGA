module Scratch_Wave(
  input clock,
  input reset,
  input play_note,
  input [31:0]hz,
  output [31:0]audio_out
);

localparam AMP_1 = 32'd2620000000;
localparam AMP_2 = -32'd284000000;
localparam AMP_3 = 32'd174000000;
localparam AMP_4 = -32'd201000000;
localparam AMP_5 = 32'd000000;
localparam AMP_6 = -32'd250000000;
localparam AMP_7 = 32'd240000000;
localparam AMP_8 = -32'd230000000;
localparam AMP_9 = 32'd225000000;
localparam AMP_10 = -32'd220000000;
localparam AMP_11 = 32'd184000000;
localparam AMP_12 = -32'd241000000;
localparam AMP_13 = 32'd196000000;
localparam AMP_14 = -32'd284000000;
localparam AMP_15 = 32'd174000000;
localparam AMP_16 = -32'd275000000;
localparam AMP_17 = 32'd1970000000;
localparam AMP_18 = -32'd222000000;
localparam AMP_19 = 32'd296000000;
localparam AMP_20 = -32'd138000000;
localparam AMP_21 = 32'd227000000;
localparam AMP_22 = -32'd287000000;
localparam AMP_23 = 32'd158000000;
localparam AMP_24 = -32'd299000000;
localparam AMP_25 = 32'd182000000;
localparam AMP_26 = -32'd123000000;
localparam AMP_27 = 32'd239000000;
localparam AMP_28 = -32'd110000000;
localparam AMP_29 = 32'd238000000;
localparam AMP_30 = -32'd194000000;
localparam AMP_31 = 32'd275000000;
localparam AMP_32 = -32'd175000000;
localparam AMP_33 = 32'd295000000;
localparam AMP_34 = -32'd185000000;
localparam AMP_35 = 32'd129000000;
localparam AMP_36 = -32'd286000000;
localparam AMP_37 = 32'd68000000;
localparam AMP_38 = -32'd291000000;
localparam AMP_39 = 32'd149000000;
localparam AMP_40 = -32'd265000000;
localparam AMP_41 = 32'd102000000;
localparam AMP_42 = -32'd213000000;
localparam AMP_43 = 32'd163000000;
localparam AMP_44 = -32'd295000000;
localparam AMP_45 = 32'd35000000;
localparam AMP_46 = -32'd211000000;
localparam AMP_47 = 32'd175000000;
localparam AMP_48 = -32'd282000000;
localparam AMP_49 = 32'd149000000;
localparam AMP_50 = -32'd57000000;
localparam AMP_51 = 32'd257500000;
localparam AMP_52 = -32'd193000000;
localparam AMP_53 = 32'd105000000;
localparam AMP_54 = -32'd275000000;
localparam AMP_55 = 32'd260000000;
localparam AMP_56 = -32'd199000000;
localparam AMP_57 = 32'd57000000;
localparam AMP_58 = -32'd247000000;
localparam AMP_59 = 32'd108000000;
localparam AMP_60 = -32'd244000000;

reg signed [31:0]amp;
reg [31:0] counter;
assign audio_out[31:0] = play_note ? amp : 32'b0;

always@(posedge clock)begin
  if (reset) begin
    amp <= 32'b0;
    counter <= hz;
    end
  if (play_note) begin
    counter <= counter - 1'b1;
    if (counter > (hz / 100 * 99)) begin
      amp <= AMP_1;
      end
    if (counter <= (hz / 100 * 99) && counter > (hz / 100 * 98)) begin
      amp <= AMP_2;
      end
    if (counter <= (hz / 100 * 98) && counter > (hz / 100 * 97)) begin
      amp <= AMP_3;
      end
    if (counter <= (hz / 100 * 97) && counter > (hz / 100 * 96)) begin
      amp <= AMP_4;
      end
    if (counter <= (hz / 100 * 96) && counter > (hz / 100 * 95)) begin
      amp <= AMP_5;
      end
    if (counter <= (hz / 100 * 95) && counter > (hz / 100 * 94)) begin
      amp <= AMP_6;
      end
    if (counter <= (hz / 100 * 94) && counter > (hz / 100 * 93)) begin
      amp <= AMP_7;
      end
    if (counter <= (hz / 100 * 93) && counter > (hz / 100 * 92)) begin
      amp <= AMP_8;
      end
    if (counter <= (hz / 100 * 92) && counter > (hz / 100 * 91)) begin
      amp <= AMP_9;
      end
    if (counter <= (hz / 100 * 91) && counter > (hz / 100 * 90)) begin
      amp <= AMP_10;
      end
    if (counter <= (hz / 100 * 90) && counter > (hz / 100 * 89)) begin
      amp <= AMP_11;
      end
    if (counter <= (hz / 100 * 89) && counter > (hz / 100 * 88)) begin
      amp <= AMP_12;
      end
    if (counter <= (hz / 100 * 88) && counter > (hz / 100 * 87)) begin
      amp <= AMP_13;
      end
    if (counter <= (hz / 100 * 87) && counter > (hz / 100 * 86)) begin
      amp <= AMP_14;
      end
    if (counter <= (hz / 100 * 86) && counter > (hz / 100 * 85)) begin
      amp <= AMP_15;
      end
    if (counter <= (hz / 100 * 85) && counter > (hz / 100 * 84)) begin
      amp <= AMP_16;
      end
    if (counter <= (hz / 100 * 84) && counter > (hz / 100 * 83)) begin
      amp <= AMP_17;
      end
    if (counter <= (hz / 100 * 83) && counter > (hz / 100 * 82)) begin
      amp <= AMP_18;
      end
    if (counter <= (hz / 100 * 82) && counter > (hz / 100 * 81)) begin
      amp <= AMP_19;
      end
    if (counter <= (hz / 100 * 81) && counter > (hz / 100 * 80)) begin
      amp <= AMP_20;
      end
    if (counter <= (hz / 100 * 80) && counter > (hz / 100 * 79)) begin
      amp <= AMP_21;
      end
    if (counter <= (hz / 100 * 79) && counter > (hz / 100 * 78)) begin
      amp <= AMP_22;
      end
    if (counter <= (hz / 100 * 78) && counter > (hz / 100 * 77)) begin
      amp <= AMP_23;
      end
    if (counter <= (hz / 100 * 77) && counter > (hz / 100 * 76)) begin
      amp <= AMP_24;
      end
    if (counter <= (hz / 100 * 76) && counter > (hz / 100 * 75)) begin
      amp <= AMP_25;
      end
    if (counter <= (hz / 100 * 75) && counter > (hz / 100 * 74)) begin
      amp <= AMP_26;
      end
    if (counter <= (hz / 100 * 74) && counter > (hz / 100 * 73)) begin
      amp <= AMP_27;
      end
    if (counter <= (hz / 100 * 73) && counter > (hz / 100 * 72)) begin
      amp <= AMP_28;
      end
    if (counter <= (hz / 100 * 72) && counter > (hz / 100 * 71)) begin
      amp <= AMP_29;
      end
    if (counter <= (hz / 100 * 71) && counter > (hz / 100 * 70)) begin
      amp <= AMP_30;
      end
    if (counter <= (hz / 100 * 70) && counter > (hz / 100 * 69)) begin
      amp <= AMP_31;
      end
    if (counter <= (hz / 100 * 69) && counter > (hz / 100 * 68)) begin
      amp <= AMP_32;
      end
    if (counter <= (hz / 100 * 68) && counter > (hz / 100 * 67)) begin
      amp <= AMP_33;
      end
    if (counter <= (hz / 100 * 67) && counter > (hz / 100 * 66)) begin
      amp <= AMP_34;
      end
    if (counter <= (hz / 100 * 66) && counter > (hz / 100 * 65)) begin
      amp <= AMP_35;
      end
    if (counter <= (hz / 100 * 65) && counter > (hz / 100 * 64)) begin
      amp <= AMP_36;
      end
    if (counter <= (hz / 100 * 64) && counter > (hz / 100 * 63)) begin
      amp <= AMP_37;
      end
    if (counter <= (hz / 100 * 63) && counter > (hz / 100 * 62)) begin
      amp <= AMP_38;
      end
    if (counter <= (hz / 100 * 62) && counter > (hz / 100 * 61)) begin
      amp <= AMP_39;
      end
    if (counter <= (hz / 100 * 61) && counter > (hz / 100 * 60)) begin
      amp <= AMP_40;
      end
    if (counter <= (hz / 100 * 60) && counter > (hz / 100 * 59)) begin
      amp <= AMP_41;
      end
    if (counter <= (hz / 100 * 59) && counter > (hz / 100 * 58)) begin
      amp <= AMP_42;
      end
    if (counter <= (hz / 100 * 58) && counter > (hz / 100 * 57)) begin
      amp <= AMP_43;
      end
    if (counter <= (hz / 100 * 57) && counter > (hz / 100 * 56)) begin
      amp <= AMP_44;
      end
    if (counter <= (hz / 100 * 56) && counter > (hz / 100 * 55)) begin
      amp <= AMP_45;
      end
    if (counter <= (hz / 100 * 55) && counter > (hz / 100 * 54)) begin
      amp <= AMP_46;
      end
    if (counter <= (hz / 100 * 54) && counter > (hz / 100 * 53)) begin
      amp <= AMP_47;
      end
    if (counter <= (hz / 100 * 53) && counter > (hz / 100 * 52)) begin
      amp <= AMP_48;
      end
    if (counter <= (hz / 100 * 52) && counter > (hz / 100 * 51)) begin
      amp <= AMP_49;
      end
    if (counter <= (hz / 100 * 51) && counter > (hz / 100 * 50)) begin
      amp <= AMP_50;
      end
    if (counter <= (hz / 100 * 50) && counter > (hz / 100 * 49)) begin
      amp <= AMP_51;
      end
    if (counter <= (hz / 100 * 49) && counter > (hz / 100 * 48)) begin
      amp <= AMP_52;
      end
    if (counter <= (hz / 100 * 48) && counter > (hz / 100 * 47)) begin
      amp <= AMP_53;
      end
    if (counter <= (hz / 100 * 47) && counter > (hz / 100 * 46)) begin
      amp <= AMP_54;
      end
    if (counter <= (hz / 100 * 46) && counter > (hz / 100 * 45)) begin
      amp <= AMP_55;
      end
    if (counter <= (hz / 100 * 45) && counter > (hz / 100 * 44)) begin
      amp <= AMP_56;
      end
    if (counter <= (hz / 100 * 44) && counter > (hz / 100 * 43)) begin
      amp <= AMP_57;
      end
    if (counter <= (hz / 100 * 43) && counter > (hz / 100 * 42)) begin
      amp <= AMP_58;
      end
    if (counter <= (hz / 100 * 42) && counter > (hz / 100 * 41)) begin
      amp <= AMP_59;
      end
    if (counter <= (hz / 100 * 41) && counter > (hz / 100 * 40)) begin
      amp <= AMP_60;
      end
    if (counter <= (hz / 100 * 40)) begin
      amp <= 32'b0;
      end
    if (counter == 0) begin
      counter <= hz;
      end
  end
end
endmodule
