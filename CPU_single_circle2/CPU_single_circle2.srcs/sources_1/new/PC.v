`timescale 1ns / 1ps
module PC(clk,pcIn,pc);
    input clk;
    input [31:0]pcIn;
    output [31:0]pc;
    reg [31:0] pc=0;
    always @(posedge clk)
    begin
        pc=pcIn;
    end
endmodule
