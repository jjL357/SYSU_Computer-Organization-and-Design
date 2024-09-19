`timescale 1ns / 1ps

module pmd_sim( );
reg g1;
reg g2a_l;
reg g2b_l;
reg[2:0] a;
wire[7:0] y;
p1381 v74x138(g1,g2a_l,g2b_l,a,y);
initial begin
a=0;
g1 = 1;
g2a_l = 0;
g2b_l = 0; 
end
always #100 a = a+ 1;
endmodule