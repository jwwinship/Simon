`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2020 08:06:20 PM
// Design Name: 
// Module Name: checkForWin
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


module checkForWin(
    input submit,
    input [15:0] LED0, LED1, LED2, LED3,
    input [15:0]sw,
    output reg win
    );
    
    reg [15:0] LEDConfig;
    
    always @(submit)
    begin
        LEDConfig = LED0 + LED1 + LED2 + LED3;
        if (submit)
        begin
            if (sw[15:0] == LEDConfig[15:0])
            begin
                win = 1; 
            end 
            else 
            begin
                win = 0;
            end
        end
    end
    
endmodule
