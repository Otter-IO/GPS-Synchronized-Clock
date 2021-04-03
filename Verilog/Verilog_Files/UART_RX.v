// This module converts serial data to parallel data

module UART_RX(
        uart_rx, 
        clk, 
        reset, 
        data_out, 
        new_data
    );
    
    input uart_rx; // Serial input from GPS module
    input clk;
    input reset;
    output new_data; // Flag to indicate new parallel data
    output[7:0] data_out; // Parallel data output
    
    reg new_data;
    reg[7:0] data_out;
    
    reg uart_sync; // Holds incoming serial to synchronize it
    reg uart_data; // Holds incoming serial to synchronize it
    reg[7:0] data_hold; // Holds the bits as they come in
    reg[2:0] bit_num; // Specifys what bit is currently being processed
    reg[1:0] state; // Holds current state
    reg[12:0] baud_count; // Counter for the baud rate
    
    parameter BAUD = 13'd5208; // 50MHz/9600Baud
    
    parameter CHECK_START = 2'd0; // Parameters for the state names
    parameter CENTER_BIT = 2'd1;
    parameter GET_DATA = 2'd2;
    parameter CHECK_STOP = 2'd3;
    
    always @(posedge clk or negedge reset) begin //synchronizer for incoming data
        if(reset == 0) begin
            uart_sync <= 1'b1;
            uart_data <= 1'b1;
        end else begin
            uart_sync <= uart_rx;
            uart_data <= uart_sync;
        end
    end

    always @(posedge clk or negedge reset) begin
        if(reset == 0) begin
            data_hold <= 8'b00000000;
            data_out <= 8'b00000000;
            bit_num <= 0;
            baud_count <= 0;
            new_data <= 0;
            state <= CHECK_START;
        end else begin
            case(state)
                CHECK_START: begin // Check for the start bit
                        bit_num <= 0;
                        new_data <= 0;
                        if(uart_data == 0) begin // If input goes low advance state
                            state <= CENTER_BIT;
                        end else begin
                            state <= CHECK_START;
                        end
                    end
                CENTER_BIT: begin
                        if(baud_count == (BAUD >> 1'b1)) begin // Get to the center of the start bit for accurate sampling
                            if(uart_data == 0) begin
                                state <= GET_DATA;
                                baud_count <= 0;
                            end else begin
                                state <= CHECK_START;
                            end
                        end else begin
                            baud_count <= baud_count + 1;
                            state <= CENTER_BIT;
                        end
                    end
                GET_DATA: begin
                        if(baud_count == BAUD) begin // Sample data and set appropriate bit in data_hold to that value
                            if(bit_num == 7) begin
                                data_hold[bit_num] <= uart_data;
                                baud_count <= 0;
                                state <= CHECK_STOP;
                            end else if(bit_num >= 0) begin
                                data_hold[bit_num] <= uart_data;
                                baud_count <= 0;
                                bit_num <= bit_num + 1;
                            end
                        end else begin
                            baud_count <= baud_count + 1;
                            state <= GET_DATA;
                        end
                    end
                CHECK_STOP: begin // Send the stop bit
                        if(baud_count == BAUD) begin
                            state <= CHECK_START;
                            baud_count <= 0;
                        end else begin
                            data_out <= data_hold;
                            new_data <= 1;
                            baud_count <= baud_count + 1;
                        end
                    end
            endcase
        end
    end
endmodule
