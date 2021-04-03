// This module adds 1 to the time gathered from GPS so that the predicted time
// can be displayed right when 1PPS signal is recieved (prevents UART delay)
// It also converts UTC time to 12 hour CST(UTC-6)

module time_correction(
		// Input time from GPS data
		input[3:0] sec_1_in,
		input[2:0] sec_2_in,
		input[3:0] min_1_in,
		input[2:0] min_2_in,
		input[3:0] hour_1_in,
		input[1:0] hour_2_in,
		input[3:0] time_offset,
		// Output time after correction
		output reg[3:0] sec_1_out,
		output reg[2:0] sec_2_out,
		output reg[3:0] min_1_out,
		output reg[2:0] min_2_out,
		output reg[3:0] hour_1_out,
		output reg[1:0] hour_2_out
	);
	
	// Hour intermediates to allow time zone corecction
	reg[3:0] hour_1_inter;
	reg[1:0] hour_2_inter;
	
	
	// Logic to add 1 second to time collected from GPS module
	always @(*) begin
		if(sec_1_in == 9) begin
			sec_1_out = 0;
			if(sec_2_in == 5) begin
				sec_2_out = 0;
				if(min_1_in == 9) begin
					min_1_out = 0;
					if(min_2_in == 5) begin
						min_2_out = 0;
						if(hour_2_in == 2 && hour_1_in == 3) begin
							hour_2_inter = 0;
							hour_1_inter = 0;
						end else if(hour_2_in == 0 && hour_1_in == 9) begin
							hour_2_inter = 1;
							hour_1_inter = 0;
						end else if(hour_2_in == 1 && hour_1_in == 9) begin
							hour_2_inter = 2;
							hour_1_inter = 0;
						end else begin
							hour_2_inter = hour_2_in;
							hour_1_inter = hour_1_in + 1'b1;
						end
					end else begin
						min_2_out = min_2_in + 1'b1;
						hour_1_inter = hour_1_in;
						hour_2_inter = hour_2_in;
					end
				end else begin
					min_1_out = min_1_in + 1'b1;
					min_2_out = min_2_in;
					hour_1_inter = hour_1_in;
					hour_2_inter = hour_2_in;
				end
			end else begin
				sec_2_out = sec_2_in + 1'b1;
				min_1_out = min_1_in;
				min_2_out = min_2_in;
				hour_1_inter = hour_1_in;
				hour_2_inter = hour_2_in;
			end
		end else begin
			sec_1_out = sec_1_in + 1'b1;
			sec_2_out = sec_2_in;
			min_1_out = min_1_in;
			min_2_out = min_2_in;
			hour_1_inter = hour_1_in;
			hour_2_inter = hour_2_in;
		end
	end
	
	// Convert hours from UTC time to 12-hour time (Defaults to CST(+6:00) w/o Daylight Saving)
	always @(*) begin
		if((hour_2_inter == 0 && hour_1_inter == 0) || (hour_2_inter == 1 && hour_1_inter == 2)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 6; end
				1: begin hour_2_out = 0; hour_1_out = 7; end
				2: begin hour_2_out = 0; hour_1_out = 8; end
				3: begin hour_2_out = 0; hour_1_out = 9; end
				4: begin hour_2_out = 1; hour_1_out = 0; end
				5: begin hour_2_out = 1; hour_1_out = 1; end
				6: begin hour_2_out = 1; hour_1_out = 2; end
				7: begin hour_2_out = 0; hour_1_out = 1; end
				8: begin hour_2_out = 0; hour_1_out = 2; end
				9: begin hour_2_out = 0; hour_1_out = 3; end
				10: begin hour_2_out = 0; hour_1_out = 4; end
				11: begin hour_2_out = 0; hour_1_out = 5; end
				default: begin hour_2_out = 0; hour_1_out = 6; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 1) || (hour_2_inter == 1 && hour_1_inter == 3)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 7; end
				1: begin hour_2_out = 0; hour_1_out = 8; end
				2: begin hour_2_out = 0; hour_1_out = 9; end
				3: begin hour_2_out = 1; hour_1_out = 0; end
				4: begin hour_2_out = 1; hour_1_out = 1; end
				5: begin hour_2_out = 1; hour_1_out = 2; end
				6: begin hour_2_out = 0; hour_1_out = 1; end
				7: begin hour_2_out = 0; hour_1_out = 2; end
				8: begin hour_2_out = 0; hour_1_out = 3; end
				9: begin hour_2_out = 0; hour_1_out = 4; end
				10: begin hour_2_out = 0; hour_1_out = 5; end
				11: begin hour_2_out = 0; hour_1_out = 6; end
				default: begin hour_2_out = 0; hour_1_out = 7; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 2) || (hour_2_inter == 1 && hour_1_inter == 4)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 8; end
				1: begin hour_2_out = 0; hour_1_out = 9; end
				2: begin hour_2_out = 1; hour_1_out = 0; end
				3: begin hour_2_out = 1; hour_1_out = 1; end
				4: begin hour_2_out = 1; hour_1_out = 2; end
				5: begin hour_2_out = 0; hour_1_out = 1; end
				6: begin hour_2_out = 0; hour_1_out = 2; end
				7: begin hour_2_out = 0; hour_1_out = 3; end
				8: begin hour_2_out = 0; hour_1_out = 4; end
				9: begin hour_2_out = 0; hour_1_out = 5; end
				10: begin hour_2_out = 0; hour_1_out = 6; end
				11: begin hour_2_out = 0; hour_1_out = 7; end
				default: begin hour_2_out = 0; hour_1_out = 8; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 3) || (hour_2_inter == 1 && hour_1_inter == 5)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 9; end
				1: begin hour_2_out = 1; hour_1_out = 0; end
				2: begin hour_2_out = 1; hour_1_out = 1; end
				3: begin hour_2_out = 1; hour_1_out = 2; end
				4: begin hour_2_out = 0; hour_1_out = 1; end
				5: begin hour_2_out = 0; hour_1_out = 2; end
				6: begin hour_2_out = 0; hour_1_out = 3; end
				7: begin hour_2_out = 0; hour_1_out = 4; end
				8: begin hour_2_out = 0; hour_1_out = 5; end
				9: begin hour_2_out = 0; hour_1_out = 6; end
				10: begin hour_2_out = 0; hour_1_out = 7; end
				11: begin hour_2_out = 0; hour_1_out = 8; end
				default: begin hour_2_out = 0; hour_1_out = 9; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 4) || (hour_2_inter == 1 && hour_1_inter == 6)) begin
			case(time_offset)
				0: begin hour_2_out = 1; hour_1_out = 0; end
				1: begin hour_2_out = 1; hour_1_out = 1; end
				2: begin hour_2_out = 1; hour_1_out = 2; end
				3: begin hour_2_out = 0; hour_1_out = 1; end
				4: begin hour_2_out = 0; hour_1_out = 2; end
				5: begin hour_2_out = 0; hour_1_out = 3; end
				6: begin hour_2_out = 0; hour_1_out = 4; end
				7: begin hour_2_out = 0; hour_1_out = 5; end
				8: begin hour_2_out = 0; hour_1_out = 6; end
				9: begin hour_2_out = 0; hour_1_out = 7; end
				10: begin hour_2_out = 0; hour_1_out = 8; end
				11: begin hour_2_out = 0; hour_1_out = 9; end
				default: begin hour_2_out = 1; hour_1_out = 0; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 5) || (hour_2_inter == 1 && hour_1_inter == 7)) begin
			case(time_offset)
				0: begin hour_2_out = 1; hour_1_out = 1; end
				1: begin hour_2_out = 1; hour_1_out = 2; end
				2: begin hour_2_out = 0; hour_1_out = 1; end
				3: begin hour_2_out = 0; hour_1_out = 2; end
				4: begin hour_2_out = 0; hour_1_out = 3; end
				5: begin hour_2_out = 0; hour_1_out = 4; end
				6: begin hour_2_out = 0; hour_1_out = 5; end
				7: begin hour_2_out = 0; hour_1_out = 6; end
				8: begin hour_2_out = 0; hour_1_out = 7; end
				9: begin hour_2_out = 0; hour_1_out = 8; end
				10: begin hour_2_out = 0; hour_1_out = 9; end
				11: begin hour_2_out = 1; hour_1_out = 0; end
				default: begin hour_2_out = 1; hour_1_out = 1; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 6) || (hour_2_inter == 1 && hour_1_inter == 8)) begin
			case(time_offset)
				0: begin hour_2_out = 1; hour_1_out = 2; end
				1: begin hour_2_out = 0; hour_1_out = 1; end
				2: begin hour_2_out = 0; hour_1_out = 2; end
				3: begin hour_2_out = 0; hour_1_out = 3; end
				4: begin hour_2_out = 0; hour_1_out = 4; end
				5: begin hour_2_out = 0; hour_1_out = 5; end
				6: begin hour_2_out = 0; hour_1_out = 6; end
				7: begin hour_2_out = 0; hour_1_out = 7; end
				8: begin hour_2_out = 0; hour_1_out = 8; end
				9: begin hour_2_out = 0; hour_1_out = 9; end
				10: begin hour_2_out = 1; hour_1_out = 0; end
				11: begin hour_2_out = 1; hour_1_out = 1; end
				default: begin hour_2_out = 1; hour_1_out = 2; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 7) || (hour_2_inter == 1 && hour_1_inter == 9)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 1; end
				1: begin hour_2_out = 0; hour_1_out = 2; end
				2: begin hour_2_out = 0; hour_1_out = 3; end
				3: begin hour_2_out = 0; hour_1_out = 4; end
				4: begin hour_2_out = 0; hour_1_out = 5; end
				5: begin hour_2_out = 0; hour_1_out = 6; end
				6: begin hour_2_out = 0; hour_1_out = 7; end
				7: begin hour_2_out = 0; hour_1_out = 8; end
				8: begin hour_2_out = 0; hour_1_out = 9; end
				9: begin hour_2_out = 1; hour_1_out = 0; end
				10: begin hour_2_out = 1; hour_1_out = 1; end
				11: begin hour_2_out = 1; hour_1_out = 2; end
				default: begin hour_2_out = 0; hour_1_out = 1; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 8) || (hour_2_inter == 2 && hour_1_inter == 0)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 2; end
				1: begin hour_2_out = 0; hour_1_out = 3; end
				2: begin hour_2_out = 0; hour_1_out = 4; end
				3: begin hour_2_out = 0; hour_1_out = 5; end
				4: begin hour_2_out = 0; hour_1_out = 6; end
				5: begin hour_2_out = 0; hour_1_out = 7; end
				6: begin hour_2_out = 0; hour_1_out = 8; end
				7: begin hour_2_out = 0; hour_1_out = 9; end
				8: begin hour_2_out = 1; hour_1_out = 0; end
				9: begin hour_2_out = 1; hour_1_out = 1; end
				10: begin hour_2_out = 1; hour_1_out = 2; end
				11: begin hour_2_out = 0; hour_1_out = 1; end
				default: begin hour_2_out = 0; hour_1_out = 2; end
			endcase
		end else if((hour_2_inter == 0 && hour_1_inter == 9) || (hour_2_inter == 2 && hour_1_inter == 1)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 3; end
				1: begin hour_2_out = 0; hour_1_out = 4; end
				2: begin hour_2_out = 0; hour_1_out = 5; end
				3: begin hour_2_out = 0; hour_1_out = 6; end
				4: begin hour_2_out = 0; hour_1_out = 7; end
				5: begin hour_2_out = 0; hour_1_out = 8; end
				6: begin hour_2_out = 0; hour_1_out = 9; end
				7: begin hour_2_out = 1; hour_1_out = 0; end
				8: begin hour_2_out = 1; hour_1_out = 1; end
				9: begin hour_2_out = 1; hour_1_out = 2; end
				10: begin hour_2_out = 0; hour_1_out = 1; end
				11: begin hour_2_out = 0; hour_1_out = 2; end
				default: begin hour_2_out = 0; hour_1_out = 3; end
			endcase
		end else if((hour_2_inter == 1 && hour_1_inter == 0) || (hour_2_inter == 2 && hour_1_inter == 2)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 4; end
				1: begin hour_2_out = 0; hour_1_out = 5; end
				2: begin hour_2_out = 0; hour_1_out = 6; end
				3: begin hour_2_out = 0; hour_1_out = 7; end
				4: begin hour_2_out = 0; hour_1_out = 8; end
				5: begin hour_2_out = 0; hour_1_out = 9; end
				6: begin hour_2_out = 1; hour_1_out = 0; end
				7: begin hour_2_out = 1; hour_1_out = 1; end
				8: begin hour_2_out = 1; hour_1_out = 2; end
				9: begin hour_2_out = 0; hour_1_out = 1; end
				10: begin hour_2_out = 0; hour_1_out = 2; end
				11: begin hour_2_out = 0; hour_1_out = 3; end
				default: begin hour_2_out = 0; hour_1_out = 4; end
			endcase
		end else if((hour_2_inter == 1 && hour_1_inter == 1) || (hour_2_inter == 2 && hour_1_inter == 3)) begin
			case(time_offset)
				0: begin hour_2_out = 0; hour_1_out = 5; end
				1: begin hour_2_out = 0; hour_1_out = 6; end
				2: begin hour_2_out = 0; hour_1_out = 7; end
				3: begin hour_2_out = 0; hour_1_out = 8; end
				4: begin hour_2_out = 0; hour_1_out = 9; end
				5: begin hour_2_out = 1; hour_1_out = 0; end
				6: begin hour_2_out = 1; hour_1_out = 1; end
				7: begin hour_2_out = 1; hour_1_out = 2; end
				8: begin hour_2_out = 0; hour_1_out = 1; end
				9: begin hour_2_out = 0; hour_1_out = 2; end
				10: begin hour_2_out = 0; hour_1_out = 3; end
				11: begin hour_2_out = 0; hour_1_out = 4; end
				default: begin hour_2_out = 0; hour_1_out = 5; end
			endcase
		end else begin
			hour_1_out = 0;
			hour_2_out = 0;
		end
	end
	
	
	
endmodule
