`timescale 1ns / 1ps

             
module ForwordingUnit2(ifid_Reg1,ifid_Reg2,readingdata1,readingdata2,IDEX_RegWrite,IDEX_WriteReg,result,EXMEM_RegWrite,EXMEM_WriteReg,EXMEM_result,MEMWB_RegWrite,MEMWB_WriteReg,MEMWB_result,zero,aa,bb);
input [4:0]ifid_Reg1,ifid_Reg2,EXMEM_WriteReg,MEMWB_WriteReg;
input [31:0]readingdata1,readingdata2,MEMWB_result,EXMEM_result;
input EXMEM_RegWrite,MEMWB_RegWrite;
input IDEX_RegWrite;
input [4:0]IDEX_WriteReg;
input [31:0]result;
output zero;
output [31:0]aa,bb;
wire [31:0]a,b,a1,b1,a2,b2;
assign zero = (a2-b2==0) ? 1:0;
assign aa=a2;
assign bb=b2;
Mulx#(32) mulx4(MEMWB_result,readingdata1,(MEMWB_RegWrite&&ifid_Reg1==MEMWB_WriteReg&&MEMWB_WriteReg!=0),a);
Mulx#(32) mulx5(EXMEM_result,a,(EXMEM_RegWrite&&ifid_Reg1==EXMEM_WriteReg&&EXMEM_WriteReg!=0),a1);
Mulx#(32) mulx9(result,a1,(IDEX_RegWrite&&ifid_Reg1==IDEX_WriteReg&&IDEX_WriteReg!=0),a2);
Mulx#(32) mulx6(MEMWB_result,readingdata2,(MEMWB_RegWrite&&ifid_Reg2==MEMWB_WriteReg&&MEMWB_WriteReg!=0),b);
Mulx#(32) mulx1(EXMEM_result,b,(EXMEM_RegWrite&&ifid_Reg2==EXMEM_WriteReg&&EXMEM_WriteReg!=0),b1);
Mulx#(32) mulx10(result,b1,(IDEX_RegWrite&&ifid_Reg2==IDEX_WriteReg&&IDEX_WriteReg!=0),b2);
endmodule
