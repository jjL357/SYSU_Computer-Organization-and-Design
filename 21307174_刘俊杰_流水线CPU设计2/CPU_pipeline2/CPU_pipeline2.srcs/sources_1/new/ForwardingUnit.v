`timescale 1ns / 1ps
module ForwardingUnit(IDEX_Reg1,IDEX_Reg2,IDEX_data1,IDEX_data2,EXMEM_regwrite,wr2,EXMEM_result,MEMWB_regwrite,MEMWB_writereg,MEMWB_result,result_1,result_2,ifid_ins[25:21],ifid_ins[20:16],reading_data1,reading_data2,IDEX_RegWrite,wr1,result,zero,at,bt);
input [4:0]IDEX_Reg1,IDEX_Reg2,wr1,wr2;
input EXMEM_regwrite,MEMWB_regwrite;
input [31:0]IDEX_data1,IDEX_data2,EXMEM_result,MEMWB_result;
output [31:0] result_1,result_2;
input [4:0]MEMWB_writereg;
input [31:0]reading_data1,reading_data2;
input IDEX_RegWrite;
input [31:0]result,ifid_ins;
output zero;
output [31:0]at,bt;
ForwardingUnit1 fu1_1(IDEX_Reg1,IDEX_Reg2,IDEX_data1,IDEX_data2,EXMEM_regwrite,wr2,EXMEM_result,MEMWB_regwrite,MEMWB_writereg,MEMWB_result,result_1,result_2);
ForwordingUnit2 fu2_1(ifid_ins[25:21],ifid_ins[20:16],reading_data1,reading_data2,IDEX_RegWrite,wr1,result,EXMEM_regwrite,wr2,EXMEM_result,MEMWB_regwrite,MEMWB_writereg,MEMWB_result,zero,at,bt);
endmodule
