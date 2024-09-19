`timescale 1ns / 1ps
module PC(clk,pcin,pc,nop, lwnextpc, JumpPc,BranchPc,Jump,Branch);
input clk;
input nop;
input Jump,Branch;
input [31:0] pcin,lwnextpc,JumpPc, BranchPc;
output [31:0] pc;
reg [31:0] t1 = 0, t2 = 0,t3 = 0, t4 = 0;
assign pc = (t3 == t4) ? t2 : t1;
always@(posedge clk & nop) begin
    t1 = (nop == 1) ? pcin : lwnextpc;
    if(!Jump&&!Branch)t3 = t3 + 1;
end
    always@(negedge clk)
        begin
            if(Jump == 1) t2 = JumpPc;
            else if(Branch == 1) t2 = BranchPc;
            else t2 = t1;
            t4 = t3;
        end
endmodule
