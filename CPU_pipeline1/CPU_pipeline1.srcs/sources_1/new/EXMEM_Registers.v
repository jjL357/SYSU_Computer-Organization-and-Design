`timescale 1ns / 1ps
module EXMEM_Registers(clk,r,a,pc,result,regdst,regwrite,memwrite,w1,IDEX_MemtoReg,pcout,resultout,regdstout,regwriteout,memout,w2,EXMEM_MemtoReg,a1);
input clk;       
input [31:0]a;
input [31:0]pc;
input [31:0]result;
input regdst;
input regwrite;
input memwrite;
input [4:0]w1;
input IDEX_MemtoReg;
output reg [31:0]pcout;
output  [31:0]resultout;
output reg regdstout;
output reg regwriteout;
output reg[4:0]w2;
output reg [31:0]a1;
output reg EXMEM_MemtoReg;
output reg memout;
output reg[31:0]r;
reg [31:0]resultout=0;
initial begin
pcout=0;
r=0;
w2=0;
a1=0;
EXMEM_MemtoReg=0;

regdstout=0;
regwriteout=0;
memout=0;
end
always@(posedge clk) begin
resultout=result[31:0];
r=result;
pcout=pc;
w2=w1;
a1=a;
EXMEM_MemtoReg=IDEX_MemtoReg;
regdstout=regdst;
regwriteout=regwrite;
memout=memwrite;
end
endmodule

