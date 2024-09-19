`timescale 1ns / 1ps

module PipelineCPU(clk,q,select,ifBranch,temp,memwbMemtoReg);
input clk;
output [15:0] q;
output [1:0] select;
output [31:0] ifBranch,temp;
output memwbMemtoReg;
wire [31:0]temp;
wire [31:0] pc, pcin, branchPc,JumpPc;
wire [31:0] ins;
wire [5:0] op,funct,ifidop,idexop;
wire [4:0] writeReg,shamt;
wire [31:0] writeData,writeback,readData1, readData2;
wire [31:0] branchAddr,jumpAddr,jAddr,jrAddr;
//控制信号
wire RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite,Zero,Jump, ExtSel;
wire BEQ,BNE;
wire [1:0] ForwardA,ForwardB,ForwardC,ForwardD;
wire [1:0] ALUOp,idexALUOp;
wire ifBranch,ifJAL,ifJR;
wire [3:0]alucontrol;
wire [31:0] signextend,ALUa,ALUb,ALUresult,readData,ra,idexreadData1in,idexreadData2in;
wire [31:0] ifidpcOut, ifidpcinOut, ifidinsOut,idexpc,idexReadData1Out, idexReadData2Out, idexRaOut, idexSignExtendOut;
wire [4:0] ifidRs, ifidRt, ifidRd,idexRs,idexRt,idexRd;
wire idexRegDst,idexJump,idexBEQ,idexBNE,idexMemRead,idexMemtoReg,idexMemWrite,idexALUSrc, idexRegWrite, idexExtSel;
wire exmemJump,exmemMemRead,exmemMemWrite,exmemRegWrite,exmemMemtoReg,memwbMemtoReg,memwbRegWrite,memwbJump;
wire [31:0] exmempc,exmemALUresult,exmemReadData2In,exmemReadData2Out,memwbpc,memwbreadData,memwbALUresult;
wire [4:0]exmemwriteReg,memwbwriteReg;
wire [31:0] pcout,nopcount;
wire nop;
assign select = ForwardA;
assign temp =  (idexMemRead == 0 || (ifidRs != writeReg && ifidRt != writeReg) );
assign q[7:0] = writeback[7:0];
assign q[15:8] = memwbpc[7:0];//显示pc的低8位和writedata的低8位
assign ifBranch = (BEQ && Zero) || (BNE && !Zero);
assign Zero = (idexreadData1in == idexreadData2in);
assign branchAddr = signextend * 4 + ifidpcinOut;
assign jAddr = {ifidpcinOut[31:28],ifidinsOut[25:0],2'b00};
//assign op = ifidinsOut[31:26];
assign funct = ifidinsOut[5:0];
assign shamt = idexSignExtendOut[10:6];
assign ifJAL = (ifidop == 6'b000011);
assign ifJR = (funct == 6'b001000);


HazardDetectUnit hazard(idexMemRead, clk,ifidpcOut,ifidinsOut,ifidRs, ifidRt, idexRt, pcout,nopcount,nop);
MUX #(32) jpc(jAddr,ra,ifJR,jumpAddr);
MUX #(32)mux4(pcin,branchAddr,ifBranch,branchPc);//先0再1
MUX #(32)mux5(branchPc,jumpAddr,Jump,JumpPc);
PC upc(clk,pcin,pc,nop,pcout,jumpAddr,branchAddr,Jump,ifBranch && (nopcount != 2) && (idexMemRead == 0 || (ifidRs != writeReg && ifidRt != writeReg) ));
//PC upc(clk,nop,Jump, Branch, pcin,pcout,pc,JumpPc, branchPc);
//PC upc(clk,nop,JumpPc,pcout,pc);
//PC uPC(clk,JumpPc,pc);
PCAdd4 uPCAdd4(pc,pcin);//pcin是新的pc
InsMem uInsMem(pc,ins);
IFIDRegister ifid(clk & nop, pc,pcin,ins,ifidop,ifidpcOut,ifidpcinOut,ifidinsOut,ifidRs,ifidRt,ifidRd );

Control control(nop, ifidop, funct, RegDst, Jump, BEQ, BNE, MemRead, MemtoReg,ALUOp, MemWrite, ALUSrc, RegWrite, ExtSel);
ForwardUnit2 forward2(clk, BEQ||BNE, idexRegWrite,exmemRegWrite,ifidRs,ifidRt ,writeReg,exmemwriteReg, ForwardC,ForwardD);
SignExtend extend(ifidinsOut[15:0],ExtSel,signextend);
Registers regs(clk, memwbRegWrite,ifJAL,ifidpcinOut, ifidRs, ifidRt, memwbwriteReg, writeData,readData1, readData2,ra);
MUX3to1 #(32) mux10(readData1,ALUresult,exmemALUresult,ForwardC,idexreadData1in);
MUX3to1 #(32) mux11(readData2,ALUresult,exmemALUresult,ForwardD,idexreadData2in);
IDEXRegister idex( clk ,nop, ifidpcOut, RegDst,Jump, BEQ,BNE, MemRead, MemtoReg,ALUOp, MemWrite, ALUSrc, RegWrite, ExtSel,idexreadData1in, idexreadData2in,ra,signextend,ifidRs,ifidRt,ifidRd,ifidop,idexpc,idexRegDst,idexJump,idexBEQ,idexBNE,idexMemRead,idexMemtoReg,idexALUOp,idexMemWrite,idexALUSrc, idexRegWrite, idexExtSel,idexReadData1Out, idexReadData2Out, idexRaOut, idexSignExtendOut, idexRs,idexRt,idexRd ,idexop);

ForwardUnit forward1(exmemRegWrite, memwbRegWrite,exmemwriteReg, memwbwriteReg,idexRs,idexRt, ForwardA,ForwardB);
ALUcontrol aluc(idexALUOp,idexSignExtendOut[5:0],idexop ,alucontrol);
MUX #(5) mux1(idexRt,idexRd,idexRegDst,writeReg);
MUX3to1 #(32) mux8(idexReadData1Out,writeData,exmemALUresult,ForwardA,ALUa);
MUX3to1 #(32) mux9(idexReadData2Out,writeData,exmemALUresult,ForwardB,exmemReadData2In);
MUX #(32)mux2(exmemReadData2In,idexSignExtendOut,idexALUSrc,ALUb);
ALU alu(ALUa,ALUb,shamt,alucontrol,ALUresult);
ExMemRegister exmem(clk,idexJump,idexRegWrite,idexMemtoReg,idexMemRead,idexMemWrite,writeReg,idexpc,ALUresult,exmemReadData2In,exmemJump,exmemRegWrite,exmemMemtoReg,exmemMemRead,exmemMemWrite,exmemwriteReg,exmempc,exmemALUresult, exmemReadData2Out);

DataMemory DM(clk, exmemMemRead, exmemMemWrite, exmemALUresult, exmemReadData2Out, readData);
MEMWBRegister memwb(clk,exmemJump, exmemRegWrite,exmemMemtoReg,exmempc, readData,exmemALUresult,exmemwriteReg,memwbJump,memwbRegWrite,memwbMemtoReg,memwbpc,memwbreadData,memwbALUresult,memwbwriteReg );
MUX #(32)mux3(memwbALUresult,memwbreadData,memwbMemtoReg,writeData);
MUX #(32)mux6(writeData, 0, memwbJump, writeback);
endmodule
