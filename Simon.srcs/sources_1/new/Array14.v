`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2020 02:44:09 PM
// Design Name: 
// Module Name: Array1
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


module Array14(
    input [3:0] getInt,
    output reg [3:0] Int
    );
    
    always @(getInt)
    begin

     case(getInt)
    4'b0000: Int = 4'b0000;
    4'b0001: Int = 4'b0000;
    4'b0010: Int = 4'b0000;
    4'b0011: Int = 4'b0000;
    4'b0100: Int = 4'b0000;
    4'b0101: Int = 4'b0000;
    4'b0110: Int = 4'b0000;
    4'b0111: Int = 4'b0000;
    4'b1000: Int = 4'b0000;
    4'b1001: Int = 4'b0000;
    4'b1010: Int = 4'b0000;
    4'b1011: Int = 4'b0000;
    4'b1100: Int = 4'b0000;
    4'b1101: Int = 4'b0000;
    4'b1110: Int = 4'b0000;
    4'b1111: Int = 4'b0000;

   
    
    endcase
    end
endmodule
