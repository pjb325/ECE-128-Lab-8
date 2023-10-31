`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 01:43:58 PM
// Design Name: 
// Module Name: Counter
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


module Counter(input clk,output done,output reg [11:0] bin_cnt);
    always@(posedge clk )
    begin
        if(done == 1)
            bin_cnt = 12'b000000000000;
        else
            if(bin_cnt == 12'b111111111111)
                bin_cnt = 12'b000000000000;
            else 
                bin_cnt = bin_cnt + 1;
                
    end
endmodule
