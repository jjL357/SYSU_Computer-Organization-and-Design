`timescale 1ns / 1ps
module IDEXRegister(
    input clk,
    input [31:0]pc,
    input RegDst,
    input Jump,
    input Beq,
    input Bne,
    input MemRead,
    input MemtoReg,
    input [1:0] ALUOp,
    input MemWrite,
    input ALUSrc,
    input RegWrite,
    input ExtSel,
    input [31:0]readData1, readData2, ra,signextend,
    input [4:0] Rs,Rt,Rd,
    input [5:0] op,
    output reg [31:0]idexpc,
    output reg idexRegDst,
    output reg idexJump,
    output reg idexBeq,
    output reg idexBne,
    output reg idexMemRead,
    output reg idexMemtoReg,
    output reg [1:0] idexALUOp,
    output reg idexMemWrite,
    output reg idexALUSrc,
    output reg idexRegWrite,
    output reg idexExtSel,
    output reg [31:0]readData1Out, readData2Out, raOut, signextendOut,
    output reg [4:0] idexRs,idexRt,idexRd,
    output reg [5:0] idexop
    );
    initial begin
    idexpc = 0;
    idexRegDst = 0;
    idexJump = 0;
    idexBeq = 0;
    idexBne = 0;
    idexMemRead = 0;
    idexMemtoReg = 0;
    idexALUOp = 0;
    idexMemWrite = 0;
    idexALUSrc = 0;
    idexRegWrite = 0;
    idexExtSel = 0;
    readData1Out = 0;
    readData2Out = 0;
    raOut = 0;
    signextendOut = 0;
    idexRs = 0;
    idexRt = 0;
    idexRd = 0;
    idexop = 0;
    end
    always@(posedge clk) begin
    idexpc = pc;
    idexRegDst = RegDst;
    idexJump = Jump;
    idexBeq = Beq;
    idexBne = Bne;
    idexMemRead = MemRead;
    idexMemtoReg = MemtoReg;
    idexALUOp = ALUOp;
    idexMemWrite = MemWrite;
    idexALUSrc = ALUSrc;
    idexRegWrite = RegWrite;
    idexExtSel = ExtSel;
    readData1Out = readData1;
    readData2Out = readData2;
    raOut = ra;
    signextendOut = signextend;
    idexRs = Rs;
    idexRt = Rt;
    idexRd = Rd;
    idexop = op;
    end
endmodule
