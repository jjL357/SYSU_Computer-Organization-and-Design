`timescale 1ns / 1ps
module CPU(clk,q);
input clk;
output [15:0]q;
wire [31:0]pc;
wire[31:0] pcIn,pc1,b_address,pc2,j_address;
wire[25:0]jump_address;
wire[15:0]address_or_in;
wire [31:0]ins;
wire [5:0]opcode;
wire [5:0]funct;
wire [3:0]ALU_control;
wire [4:0]Reg1,Reg2,Reg3;
wire [31:0]Write_data,Write_data2;
wire [31:0]readreg_data1,readreg_data2;
wire [4:0]Write_Reg;
wire RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUsrc,RegWrite;
wire [1:0]ALUOp;
wire zero;
wire [31:0]a,b,result1;
wire [31:0]result,writedata;
wire ifbranch,Jump;
wire [31:0]readmemory;
assign q[15:8]=pc[7:0];
assign q[7:0]=Write_data2[7:0];
assign opcode=ins[31:26];
assign funct=ins[5:0];
assign jump_address=ins[25:0];
assign address_or_in=ins[15:0];
assign Reg1=ins[25:21];
assign Reg2=ins[20:16];
assign Reg3=ins[15:11];
assign Write_Reg=ins[20:16];
assign b_address=address_or_in*4+pcIn;
assign ifbranch=zero & Branch;
assign j_address=(jump_address*4);
assign j_address[31:28]=pcIn[31:28];
assign a=readreg_data1;
Mulx#(32)m1(b_address,pcIn,ifbranch,pc1);
Mulx#(32)m2(j_address,pc1,Jump,pc2);
PC p1(clk,pc2,pc);
PCAdd4 p2(pc,pcIn);
InsMem uInsMem(pc,ins);
Control c1(opcode,RegDst,Jump,Branch,MemRead,MemtoReg,ALUOp,MemWrite,ALUsrc,RegWrite);
ALUControl a1(funct,ALUOp,ALU_control);
//Mulx#(5)m3(Reg3,Reg2,RegDst,Write_Reg);////0选rt写入，1选rd写入
Registers r1(Reg1,Reg2,clk,RegWrite,Write_Reg,Write_data,readreg_data1,readreg_data2,Reg3,RegDst);
Mulx#(32)m4({16'b0000000000000000,address_or_in},readreg_data2,ALUsrc,b);//ALUsrc0选寄存器，1选立即数或是地址
ALU al1(a,b,ALU_control,result,zero);
DataMem d1(result,clk,readreg_data2,MemWrite,readmemory);
Mulx#(32)m5(readmemory,result,MemtoReg,Write_data);//MemtoReg1返回数据存储器内容,0返回ALU结果
Mulx#(32)m6(0,Write_data,Jump,Write_data2);
endmodule
