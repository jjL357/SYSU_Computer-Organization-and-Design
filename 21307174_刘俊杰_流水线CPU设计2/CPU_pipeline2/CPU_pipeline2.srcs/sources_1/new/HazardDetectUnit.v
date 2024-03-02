`timescale 1ns / 1ps
module HazardDetectUnit(clk,pcin,ins,ifid_rs,ifid_rt,IDEX_reg,IDEX_MemRead,pcout,zero,ccc);
input [31:0]pcin;     
input [31:0]ins;
input [4:0]ifid_rs,ifid_rt,IDEX_reg;
input IDEX_MemRead,clk;
output reg[31:0]pcout;
output [31:0]ccc;
output  zero;
reg [31:0]count;
assign ccc=count;
assign zero=count==0?1:0;
//assign count=(IDEX_MemRead&&(ins[31:0]==6'b0001000||ins[31:26]==6'b000101)&&(IDEX_reg==ifid_rs||IDEX_reg==ifid_rt)&&IDEX_reg!=0)?2:0;
//assign count(IDEX_MemRead&&(IDEX_reg==ifid_rs||IDEX_reg==ifid_rt)&&IDEX_reg!=0)count=1;
initial begin
count=0;
pcout=0;

end
always@(negedge clk)begin
if(count!=0)begin
count=count-1;
end
if(IDEX_MemRead&&(ins[31:26]==6'b000100||ins[31:26]==6'b000101)&&(IDEX_reg==ifid_rs||IDEX_reg==ifid_rt)&&IDEX_reg!=0)begin
pcout=pcin+4;
count=2;
end
else if(IDEX_MemRead&&(IDEX_reg==ifid_rs||IDEX_reg==ifid_rt)&&IDEX_reg!=0)begin 
count=1;
pcout=pcin+4;

end
end

endmodule
