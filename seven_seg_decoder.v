`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:24:39 PM
// Design Name: 
// Module Name: seven_seg_decoder
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

module seven_seg_decoder(clk, bcd,seg);
    input clk; 
    input [3:0] bcd; 
    output reg[6:0] seg;

    always@(posedge clk)
    begin
        case(bcd)
            4'b0000: seg = 7'b0000001;
            4'b0001: seg = 7'b1001111;
            4'b0010: seg = 7'b0010010;
            4'b0011: seg = 7'b0000110;
            4'b0100: seg = 7'b1001100;
            4'b0101: seg = 7'b0100100;
            4'b0110: seg = 7'b0100000;
            4'b0111: seg = 7'b0001111;
            4'b1000: seg = 7'b0000000;
            4'b1001: seg = 7'b0001100;
        endcase
    end
endmodule