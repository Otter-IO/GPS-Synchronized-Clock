// This module reads the GPS UART data and stores the time data

module GPS_Clock_Data(
        input clk, // Input clk
        input reset, // Reset button
        input pps_in, // pps_single_clk input
        input gps_tx_in, // UART_TX from GPS unit
		  // GPS time in binary format
        output reg[3:0] sec_1,
		  output reg[2:0] sec_2,
		  output reg[3:0] min_1,
		  output reg[2:0] min_2,
		  output reg[3:0] hour_1,
		  output reg[1:0] hour_2,
		  
		  output reg pps_single_clk // 1PPS signal modified for only 1 clk cycle (instead of 100ms)
    );
	
	wire[7:0] parallel_data; // 8-bit ASCII value from UART decoder
	wire new_data; // Flag that new data is availble from UART decoder
	
	reg[3:0] data_count; // Number of bytes recived for UART decoder
	reg data_count_once; // Allows for increasing counter only once per new data
	reg start_collecting; // Flag that GPS data is available
	
	reg[7:0] time_ram[0:5]; // Ram that stores ASCII values for time
	
	// Use UART decoder
	UART_RX UART_RX_inst(
        .uart_rx (gps_tx_in), 
        .clk (clk), 
        .reset (reset), 
        .data_out(parallel_data),
        .new_data (new_data));
	
	reg pps_tripped; // Flag for pps_single_clk
	
	always @(posedge clk or negedge reset) begin // Convert PPS signal from GPS into a pulse of one clk width (instead of 100ms)
		if(reset == 0) begin
			pps_tripped <= 0;
			pps_single_clk <= 0;
		end else begin
			if(pps_in == 1 && pps_tripped == 0) begin
				pps_tripped <= 1;
				pps_single_clk <= 1;
			end else if(pps_in == 1 && pps_tripped == 1) begin
				pps_tripped <= 1;
				pps_single_clk <= 0;
			end else begin
				pps_tripped <= 0;
				pps_single_clk <= 0;
			end
		end
	end
	
	always @(posedge clk or negedge reset) begin
		if(reset == 0) begin
			data_count <= 0;
			start_collecting <= 0;
			time_ram[0] <= 8'h30;
			time_ram[1] <= 8'h30;
			time_ram[2] <= 8'h30;
			time_ram[3] <= 8'h30;
			time_ram[4] <= 8'h30;
			time_ram[5] <= 8'h30;
			data_count_once <= 1;
		end else begin
			
			// Set flag that GPS data is available if PPS signal is recived
			if(pps_single_clk == 1 && start_collecting == 0) begin
				start_collecting <= 1;
			end else if(start_collecting == 1 && data_count < 13) begin
				start_collecting <= 1;
			end else begin
				start_collecting <= 0;
			end
			
			// Store bytes 7-12 of UART data (which contain time), then stop collecting data
			if(start_collecting == 1) begin
				if(new_data == 1) begin
					case(data_count)
						7: time_ram[0] <= parallel_data;
						8: time_ram[1] <= parallel_data;
						9: time_ram[2] <= parallel_data;
						10: time_ram[3] <= parallel_data;
						11: time_ram[4] <= parallel_data;
						12: time_ram[5] <= parallel_data; // Add default?
					endcase
					data_count_once <= 0;
					data_count <= data_count;
				end else begin
					if(data_count_once == 0) begin
						data_count <= data_count + 1'b1;
						data_count_once <= 1;
					end else begin
						data_count <= data_count;
						data_count_once <= data_count_once;
					end
				end
			end else begin
				data_count_once <= 1;
				data_count <= 0;
			end
			
		end
	end
	
	// Convert ASCII time values into binary values
	always @(*) begin
		case(time_ram[5])
			8'h30: sec_1 = 0;
			8'h31: sec_1 = 1;
			8'h32: sec_1 = 2;
			8'h33: sec_1 = 3;
			8'h34: sec_1 = 4;
			8'h35: sec_1 = 5;
			8'h36: sec_1 = 6;
			8'h37: sec_1 = 7;
			8'h38: sec_1 = 8;
			8'h39: sec_1 = 9;
			default: sec_1 = 0;
		endcase
		
		case(time_ram[4])
			8'h30: sec_2 = 0;
			8'h31: sec_2 = 1;
			8'h32: sec_2 = 2;
			8'h33: sec_2 = 3;
			8'h34: sec_2 = 4;
			8'h35: sec_2 = 5;
			default: sec_2 = 0;
		endcase
		
		case(time_ram[3])
			8'h30: min_1 = 0;
			8'h31: min_1 = 1;
			8'h32: min_1 = 2;
			8'h33: min_1 = 3;
			8'h34: min_1 = 4;
			8'h35: min_1 = 5;
			8'h36: min_1 = 6;
			8'h37: min_1 = 7;
			8'h38: min_1 = 8;
			8'h39: min_1 = 9;
			default: min_1 = 0;
		endcase
		
		case(time_ram[2])
			8'h30: min_2 = 0;
			8'h31: min_2 = 1;
			8'h32: min_2 = 2;
			8'h33: min_2 = 3;
			8'h34: min_2 = 4;
			8'h35: min_2 = 5;
			default: min_2 = 0;
		endcase
		
		case(time_ram[1])
			8'h30: hour_1 = 0;
			8'h31: hour_1 = 1;
			8'h32: hour_1 = 2;
			8'h33: hour_1 = 3;
			8'h34: hour_1 = 4;
			8'h35: hour_1 = 5;
			8'h36: hour_1 = 6;
			8'h37: hour_1 = 7;
			8'h38: hour_1 = 8;
			8'h39: hour_1 = 9;
			default: hour_1 = 0;
		endcase
		
		case(time_ram[0])
			8'h30: hour_2 = 0;
			8'h31: hour_2 = 1;
			8'h32: hour_2 = 2;
			default: min_2 = 0;
		endcase
	end
	
	 
endmodule
