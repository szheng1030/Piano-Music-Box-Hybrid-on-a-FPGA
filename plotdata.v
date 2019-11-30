module plotdata(
	input clock,
	input reset,
	input [6:0]radius1,
	input [6:0]radius2,
	output reg [7:0] x,
	output reg [6:0] y,
	output reg [23:0] c,
	output plotEn);

	reg [7:0] buffer_x, buffer_y, counter_x, counter_y;
   reg [23:0] buffer_c;
	reg [20:0]counter;
	reg [7:0]x_middle, y_middle;
	
	localparam limit_x = 8'b10100000 - 1;
   localparam limit_y = 8'b01111000 - 1;
	localparam limit_x_half = (limit_x + 1)/2;
	localparam limit_y_half = (limit_y + 1)/2;
	
	assign plotEn = (counter == 0) ? 1:0;
	
	always@(posedge clock) begin
        if(reset) begin
            counter_x <= 8'b0;
            counter_y <= 8'b0;
            buffer_x <= 8'b0;
            buffer_y <= 7'b0;
				buffer_c <= 24'HFF0000;
            x <= 8'b0;
            y <= 7'b0;
            c <= 24'HFF0000;
				x_middle <= 0;
				y_middle <= 0;
				counter <= 20'b11000011010100000000;
        end
        else begin
				if (!plotEn) begin
					counter <= counter - 1;
				end
            if(plotEn) begin
					 x_middle <= (limit_x_half > x)? (limit_x_half - x):(x - limit_x_half);
					 y_middle <= (limit_y_half > y)? (limit_y_half - y):(y - limit_y_half);
                if((counter_x < limit_x) && (counter_y <= limit_y)) begin
                    x <= buffer_x + counter_x;
                    y <= buffer_y + counter_y;
                    counter_x <= counter_x + 1;
                end
                if((counter_x == limit_x) && (counter_y < limit_y)) begin
                    counter_y <= counter_y + 1;
                    counter_x <= 0;
                end
					 if ((counter_x == limit_x) && (counter_y == limit_y)) begin
							counter_x <= 0;
							counter_y <= 0;
							counter <= 20'b11000011010100000000;
					 end
					 if ((counter_x == 0) && (counter_y == 0)) begin
							if (buffer_c[23:16] > 0 && buffer_c[7:0] == 0) begin
								buffer_c[23:16] <= buffer_c[23:16] - 1;		//changes red value
								buffer_c[15:8] <= buffer_c[15:8] + 1;			//changes green value
							end
							if (buffer_c[15:8] > 0 && buffer_c[23:16] == 0) begin
								buffer_c[15:8] <= buffer_c[15:8] - 1;
								buffer_c[7:0] <= buffer_c[7:0] + 1;
							end
							if (buffer_c[7:0] > 0 && buffer_c[15:8] == 0) begin
								buffer_c[23:16] <= buffer_c[23:16] + 1;
								buffer_c[7:0] <= buffer_c[7:0] - 1;
							end
					 end
					 if ((({8'b0,x_middle}**2) + ({8'b0,y_middle}**2)) > {8'b0,radius1}**2) begin
							if ((x > 8'd5) && (x < 8'd16) && (y > limit_y - (radius1*2))) begin
								c <= buffer_c;
							end
							else begin
								if ((x < limit_x - 8'd5) && (x+1 > limit_x - 8'd16) && (y > limit_y - (radius2*2))) begin
									c <= buffer_c;
								end
								else begin
									c <= 24'b0;
								end
							end
					 end
					 if (((({8'b0,x_middle}**2) + ({8'b0,y_middle}**2)) <= {8'b0,radius1}**2) &&  ((({8'b0,x_middle} ** 2) + ({8'b0,y_middle} ** 2)) > {8'b0,radius2}**2)) begin
							c <= buffer_c;
					 end
					 if ((({8'b0,x_middle}**2) + ({8'b0,y_middle}**2)) < {8'b0,radius2}**2) begin
							c <= 24'HFFFFFF;
					 end
            end
        end
    end
		
endmodule 