`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 03:30:56 PM
// Design Name: 
// Module Name: Binary_to_7SegmentDisplay
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Converts a 4 bit binary number to a 7 segment display output.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Binary_to_7SegmentDisplay(
input [3:0] Y,
    output reg [6:0] display
    );
    
    always @(Y) 
    begin
    case(Y)
    
    0: display=7'b0000001;
    1: display=7'b1001111;
    2: display=7'b0010010;
    3: display=7'b0000110;
    4: display=7'b1001100;
    5: display=7'b0100100;
    6: display=7'b0100000;
    7: display=7'b0001111;
    8: display=7'b0000000;
    9: display=7'b0000100;

    
    endcase
    end

endmodule
