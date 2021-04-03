// This module takes a number from 0-9 on the input and converts it to a 7 segment format on the output
// The display can be dimmed by creating a variable duty cycle on the on_signal input

module led_driver(
	input clk, // Clock Input
	input reset, // Reset Input
	input on_signal, // Toggles display on or off (0 = off, 1 = on)
	input wire[3:0] number, // Input for number to display (0-9)
	output reg[6:0] led_ff // Output registers to connect to display
);
	
	reg[6:0] led_next; // combinational register for each segment
	
	always @(posedge clk or negedge reset) begin // Set output register to combinational register
		if(reset == 0) begin
			led_ff <= 0;
		end else begin
			led_ff[0] <= led_next[0];
			led_ff[1] <= led_next[1];
			led_ff[2] <= led_next[2];
			led_ff[3] <= led_next[3];
			led_ff[4] <= led_next[4];
			led_ff[5] <= led_next[5];
			led_ff[6] <= led_next[6];
		end
	end
	
	always @(*) begin // Combinational logic
		case(on_signal)
			1'b0: begin // If on_signal is low turn off all segments
						led_next[0] = 0; led_next[1] = 0; led_next[2] = 0; led_next[3] = 0; led_next[4] = 0; led_next[5] = 0; led_next[6] = 0;
					end
			1'b1: begin // If on_signal is high set segments to correct output based on number input
						case(number)
							4'd0: begin led_next[0] = 1; led_next[1] = 1; led_next[2] = 1; led_next[3] = 1; led_next[4] = 1; led_next[5] = 1; led_next[6] = 0; end
							4'd1: begin led_next[0] = 0; led_next[1] = 1; led_next[2] = 1; led_next[3] = 0; led_next[4] = 0; led_next[5] = 0; led_next[6] = 0; end
							4'd2: begin led_next[0] = 1; led_next[1] = 1; led_next[2] = 0; led_next[3] = 1; led_next[4] = 1; led_next[5] = 0; led_next[6] = 1; end
							4'd3: begin led_next[0] = 1; led_next[1] = 1; led_next[2] = 1; led_next[3] = 1; led_next[4] = 0; led_next[5] = 0; led_next[6] = 1; end
							4'd4: begin led_next[0] = 0; led_next[1] = 1; led_next[2] = 1; led_next[3] = 0; led_next[4] = 0; led_next[5] = 1; led_next[6] = 1; end
							4'd5: begin led_next[0] = 1; led_next[1] = 0; led_next[2] = 1; led_next[3] = 1; led_next[4] = 0; led_next[5] = 1; led_next[6] = 1; end
							4'd6: begin led_next[0] = 1; led_next[1] = 0; led_next[2] = 1; led_next[3] = 1; led_next[4] = 1; led_next[5] = 1; led_next[6] = 1; end
							4'd7: begin led_next[0] = 1; led_next[1] = 1; led_next[2] = 1; led_next[3] = 0; led_next[4] = 0; led_next[5] = 0; led_next[6] = 0; end
							4'd8: begin led_next[0] = 1; led_next[1] = 1; led_next[2] = 1; led_next[3] = 1; led_next[4] = 1; led_next[5] = 1; led_next[6] = 1; end
							4'd9: begin led_next[0] = 1; led_next[1] = 1; led_next[2] = 1; led_next[3] = 0; led_next[4] = 0; led_next[5] = 1; led_next[6] = 1; end
							default: begin led_next[0] = 0; led_next[1] = 0; led_next[2] = 0; led_next[3] = 0; led_next[4] = 0; led_next[5] = 0; led_next[6] = 0; end
						endcase
					end
			default: begin
							led_next[0] = 0; led_next[1] = 0; led_next[2] = 0; led_next[3] = 0; led_next[4] = 0; led_next[5] = 0; led_next[6] = 0;
						end
		endcase
	end

endmodule
