// This module updates the time variables
// It will update the corrected time on the PPS, or on the backup if GPS is lost

module clock_counter(
	input clk, // Input clk
	input reset, // Reset button
	input pps_in, // pps_single_clk input
	// Input from time_correction module
	input[3:0] sec_1_in,
	input[2:0] sec_2_in,
	input[3:0] min_1_in,
	input[2:0] min_2_in,
	input[3:0] hour_1_in,
	input[1:0] hour_2_in,
	// Final output time
	output reg[3:0] sec_1,
	output reg[2:0] sec_2,
	output reg[3:0] min_1,
	output reg[2:0] min_2,
	output reg[3:0] hour_1,
	output reg[1:0] hour_2,
	input backup_sec // Backup signal from ms_counter
);


	always @(posedge clk or negedge reset) begin
		if(reset == 0) begin // Defualt to 12:00:00 at startup
			sec_1 <= 0;
			sec_2 <= 0;
			min_1 <= 0;
			min_2 <= 0;
			hour_1 <= 2;
			hour_2 <= 1;
		end else begin
			if(pps_in == 1) begin // If GPS 1PPS is recieved update the time based on that
				sec_1 <= sec_1_in;
				sec_2 <= sec_2_in;
				min_1 <= min_1_in;
				min_2 <= min_2_in;
				hour_1 <= hour_1_in;
				hour_2 <= hour_2_in;
			end else if(backup_sec == 1) begin // If GPS is lost update time based on backup signal
				if(sec_1 == 9) begin
					sec_1 <= 0;
					if(sec_2 == 5) begin
						sec_2 <= 0;
						if(min_1 == 9) begin
							min_1 <= 0;
							if(min_2 == 5) begin
								min_2 <= 0;
								if(hour_1 == 9) begin
									hour_1 <= 0;
									hour_2 <= 1;
								end else if(hour_1 == 0 && hour_2 == 1) begin
									hour_1 <= 1;
									hour_2 <= 1;
								end else if(hour_1 == 1 && hour_2 == 0) begin
									hour_1 <= 2;
									hour_2 <= 0;
								end else if(hour_1 == 1 && hour_2 == 1) begin
									hour_1 <= 2;
									hour_2 <= 1;
								end else if(hour_1 == 2 && hour_2 == 1) begin
									hour_1 <= 1;
									hour_2 <= 0;
								end else begin
									hour_1 <= hour_1 + 1'b1;
									hour_2 <= 0;
								end
							end else begin
								min_2 <= min_2 + 1'b1;
							end
						end else begin
							min_1 <= min_1 + 1'b1;
						end
					end else begin
						sec_2 <= sec_2 + 1'b1;
					end
				end else begin
					sec_1 <= sec_1 + 1'b1;
				end
			end else begin // Do nothing if no signal recieved
				
			end

		end
	end


endmodule
