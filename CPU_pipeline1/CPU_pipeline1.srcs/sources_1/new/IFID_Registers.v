`timescale 1ns / 1ps

module IFID_Registers(clk,pc,pcIn,ins,ifid_pc,ifid_pcIn,ifid_ins,ifid_rs,ifid_rt,ifid_rd);
input clk;
input [31:0]pc;
input [31:0]pcIn;
input [31:0]ins;
output reg[31:0]ifid_pc;
output reg[31:0]ifid_pcIn;
output reg[31:0]ifid_ins;
output reg[4:0]ifid_rs;
output reg[4:0]ifid_rt;
output reg[4:0]ifid_rd;
initial begin
ifid_pc<=0;
ifid_pcIn<=0;
ifid_ins<=0;
ifid_rs<=0;
ifid_rt<=0;
ifid_rd<=0;
end
always@(posedge clk)begin
ifid_pc<=pc;
ifid_pcIn<=pcIn;
ifid_ins<=ins;
ifid_rs<=ins[25:21];
ifid_rt<=ins[20:16];
ifid_rd<=ins[15:10];
end
endmodule
