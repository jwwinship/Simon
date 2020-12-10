`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2020 02:52:16 PM
// Design Name: 
// Module Name: LED_State_Machine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LED_State_Machine(
    input clk,
    input reset,
    input submit,
    input [15:0]sw,
    output wire [3:0] level,
    output reg [15:0] LED0,
    output reg [15:0] LED1,
    output reg [15:0] LED2,
    output reg [15:0] LED3,
    output reg [15:0] LED4,
    output reg [15:0] LED5,
    output reg [15:0] LED6,
    output reg [15:0] LED7
    );
    
    localparam Level1 = 0, Level2 = 1, Level3 = 2, Level4 = 3, Level5 = 4, Level6 = 5, Level7 = 6, Level8 = 7, WIN=8;
    
    reg [3:0] current_state = 0;
    reg [3:0] next_state = 0;
    reg [15:0] LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7;
    wire [15:0] sum;
    reg incrementLevel;
    assign sum =  LED0 + LED1 + LED2 + LED3 + LED4 + LED5 + LED6 + LED7;
    
    always @(posedge clk) begin
        if (reset) 
        begin
            current_state <= Level1;
        end
		else
		begin
		   current_state <= next_state;
		end
		
		if (sum[15:0] == sw[15:0])
		begin
		   incrementLevel = 1; 
		end
		else
		begin
		  incrementLevel = 0;
		end
    end
    
    always @(current_state, incrementLevel)
    begin
        case(current_state)
            Level1: begin
                LED0 <= 16'b0000000000000100;
                LED1 <= 16'b0001000000000000;
                LED2 <= 16'b0000000010000000;
                LED3 <= 16'b0000000000000001;
                LED4 <= 16'b0000000000000000;
                LED5 <= 16'b0000000000000000;
                LED6 <= 16'b0000000000000000;
                LED7 <= 16'b0000000000000000;
                
				if (incrementLevel && submit)
					next_state = Level2;
				else
					next_state = Level1;
			end
			Level2: begin
			    LED0 <= 16'b0000000000000010;
                LED1 <= 16'b1000000000000000;
                LED2 <= 16'b0000100000000000;
                LED3 <= 16'b0000000100000000;
                LED4 <= 16'b0000001000000000;
                LED5 <= 16'b0000000000000000;
                LED6 <= 16'b0000000000000000;
                LED7 <= 16'b0000000000000000;
				if (incrementLevel && submit)
					next_state = Level3;
				else
					next_state = Level2;
			end
			Level3: begin
			    LED0 <= 16'b0000000000001000;
                LED1 <= 16'b0000000001000000;
                LED2 <= 16'b0000000000000010;
                LED3 <= 16'b0001000000000000;
                LED4 <= 16'b0000001000000000;
                LED5 <= 16'b0010000000000000;
                LED6 <= 16'b0000000000000000;
                LED7 <= 16'b0000000000000000;
				if (incrementLevel && submit)
					next_state = Level4;
				else
					next_state = Level3;
			end
			Level4: begin
			    LED0 <= 16'b0000000000000001;
                LED1 <= 16'b0000000000001000;
                LED2 <= 16'b0000000010000000;
                LED3 <= 16'b0000010000000000;
                LED4 <= 16'b0010000000000000;
                LED5 <= 16'b1000000000000000;
                LED6 <= 16'b0100000000000000;
                LED7 <= 16'b0000000000000000;
				if (incrementLevel && submit)
					next_state = Level5;
				else
					next_state = Level4;
			end
			Level5: begin
			    LED0 <= 16'b1000000000000000;
                LED1 <= 16'b0000000000000010;
                LED2 <= 16'b0010000000000000;
                LED3 <= 16'b0000000000001000;
                LED4 <= 16'b0000100000000000;
                LED5 <= 16'b0000000000010000;
                LED6 <= 16'b0000010000000000;
                LED7 <= 16'b0000000000100000;
				if (incrementLevel && submit)
					next_state = Level6;
				else
					next_state = Level5;
			end
			Level6: begin
			    LED0 <= 16'b0000000000100000;
                LED1 <= 16'b0000000000010000;
                LED2 <= 16'b0000000001000000;
                LED3 <= 16'b0000100000000000;
                LED4 <= 16'b0000000000000010;
                LED5 <= 16'b0000000000000001;
                LED6 <= 16'b0100000000000000;
                LED7 <= 16'b1000000000000000;
				if (incrementLevel && submit)
					next_state = Level7;
				else
					next_state = Level6;
			end			
			Level7: begin
			    LED0 <= 16'b0000000000100000;
                LED1 <= 16'b0000001000000000;
                LED2 <= 16'b0010000000000000;
                LED3 <= 16'b1000000000000000;
                LED4 <= 16'b0100000000000000;
                LED5 <= 16'b0000000010000000;
                LED6 <= 16'b0000000000000100;
                LED7 <= 16'b0000000000000001;
				if (incrementLevel && submit)
					next_state = Level8;
				else
					next_state = Level7;
			end
			Level8: begin
			    LED0 <= 16'b0000000100000000;
                LED1 <= 16'b0000000010000000;
                LED2 <= 16'b0000001000000000;
                LED3 <= 16'b0000010000000000;
                LED4 <= 16'b0000100000000000;
                LED5 <= 16'b0000000000001000;
                LED6 <= 16'b0000000000000001;
                LED7 <= 16'b0010000000000000;
				if (incrementLevel && submit)
					next_state = WIN;
				else
					next_state = Level8;
			end
			WIN: begin
			    LED0 <= 16'b0000000000000000;
                LED1 <= 16'b0000000000000000;
                LED2 <= 16'b0000000000000000;
                LED3 <= 16'b0000000000000000;
                LED4 <= 16'b0000000000000000;
                LED5 <= 16'b0000000000000000;
                LED6 <= 16'b0000000000000000;
                LED7 <= 16'b0000000000000000;
			    next_state = Level1;
			end
			
			default: begin   // Implied-latch free implementation
			    next_state = Level1;
			    
			end
        endcase
        
    end
    assign level = current_state;
endmodule
