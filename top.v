`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 02:57:02 PM
// Design Name: 
// Module Name: top
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


module top(input clk,output [6:0] seg_cathode,output [3:0] seg_anode);
    wire mclk;
    wire  [11:0] bin_cnt;
    wire done;
    wire [15:0] bcd_d_out;
    wire rdy;
    reg [15:0] stat_bcd;
    
    clock_div timefortime(.clock_in(clk), .clock_out(mclk));
    
    Counter count(.clk(mclk), .done(done), .bin_cnt(bin_cnt));
    
    bin2BCD bcdthisup(.clk(mclk), .en(done), .bin_d_in(bin_cnt), .bcd_d_out(bcd_d_out), .rdy(rdy));
    

    always@(posedge clk)
        begin 
        if(rdy)
            begin
            stat_bcd <= bcd_d_out;
            end
        end
        
         multi_seg_driver pleasework(.clk(mclk), . bcd_in(stat_bcd), .sseg_a_o(seg_anode), . sseg_c_o( seg_cathode));
endmodule
