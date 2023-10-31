`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:06:49 PM
// Design Name: 
// Module Name: refresh_counter
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


module refresh_counter(input clk,output reg [1:0] cnt_q = 0);
    
     reg [1:0] cnt_d = 0;
     
     always@(posedge clk)
     begin
        if(cnt_d == 2'b11)
            cnt_d = 2'b00;
        else
            cnt_d = cnt_d+1'b1;
            cnt_q<=cnt_d;
        end    
endmodule
