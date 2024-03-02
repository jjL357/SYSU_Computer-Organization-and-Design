`timescale 1ns / 1ps

module IDEX_Registers(clk,pc,ins,ALUop,RegDst,ALUsrc,RegWrite,MemtoReg,MemWrite,imm,jump,w1,insout,pcout,readingdata1,readingdata2,IDEX_RegDst,IDEX_ALUsrc,IDEX_RegWrite,IDEX_MemtoReg,IDEX_MemWrite,IDEX_imm,IDEX_data1,IDEX_data2,IDEX_ins,IDEX_ALUop,jumpout,w2);
input clk;          
input [31:0]pc;
output reg[31:0]insout;
output reg[31:0]pcout;
input [31:0]ins;
input [1:0]ALUop;
input RegDst;
input ALUsrc;
input RegWrite;
input MemtoReg;
input MemWrite;
input [15:0]imm;
input [31:0]readingdata1;
input [31:0]readingdata2;
input jump;
input [4:0]w1;
output reg[4:0] w2;
output reg jumpout;
output reg IDEX_RegDst;
output reg IDEX_ALUsrc;
output reg IDEX_RegWrite;
output reg IDEX_MemWrite;
output reg IDEX_MemtoReg;
output reg [15:0]IDEX_imm;

output reg[31:0]IDEX_data1;
output reg[31:0]IDEX_data2;

output reg[31:0]IDEX_ins;
output reg[3:0]IDEX_ALUop;
initial begin 
pcout=0;
w2=0;
IDEX_RegDst=0;
IDEX_ALUsrc=0;
IDEX_RegWrite=0;
IDEX_MemWrite=0;
IDEX_imm=0;
jumpout=0;
IDEX_data1=0;
IDEX_data2=0;
IDEX_MemtoReg=0;
insout=0;
IDEX_ins=0;
IDEX_ALUop=0;
end
always@(posedge clk)begin
 IDEX_RegDst=RegDst;
 pcout=pc;
 insout=ins;
 IDEX_ALUsrc=ALUsrc;
 w2=w1;
 IDEX_RegWrite=RegWrite;
 IDEX_MemWrite=MemWrite;
 IDEX_imm=imm;
jumpout=jump;
IDEX_data1=readingdata1;
IDEX_data2=readingdata2;
IDEX_MemtoReg=MemtoReg;
IDEX_ins=ins;
IDEX_ALUop=ALUop;
end
endmodule
