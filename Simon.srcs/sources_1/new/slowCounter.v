`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 06:24:39 PM
// Design Name: 
// Module Name: slowCounter
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


module slowCounter(
    input clk,
    input [15:0] LED0, LED1, LED2, LED3,
    output [15:0] LED  
    
    );
    
    
    reg [28:0] tempCounter = 29'b0;
    reg [15:0] code = 16'b0;

    
    integer tempClock = 0;
    always @(posedge clk) 
        begin
            tempCounter = tempCounter + 1;
            case (tempCounter[28:25]) 
                
                0: code <= LED0 ;
                1: code <= LED0;
                2: code <= LED0;
                3: code <= LED0;
                4: code <= LED1;
                5: code <= LED1;
                6: code <= LED1;
                7: code <= LED1;
                8: code <= LED2;
                9: code <= LED2;
                10: code <= LED2;
                11: code <= LED2;
                12: code <= LED3;
                13: code <= LED3;
                14: code <= LED3;
                15: code <= LED3;
            
            
            
//                0: code <= 16'b0000000000000001;
//                1: code <= 16'b0000000000000010;
//                2: code <= 16'b0000000000000100;
//                3: code <= 16'b0000000000001000;
//                4: code <= 16'b0000000000010000;
//                5: code <= 16'b0000000000100000;
//                6: code <= 16'b0000000001000000;
//                7: code <= 16'b0000000010000000;
//                8: code <= 16'b0000000100000000;
//                9: code <= 16'b0000001000000000;
//                10: code <= 16'b0000010000000000;
//                11: code <= 16'b0000100000000000;
//                12: code <= 16'b0001000000000000;
//                13: code <= 16'b0010000000000000;
//                14: code <= 16'b0100000000000000;
//                15: code <= 16'b1000000000000000;
//                default: code <= 16'b0000000000000000;
            endcase
        end
  
    assign LED[15:0] = code[15:0];
    
    
endmodule

