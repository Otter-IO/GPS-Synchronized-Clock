//
// GPS Synchronized Clock
// 
// Designer: Marcus De La Garza
// Rev: 2.0
// Date Completed: 3/14/21

module main(
	input clk, // Input clk (50MHz)
	input pps, // 1PPS input from GPS unit
	input uart_data, // UART_TX input from GPS unit
	output wire uart_rx, // UART_RX from GPS unit
	
	// Button inputs
	input reset, // Reset button input
	input brightness_button,
	input time_button,
	input misc_button,
	
	// Outputs for ssd's
	output wire[6:0] led1,
	output wire[6:0] led2,
	output wire[6:0] led3,
	output wire[6:0] led4,
	output wire[6:0] led5,
	output wire[6:0] led6,
	output wire[6:0] led7,
	output wire[6:0] led8,
	output wire[6:0] led9,
	
	output wire gps_lock, // GPS lock indication
	output wire[4:0] misc_leds // Misc LED outputs
	
);
	
	wire on; // The PWM signal that controls the ssd's
	
	wire pps_single_clk; // 1PPS signal modified for only 1 clk cycle (instead of 100ms)
	
	wire gps_lost; // Signal to indicate no GPS present
	
	wire[2:0] bright; // Brightness Level
	wire[3:0] time_offset; // Number of hours offset from default time (CST +6:00)
	
	// Wires that link the final time with the ssd's
	wire[3:0] milli; 
	wire[3:0] centi;
	wire[3:0] deci;
	wire[3:0] sec_1;
	wire[2:0] sec_2;
	wire[3:0] min_1;
	wire[2:0] min_2;
	wire[3:0] hour_1;
	wire[1:0] hour_2;
	
	// The alternate pps if GPS is not locked
	wire sec_backup;
	
	// Wires connecting GPS data to time corrector
	wire[3:0] sec_1_connect;
	wire[2:0] sec_2_connect;
	wire[3:0] min_1_connect;
	wire[2:0] min_2_connect;
	wire[3:0] hour_1_connect;
	wire[1:0] hour_2_connect;
	
	// Wires linking time corrector to time counter
	wire[3:0] sec_1_connect2;
	wire[2:0] sec_2_connect2;
	wire[3:0] min_1_connect2;
	wire[2:0] min_2_connect2;
	wire[3:0] hour_1_connect2;
	wire[1:0] hour_2_connect2;
	

	GPS_Clock_Data gps_data_inst(
        .clk	(clk), 
        .reset	(reset), 
        .pps_in	(pps), 
        .gps_tx_in	(uart_data),
        .sec_1	(sec_1_connect),
		  .sec_2	(sec_2_connect),
		  .min_1	(min_1_connect),
		  .min_2	(min_2_connect),
		  .hour_1	(hour_1_connect),
		  .hour_2	(hour_2_connect),
		  .pps_single_clk	(pps_single_clk)
    );
	 
	 gps_configuration gps_configuration_inst(
		.clk	(clk),
		.reset	(reset),
		.gps_rx	(uart_rx)
	 );
	 
	 buttons buttons_inst(
		.clk	(clk),
		.reset	(reset),
		.time_button	(time_button),
		.brightness_button	(brightness_button),
		.misc_button	(misc_button),
		.bright	(bright),
		.time_offset	(time_offset)
	 );
	 
	 time_correction time_correction_inst(
		.sec_1_in	(sec_1_connect),
		.sec_2_in	(sec_2_connect),
		.min_1_in	(min_1_connect),
		.min_2_in	(min_2_connect),
		.hour_1_in	(hour_1_connect),
		.hour_2_in	(hour_2_connect),
		.time_offset	(time_offset),
		.sec_1_out	(sec_1_connect2),
		.sec_2_out	(sec_2_connect2),
		.min_1_out	(min_1_connect2),
		.min_2_out	(min_2_connect2),
		.hour_1_out	(hour_1_connect2),
		.hour_2_out	(hour_2_connect2)
	);
	
	ms_counter ms_counter_inst(
		.clk	(clk),
		.reset	(reset),
		.pps	(pps_single_clk),
		.milli	(milli),
		.centi	(centi),
		.deci	(deci),
		.sec_inc	(sec_backup),
		.no_pps	(gps_lost)
	);
	
	clock_counter clock_counter_inst(
		.clk	(clk),
		.reset	(reset),
		.pps_in	(pps_single_clk),
		.backup_sec	(sec_backup),
		.sec_1_in	(sec_1_connect2),
		.sec_2_in	(sec_2_connect2),
		.min_1_in	(min_1_connect2),
		.min_2_in	(min_2_connect2),
		.hour_1_in	(hour_1_connect2),
		.hour_2_in	(hour_2_connect2),
		.sec_1	(sec_1),
		.sec_2	(sec_2),
		.min_1	(min_1),
		.min_2	(min_2),
		.hour_1	(hour_1),
		.hour_2 (hour_2)
	);
	
	led_driver seg1_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(milli),
		.led_ff	(led1)
	);
	
	led_driver seg2_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(centi),
		.led_ff	(led2)
	);
	
	led_driver seg3_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(deci),
		.led_ff	(led3)
	);
	
	led_driver seg4_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(sec_1),
		.led_ff	(led4)
	);
	
	led_driver seg5_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(sec_2),
		.led_ff	(led5)
	);
	
	led_driver seg6_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(min_1),
		.led_ff	(led6)
	);
	
	led_driver seg7_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(min_2),
		.led_ff	(led7)
	);
	
	led_driver seg8_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(hour_1),
		.led_ff	(led8)
	);
	
	led_driver seg9_inst(
		.clk	(clk),
		.reset	(reset),
		.on_signal	(on),
		.number	(hour_2),
		.led_ff	(led9)
	);
	
	
	led_duty_cycle duty_inst(
		.clk	(clk),
		.reset	(reset),
		.brightness	(bright),
		.on_ff	(on)
	);
	
	misc_pwm misc_pwm_inst(
		.on	(on),
		.gps_lost	(gps_lost),
		.misc_leds	(misc_leds),
		.gps_lock	(gps_lock)
	);


endmodule
