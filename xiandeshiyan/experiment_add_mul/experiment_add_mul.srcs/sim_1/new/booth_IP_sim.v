`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/07 20:40:57
// Design Name: 
// Module Name: booth_IP_sim
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


module booth_IP_sim();
    reg [3:0]x,y;
    wire [7:0]cout;
    reg clk=0;
    booth_IP a(clk,x,y,cout);
    initial begin
        x=6;
        y=8;
    end
    always #100
    begin
        x=x+2;
        y=y+2;
    end
    always #1 clk=~clk;
endmodule
