`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 04:01:45 PM
// Design Name: 
// Module Name: bcdDisplay4
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


module bcdDisplay4(
    input [15:0] sw,
    input clk,
    output [3:0] an,
    output [6:0] seg,
    output [15:0] LED
    );
    
    
    wire clk_out;
    wire [1:0] counter_out;
    wire [15:0] slowCounter_out;
    wire [3:0] mux_out;
    wire [3:0] ones, tens, hundreds, thousands;
    parameter zeros = 4'b0000;
    
    Binary_BCD_Converter L1(sw, ones, tens, hundreds);
    mux4to1 L2(ones, tens, hundreds,thousands, counter_out, mux_out);
    SlowClock L3(clk, clk_out);
    TwoBitCounter L4(clk_out, counter_out);
    decoder2to4 L5(counter_out, an);
    Binary_to_7SegmentDisplay L6(mux_out, seg);
    
    slowCounter L7(clk, slowCounter_out);
    counterToLED L8(slowCounter_out, LED);

endmodule

