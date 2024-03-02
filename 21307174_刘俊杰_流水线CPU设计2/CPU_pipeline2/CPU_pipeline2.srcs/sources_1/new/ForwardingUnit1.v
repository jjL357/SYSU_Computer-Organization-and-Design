`timescale 1ns / 1ps

module ForwardingUnit1(IDEX_Reg1,IDEX_Reg2,IDEX_readingdata1,IDEX_readingdata2,EXMEM_RegWrite,EXMEM_WriteReg,EXMEM_result,MEMWB_RegWrite,MEMWB_WriteReg,MEMWB_result,result1,result2);
input [4:0]IDEX_Reg1,IDEX_Reg2,EXMEM_WriteReg,MEMWB_WriteReg;
input EXMEM_RegWrite,MEMWB_RegWrite;
input [31:0]IDEX_readingdata1,IDEX_readingdata2,EXMEM_result,MEMWB_result;
output [31:0] result1,result2;
wire [31:0]reg1t1,reg1t2,reg2t1,re2t2;
Mulx#(32) mulx8(MEMWB_result,IDEX_readingdata1,(MEMWB_RegWrite&&IDEX_Reg1==MEMWB_WriteReg&&MEMWB_WriteReg!=0),reg1t1);
Mulx#(32) mulx3(EXMEM_result,reg1t1,(EXMEM_RegWrite&&IDEX_Reg1==EXMEM_WriteReg&&EXMEM_WriteReg!=0),result1);
Mulx#(32) mulx7(MEMWB_result,IDEX_readingdata2,(MEMWB_RegWrite&&IDEX_Reg2==MEMWB_WriteReg&&MEMWB_WriteReg!=0),reg2t1);
Mulx#(32) mulx2(EXMEM_result,reg2t1,(EXMEM_RegWrite&&IDEX_Reg2==EXMEM_WriteReg&&EXMEM_WriteReg!=0),result2);
endmodule
