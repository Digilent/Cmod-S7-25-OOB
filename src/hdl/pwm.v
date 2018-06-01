`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2018 03:33:26 PM
// Design Name: 
// Module Name: pwm
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


module pwm #(
    parameter COUNTER_WIDTH = 8,
    parameter MAX_COUNT = 255
) (
    input wire clk,
    input wire [COUNTER_WIDTH-1:0] duty,
    output wire pwm_out
);
    reg [COUNTER_WIDTH-1:0] count = 'b0;
    reg [COUNTER_WIDTH-1:0] r_duty = 'b0;
    always@(posedge clk)
        if (count == 'b0)
            r_duty <= duty;
    always@(posedge clk)
        if (count >= MAX_COUNT)
            count <= 'b0;
        else
            count <= count + 1;
    assign pwm_out = (count >= r_duty) ? 1'b1 : 1'b0;
endmodule
