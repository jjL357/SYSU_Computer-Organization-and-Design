`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/19 14:48:02
// Design Name: 
// Module Name: CPU_sim
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


module CPU_sim();
reg clk=0;
wire[15:0]q;

CPU C1(clk,q);
always #10 clk=~clk;
endmodule
