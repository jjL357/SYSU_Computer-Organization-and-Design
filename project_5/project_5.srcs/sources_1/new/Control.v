`timescale 1ns / 1ps
module Control(
    input [5:0] op,
    input [5:0] funct,
    output RegDst,
    output Jump,
    output Beq,
    output Bne,
    output MemRead,
    output MemtoReg,
    output [1:0] ALUOp,
    output MemWrite,
    output ALUSrc,
    output RegWrite,
    output ExtSel
    );
    
    parameter ADD = 6'b100000;
    parameter ADDU = 6'b100001;
    parameter SUB = 6'b100010;
    parameter AND = 6'b100100;
    parameter OR = 6'b100101;
    parameter SLL = 6'b000000; 
    
    parameter ADDI = 6'b001000;
    parameter ADDIU = 6'b001001;
    parameter ANDI = 6'b001100;
    parameter ORI = 6'b001101;
    parameter SLTI = 6'b001010;
    parameter BEQ = 6'b000100;
    parameter BNE = 6'b000101;
    parameter J = 6'b000010;
    parameter JAL = 6'b000011;
    parameter JR = 6'b001000;
    parameter LW = 6'b100011;
    parameter SW = 6'b101011;
    parameter R = 6'b000000;
    assign RegDst = (op == R);
    assign Jump = (op == J) || (op == JAL) || (funct == JR && op == R);
    assign Beq = (op == BEQ);
    assign Bne = (op == BNE);
    assign MemRead = (op == LW);
    assign MemtoReg = (op == LW);
    assign MemWrite = (op == SW);
    assign ALUOp[0] =  (op == ADDI)|| (op == BEQ) || (op == BNE) || (op == ADDIU) || (op == SLTI);
    assign ALUOp[1] = (op == R)  || (op == ADDI) || (op == ADDIU) || (op == SLTI);
    assign ALUSrc = ~((op == R) || (op == BEQ) || (op == BNE)); //0时从readdata2得到数据
    assign RegWrite = (op != SW) && (op != BEQ) && (op != BNE);
    assign ExtSel = ~((op == ADDIU) || (op == ADDU));//为0 无符号扩展
endmodule