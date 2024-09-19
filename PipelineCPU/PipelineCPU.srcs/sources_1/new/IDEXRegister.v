`timescale 1ns / 1ps
module IDEXRegister(
    input clk,
    input nop,
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
    idexpc = (nop == 1) ? pc : 0;
    idexRegDst = (nop == 1) ? RegDst : 0;
    idexJump = (nop == 1) ? Jump : 0;
    idexBeq = (nop == 1) ? Beq : 0;
    idexBne = (nop == 1) ? Bne : 0;
    idexMemRead = (nop == 1) ? MemRead : 0;
    idexMemtoReg = (nop == 1) ? MemtoReg : 0;
    idexALUOp = (nop == 1) ? ALUOp : 0;
    idexMemWrite = (nop == 1) ? MemWrite : 0;
    idexALUSrc = (nop == 1) ? ALUSrc : 0;
    idexRegWrite = (nop == 1) ? RegWrite : 0;
    idexExtSel = (nop == 1) ? ExtSel : 0;
    readData1Out = (nop == 1) ? readData1 : 0;
    readData2Out = (nop == 1) ? readData2 : 0;
    raOut = ra;
    signextendOut =  (nop == 1) ? signextend : 0;
    idexRs =  (nop == 1) ? Rs : 0;
    idexRt =  (nop == 1) ? Rt : 0;
    idexRd =  (nop == 1) ? Rd : 0;
    idexop =  (nop == 1) ? op : 0;
    end
endmodule
