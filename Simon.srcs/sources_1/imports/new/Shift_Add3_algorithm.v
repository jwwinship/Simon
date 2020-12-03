`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 11:56:32 AM
// Design Name: 
// Module Name: Shift_Add3_algorithm
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


module Shift_Add3_algorithm(
    input [3:0] in,
    output reg [3:0] out
    );
    
    
    always @(in)
    case (in)
    4'b0000: out<=4'b0000; //0
    4'b0001: out<=4'b0001; //1
    4'b0010: out<=4'b0010; //2
    4'b0011: out<=4'b0011; //3
    4'b0100: out<=4'b0100; //4
    4'b0101: out<=4'b1000; //5
    4'b0110: out<=4'b1001; //6
    4'b0111: out<=4'b1010; //7
    4'b1000: out<=4'b1011; //8
    4'b1001: out<=4'b1100; //9
    
    default: out<=4'b0000;
    
    endcase


endmodule
