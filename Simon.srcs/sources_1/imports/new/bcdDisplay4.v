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


module Simon(
    input [15:0] sw,
    input clk,
    input reset,
    input submit,
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
    
    wire deb_submit;
    wire [3:0] level;
    wire [15:0] LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7;
    wire incrementLevel; 
    
    
    //wire [15:0] prev_switch_state = 16'b0000000000000000;
    //wire [4:0] most_recent_switch; // No initial value
    //switchDetector L0(sw,prev_switch_state, most_recent_switch);
    //switchStateReset reset(sw, prev_switch_state);
    
    debounce Submit(clk, submit, deb_submit);
    
    Binary_BCD_Converter L1(level, ones, tens, hundreds);
    mux4to1 L2(ones, tens, hundreds,thousands, counter_out, mux_out);
    SlowClock L3(clk, clk_out);
    TwoBitCounter L4(clk_out, counter_out);
    decoder2to4 L5(counter_out, an);
    Binary_to_7SegmentDisplay L6(mux_out, seg);
    
    //checkForWin L10(deb_submit,clk,sw, LED0, LED1, LED2, LED3,LED4, LED5, LED6, LED7,  incrementLevel);
    LED_State_Machine L7(clk,reset, deb_submit,sw, level, LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7);
    slowCounter L8(clk, LED0, LED1, LED2, LED3,LED4, LED5, LED6, LED7,slowCounter_out);
    counterToLED L9(slowCounter_out, LED);
    

endmodule

