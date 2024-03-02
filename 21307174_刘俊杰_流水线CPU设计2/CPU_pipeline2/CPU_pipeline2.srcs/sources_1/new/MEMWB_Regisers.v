`timescale 1ns / 1ps

module MEMWB_Registers(clk,pc,result,regdst,regwrite,w1,pcout,resultout,regdstout,regwriteout,w2);
input clk;           
input [4:0]w1;
output reg[4:0]w2;
input [31:0]pc,result;
input regdst;
input regwrite;
output reg[31:0]pcout,resultout;
output reg regdstout;
output reg regwriteout;
initial begin
pcout=0;
resultout=0;
w2=0;
regdstout=0;
regwriteout=0;
end
always@(posedge clk) begin
pcout=pc;
resultout=result;
w2=w1;
regdstout=regdst;
regwriteout=regwrite;
end
endmodule
