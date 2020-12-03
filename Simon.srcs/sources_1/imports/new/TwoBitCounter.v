`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 03:42:46 PM
// Design Name: 
// Module Name: TwoBitCounter
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


module TwoBitCounter(
    input clk,
    output wire [1:0] Q
    );
    
    reg [1:0] temp = 0;
    always @(posedge clk) 
        begin
            temp = temp + 1;
        end
    assign Q = temp;
 

endmodule

