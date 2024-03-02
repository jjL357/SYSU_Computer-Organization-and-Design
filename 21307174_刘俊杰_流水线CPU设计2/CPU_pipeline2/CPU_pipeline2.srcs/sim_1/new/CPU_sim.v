`timescale 1ns / 1ps

module CPU_sim();
reg clk=0;
wire[15:0]q;
reg [2:0]t=0;
wire [31:0]smg;
wire [31:0]a;
wire [31:0]b;
CPU C1(clk,q,t,smg,a,b);
always #5 clk=~clk;
always #5 t=t+1;
endmodule
