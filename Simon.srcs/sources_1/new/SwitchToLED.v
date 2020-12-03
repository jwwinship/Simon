`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2020 04:37:35 PM
// Design Name: 
// Module Name: SwitchToLED
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


module counterToLED(
    input [15:0] counterOut,
    output [15:0] LED
    );
    
    
    assign LED[15:0] = counterOut[15:0];
    
    
  


endmodule
