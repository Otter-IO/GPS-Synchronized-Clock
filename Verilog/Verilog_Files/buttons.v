// Module that handles the three buttons (with debouncing)
// Note: misc_button is not current used for any functions

module buttons(
		input clk,
		input reset,
		input time_button,
		input brightness_button,
		input misc_button,
		output reg[2:0] bright, // Variable to set brightness level
		output reg[3:0] time_offset
	);
	
	// Variables to handle debouncing of buttons
	reg bb_debounce;
	reg[16:0] bb_count;
	reg tb_debounce;
	reg[16:0] tb_count;
	
	always @(posedge clk or negedge reset) begin // Increase Brightness level when button is pressed (with debouncing)
		if(reset == 0) begin
			bright <= 4;
			bb_debounce <= 0;
			bb_count <= 0;
		end else begin
			if(brightness_button == 1 && bb_debounce == 0) begin
				bb_debounce <= 1;
			end else if(brightness_button == 0 && bb_debounce == 1) begin
				if(bb_count >= 17'd100_000)begin
					bb_debounce <= 0;
					bb_count <= 0;
					case(bright)
						0: bright <= 1;
						1: bright <= 2;
						2: bright <= 3;
						3: bright <= 4;
						4: bright <= 0;
						default: bright <= 4;
					endcase
				end else begin
					bb_count <= bb_count + 1;
				end
			end else if(brightness_button == 1 && bb_debounce == 1) begin
				bb_count <= 0;
			end else begin
				bb_debounce <= 0;
				bb_count <= 0;
			end
		end
	end
	
	
	always @(posedge clk or negedge reset) begin // Increase Time Offset when button is pressed (with debouncing)
		if(reset == 0) begin
			time_offset <= 0;
			tb_debounce <= 0;
			tb_count <= 0;
		end else begin
			if(time_button == 1 && tb_debounce == 0) begin
				tb_debounce <= 1;
			end else if(time_button == 0 && tb_debounce == 1) begin
				if(tb_count >= 17'd100_000)begin
					tb_debounce <= 0;
					tb_count <= 0;
					case(time_offset)
						0: time_offset <= 1;
						1: time_offset <= 2;
						2: time_offset <= 3;
						3: time_offset <= 4;
						4: time_offset <= 5;
						5: time_offset <= 6;
						6: time_offset <= 7;
						7: time_offset <= 8;
						8: time_offset <= 9;
						9: time_offset <= 10;
						10: time_offset <= 11;
						11: time_offset <= 0;
						default: time_offset <= 0;
					endcase
				end else begin
					tb_count <= tb_count + 1;
				end
			end else if(time_button == 1 && tb_debounce == 1) begin
				tb_count <= 0;
			end else begin
				tb_debounce <= 0;
				tb_count <= 0;
			end
		end
	end
	
endmodule
