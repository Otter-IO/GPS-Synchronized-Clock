// This module generates a variable duty cycle for an led display based on a numerical input from 0-7

module led_duty_cycle(
	input clk, // Input clock
	input reset, // Reset Input
	input[2:0] brightness, // Numerical brightness input (0 = dimmest, 4 = constant on/brightest)
	output reg on_ff // Variable duty output
);

	reg[3:0] bright_cnt; // Cycles through bright_duty_ff array
	reg[15:0] bright_duty_next; // Combinational Duty Cycle array
	reg[15:0] bright_duty_ff; // Duty cycle registers
	
	reg[8:0] pwm_count;
	reg pwm_clk;
	
	always @(posedge clk or negedge reset) begin // Create PWM frequency of 4kHz
		if(reset == 0) begin
			pwm_clk <= 0;
			pwm_count <= 0;
		end else begin
			if(pwm_count >= 9'd400) begin
				pwm_clk <= ~pwm_clk;
				pwm_count <= 0;
			end else begin
				pwm_count <= pwm_count + 1;
			end
		end
	end

	always @(posedge pwm_clk or negedge reset) begin // Counter from 0-15
		if(reset == 0) begin
			bright_cnt <= 0;
		end else begin
			if(bright_cnt == 4'd15) begin
				bright_cnt <= 0;
			end else begin
				bright_cnt <= bright_cnt + 1'b1;
			end
		end
	end
	
	always @(posedge clk or negedge reset) begin // Set duty cycle output equal to the array value at the counter position
		if(reset == 0) begin
			on_ff <= 0;
		end else begin
			on_ff <= bright_duty_ff[bright_cnt];
		end
	end
	
	always @(posedge clk or negedge reset) begin // Set the combination output equal to a ff
		if(reset == 0) begin
			bright_duty_ff <= 0;
		end else begin
			bright_duty_ff[0] <= bright_duty_next[0];
			bright_duty_ff[1] <= bright_duty_next[1];
			bright_duty_ff[2] <= bright_duty_next[2];
			bright_duty_ff[3] <= bright_duty_next[3];
			bright_duty_ff[4] <= bright_duty_next[4];
			bright_duty_ff[5] <= bright_duty_next[5];
			bright_duty_ff[6] <= bright_duty_next[6];
			bright_duty_ff[7] <= bright_duty_next[7];
			bright_duty_ff[8] <= bright_duty_next[8];
			bright_duty_ff[9] <= bright_duty_next[9];
			bright_duty_ff[10] <= bright_duty_next[10];
			bright_duty_ff[11] <= bright_duty_next[11];
			bright_duty_ff[12] <= bright_duty_next[12];
			bright_duty_ff[13] <= bright_duty_next[13];
			bright_duty_ff[14] <= bright_duty_next[14];
			bright_duty_ff[15] <= bright_duty_next[15];
		end
	end
	
	always @(*) begin // Combinational logic to set duty cycle (6.25% to 100%)
		case(brightness)
			4'd0: begin bright_duty_next[0] = 1; bright_duty_next[1] = 0; bright_duty_next[2] = 0; bright_duty_next[3] = 0; bright_duty_next[4] = 0; bright_duty_next[5] = 0; bright_duty_next[6] = 0; bright_duty_next[7] = 0; bright_duty_next[8] = 0; bright_duty_next[9] = 0; bright_duty_next[10] = 0; bright_duty_next[11] = 0; bright_duty_next[12] = 0; bright_duty_next[13] = 0; bright_duty_next[14] = 0; bright_duty_next[15] = 0; end
			4'd1: begin bright_duty_next[0] = 1; bright_duty_next[1] = 1; bright_duty_next[2] = 0; bright_duty_next[3] = 0; bright_duty_next[4] = 0; bright_duty_next[5] = 0; bright_duty_next[6] = 0; bright_duty_next[7] = 0; bright_duty_next[8] = 0; bright_duty_next[9] = 0; bright_duty_next[10] = 0; bright_duty_next[11] = 0; bright_duty_next[12] = 0; bright_duty_next[13] = 0; bright_duty_next[14] = 0; bright_duty_next[15] = 0; end
			4'd2: begin bright_duty_next[0] = 1; bright_duty_next[1] = 1; bright_duty_next[2] = 1; bright_duty_next[3] = 1; bright_duty_next[4] = 0; bright_duty_next[5] = 0; bright_duty_next[6] = 0; bright_duty_next[7] = 0; bright_duty_next[8] = 0; bright_duty_next[9] = 0; bright_duty_next[10] = 0; bright_duty_next[11] = 0; bright_duty_next[12] = 0; bright_duty_next[13] = 0; bright_duty_next[14] = 0; bright_duty_next[15] = 0; end
			4'd3: begin bright_duty_next[0] = 1; bright_duty_next[1] = 1; bright_duty_next[2] = 1; bright_duty_next[3] = 1; bright_duty_next[4] = 1; bright_duty_next[5] = 1; bright_duty_next[6] = 1; bright_duty_next[7] = 1; bright_duty_next[8] = 0; bright_duty_next[9] = 0; bright_duty_next[10] = 0; bright_duty_next[11] = 0; bright_duty_next[12] = 0; bright_duty_next[13] = 0; bright_duty_next[14] = 0; bright_duty_next[15] = 0; end
			4'd4: begin bright_duty_next[0] = 1; bright_duty_next[1] = 1; bright_duty_next[2] = 1; bright_duty_next[3] = 1; bright_duty_next[4] = 1; bright_duty_next[5] = 1; bright_duty_next[6] = 1; bright_duty_next[7] = 1; bright_duty_next[8] = 1; bright_duty_next[9] = 1; bright_duty_next[10] = 1; bright_duty_next[11] = 1; bright_duty_next[12] = 1; bright_duty_next[13] = 1; bright_duty_next[14] = 1; bright_duty_next[15] = 1; end
			default: begin bright_duty_next[0] = 0; bright_duty_next[1] = 0; bright_duty_next[2] = 0; bright_duty_next[3] = 0; bright_duty_next[4] = 0; bright_duty_next[5] = 0; bright_duty_next[6] = 0; bright_duty_next[7] = 0; end
		endcase
	end
	
	
endmodule
