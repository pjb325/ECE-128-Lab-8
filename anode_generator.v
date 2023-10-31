`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 03:19:00 PM
// Design Name: 
// Module Name: anode_generator
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


module anode_generator(input clk, output [1:0] anodegen);
    wire [1:0] cnt_q;
    
    refresh_counter rc(.clk(clk), .cnt_q(cnt_q));
    
    two_four_decoder tfd(.refresh(cnt_q), .register(anodegen));
    
endmodule
