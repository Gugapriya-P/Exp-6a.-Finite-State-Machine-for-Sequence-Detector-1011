`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:43:08
// Design Name: 
// Module Name: MOORE_TB
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


module MOORE_TB;
    reg clk_t, rst_t, xin_t;
    wire zout_t;

    MOORE dut (.clk(clk_t), .rst(rst_t), .xin(xin_t), .zout(zout_t));

    initial begin
        clk_t = 1'b1;
        rst_t = 1'b1;
        #100 rst_t = 1'b0;
        xin_t = 1'b1;
        #100 xin_t = 1'b0;
        #100 xin_t = 1'b1;
        #100 xin_t = 1'b1;
        #100 xin_t = 1'b1;
        #100 xin_t = 1'b0;
        #100 xin_t = 1'b1;
        #100 xin_t = 1'b1;
    end

    always #50 clk_t = ~clk_t;

endmodule
