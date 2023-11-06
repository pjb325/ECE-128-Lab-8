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


module Counter(

    input clk,
    output done,
    output [11:0] bin_cnt);
    
    parameter c_reg_size = 34;
    
    reg [c_reg_size -1:0] count = 0;
    reg fin = 0;
    reg old_b = 0;
    
    
     always @(posedge clk)
        begin
        count <= count+1;
            if((old_b && !count[c_reg_size-12]) || (!old_b && count[c_reg_size-12]))
                begin
                fin <=1;
                end
            else
                begin
                fin <=0;
                end
             old_b <=count[c_reg_size-12];
             end
         
    assign bin_cnt =  count[c_reg_size-1: c_reg_size-12];
    assign done = fin;   
    
    
    
endmodule
