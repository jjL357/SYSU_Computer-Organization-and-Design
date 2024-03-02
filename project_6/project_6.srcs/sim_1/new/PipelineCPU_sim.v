`timescale 1ns / 1ps

module PipelineCPU_sim( );
reg clk;
wire[15:0] q;
wire [1:0] select;
wire  [31:0]ALUa;
wire [31:0]ALUb;
wire memwbMemtoReg;
PipelineCPU uCPU(clk,q,select,ALUa,ALUb,memwbMemtoReg);
initial begin
clk = 0;
end
always #5 clk = ~clk;
endmodule
