`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 03:02:22 PM
// Design Name: 
// Module Name: four_one_mux
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


module four_one_mux(BCD,Sel,Y);
    input [15:0] BCD;
    input [3:0] Sel;
    output reg [3:0] Y; 
    
    always@(*)
    begin
        case(Sel)
            4'b0001: Y = BCD[3:0];
            4'b0010: Y = BCD[7:4];
            4'b0100: Y = BCD[11:8];
            4'b1000: Y = BCD[15:12];
        endcase
    end
endmodule
