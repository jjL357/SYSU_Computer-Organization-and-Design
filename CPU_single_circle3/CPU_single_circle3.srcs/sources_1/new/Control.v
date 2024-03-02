`timescale 1ns / 1ps

module Control(opcode,RegDst,Jump,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUsrc,RegWrite);
input [5:0]opcode;
//input [5:0]funct;
output RegDst;//0选rt写入，1选rd写入
output Jump;
output Branch;//分支语句为为1
output MemRead;
output MemtoReg;//1返回数据存储器内容,0返回ALU结果
output [1:0]ALUOp;
output MemWrite;//写数据存储器
output ALUsrc;//0选寄存器，1选立即数或是地址
output RegWrite;//写信号
parameter BEQ_op=6'b000100;
parameter BNE_op=6'b000101;
parameter ADDI_op=6'b001000;
parameter R_format_op=6'b000000;
parameter ADD_funct=6'b100000;
parameter SUB_funct=6'b100010;
parameter LW_op=6'b100011;
parameter SW_op=6'b101011;
parameter J_op=6'b000010;
parameter lw_op=2'b00; 
parameter sw_op=2'b01; 
parameter beq_op=2'b10; 
parameter R_op=2'b11; 
parameter ADDIU_op=6'b001001;
parameter JAL_op=6'b000011;
parameter SLTI_op=6'b001010;
assign  RegDst= opcode==R_format_op;
assign Branch= (opcode==BEQ_op||opcode==BNE_op);
assign  MemtoReg= opcode==LW_op;
assign MemWrite= opcode==SW_op;
assign ALUsrc=~(opcode==R_format_op||opcode==BEQ_op||opcode==BNE_op);
assign RegWrite=(opcode==R_format_op)||opcode==LW_op||opcode==ADDI_op||opcode==JAL_op||opcode==ADDIU_op||opcode==SLTI_op;
assign ALUOp[0]= (opcode==SW_op) || (opcode==R_format_op)||(opcode==ADDI_op)||(opcode==ADDIU_op);
assign ALUOp[1]= (opcode==BEQ_op) || (opcode==R_format_op)||(opcode==ADDI_op)||(opcode==BNE_op)||(opcode==ADDIU_op);
assign Jump= opcode==J_op||opcode==JAL_op;
endmodule
