`timescale 1ns / 1ps

module pmd1(clk,y);
input clk;
output [7:0] y;
reg g1;
reg g2a_l;
reg g2b_l;
reg[2:0] a=0;
p1381 v74x138(1,0,0,a,y);
reg[31:0] divclk_cnt = 0; 
reg divclk=0;
always@(posedge clk)
begin
if(divclk_cnt==25000000) // 1 or 25000000(imp)
begin
divclk =~ divclk;
divclk_cnt = 0;
end
else
begin
divclk_cnt = divclk_cnt+1'b1;
end
end
always @ (posedge divclk) 
begin
a=a+1;
end
endmodule