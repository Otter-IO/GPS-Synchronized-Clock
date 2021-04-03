// Module to send UART data to GPS module

module gps_configuration(
		input clk,
		input reset,
		output reg gps_rx
	);
	
	always @(posedge clk or negedge reset) begin // Set RX line high since it is not currently in use
		if(reset == 0) begin
			gps_rx <= 1;
		end else begin
			gps_rx <= 1;
		end
	end
	
endmodule
