`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2020 02:01:41 PM
// Design Name: 
// Module Name: switchDetector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Detects the most recent switch flipped by subtracting states. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module switchDetector(
    input [15:0] sw,
    input [15:0] prev_state,
    output reg [4:0] switch_flipped_index
    );
    reg [15:0] new_switch_state;
    
    always @(sw)
    begin
        if (sw[15:0] != prev_state[15:0])
        begin
             
             new_switch_state = sw-prev_state; //gets binary value of most recent switch flipped. 
             
        end
        case(new_switch_state)
        16'b0000000000000001: switch_flipped_index = 0;
        16'b0000000000000010:  switch_flipped_index = 1;
        16'b0000000000000100:  switch_flipped_index = 2;
        16'b0000000000001000:  switch_flipped_index = 3;
        16'b0000000000010000:  switch_flipped_index = 4;
        16'b0000000000100000:  switch_flipped_index = 5;
        16'b0000000001000000:  switch_flipped_index = 6;
        16'b0000000010000000:  switch_flipped_index = 7;
        16'b0000000100000000:  switch_flipped_index = 8;
        16'b0000001000000000:  switch_flipped_index = 9;
        16'b0000010000000000:  switch_flipped_index = 10;
        16'b0000100000000000:  switch_flipped_index = 11;
        16'b0001000000000000:  switch_flipped_index = 12;
        16'b0010000000000000:  switch_flipped_index = 13;
        16'b0100000000000000:  switch_flipped_index = 14;
        16'b1000000000000000:  switch_flipped_index = 15;
        endcase
        

    end
    
endmodule
