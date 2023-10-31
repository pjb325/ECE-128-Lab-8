`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:42:35 PM
// Design Name: 
// Module Name: two_four_decoder
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


module two_four_decoder(input [1:0] refresh, output reg [3:0] register);
    
    always@(refresh)
    begin
        case(refresh)
            2'b00: register = 4'b0001;
            2'b01: register = 4'b0010;
            2'b10: register = 4'b0100;
            2'b11: register = 4'b1000;
        endcase
    end
    
endmodule
