// Module that allows PWM on the non seven-segment LEDs

module misc_pwm(
		input on,
		input gps_lost,
		output reg[4:0] misc_leds,
		output reg gps_lock
	);
	
	always @(*) begin // Control PWM of non-numerical LEDs
		if(on) begin
			misc_leds[0] = 1;
			misc_leds[1] = 1;
			misc_leds[2] = 1;
			misc_leds[3] = 1;
			misc_leds[4] = 1;
			if(gps_lost == 0) begin
				gps_lock = 1;
			end else begin
				gps_lock = 0;
			end
		end else begin
			misc_leds[0] = 0;
			misc_leds[1] = 0;
			misc_leds[2] = 0;
			misc_leds[3] = 0;
			misc_leds[4] = 0;
			gps_lock = 0;
		end
	end
	
endmodule
