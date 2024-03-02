`timescale 1ns / 1ps
module ExMemRegister(clk,Jump,RegWrite,MemtoReg, memRead,memWrite,writeReg, pc,aluResult,ReadData2,exmemJump,exmemRegWrite,exmemMemtoReg,exmemMemRead,exmemMemWrite,exmemwriteReg,exmemPc,exmemAluResult,exmemReadData2);
    input clk, Jump,RegWrite,MemtoReg,memRead,memWrite;
    output reg exmemJump,exmemRegWrite,exmemMemtoReg,exmemMemRead,exmemMemWrite;
    input [4:0]writeReg;
    input [31:0] pc,aluResult,ReadData2;
    output reg [4:0]exmemwriteReg;
    output reg [31:0] exmemPc,exmemAluResult,exmemReadData2;
    initial begin
          {exmemJump,exmemRegWrite,exmemMemtoReg,exmemMemRead,exmemMemWrite,exmemwriteReg,exmemPc,exmemAluResult,exmemReadData2 }<=0;
    end
always @(posedge clk) begin 
{exmemJump,exmemRegWrite,exmemMemtoReg,exmemMemRead,exmemMemWrite,exmemwriteReg,exmemPc,exmemAluResult,exmemReadData2 } 
         <= { Jump,RegWrite,MemtoReg,memRead,memWrite,writeReg,pc,aluResult ,ReadData2};
end
endmodule