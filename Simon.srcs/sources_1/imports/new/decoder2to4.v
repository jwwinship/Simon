`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 03:52:33 PM
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input [1:0] en,
    output reg [3:0] an
    );
    
    always@(en)
        begin
            case(en)
                0: an=4'b1110;
                1: an=4'b1111;
                2: an=4'b1111;
                3: an=4'b1111;
            endcase
        end

// input  [1:0] en,
//    output reg [3:0] an
//    );
    
//    always @(en)
//    begin
    
//    case(en)
//    2'b00: an=4'b1110;
//    2'b01: an=4'b1101;
//    2'b10: an=4'b1011;
//    2'b11: an=4'b1111;
    
//    endcase
//    end

endmodule
