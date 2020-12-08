`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/07/2020 02:26:56 PM
// Design Name: 
// Module Name: switchDetector_tb
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


module switchDetector_tb(

    );
//    reg [15:0] sw;
//    reg [15:0] sw_prev;
//    wire [4:0] sw_out;
    
//    switchDetector U0(sw, sw_prev, sw_out);
    
//    initial begin
//    sw = 16'b0000000000000000;
//    sw_prev = 16'b0000000000000000;
//    #100;
//    sw = 16'b0000000000000100;
//    #100;
//    sw_prev = 16'b0000000000000100;
//    sw = 16'b0000000000000101;
//    #100;
//    sw_prev = 16'b0000000000000101;
//    sw = 16'b0010000000000101;
//    #1000;
//    end

      reg [15:0] sw;
      wire [15:0] sw_prev_state;
      
      switchStateReset U1(sw, sw_prev_state);
      initial begin
      sw = 16'b0000000000000000;
      #100;
      sw = 16'b0000000000001110;
      #1000;
      end
endmodule
