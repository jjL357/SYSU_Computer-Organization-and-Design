`timescale 1ns / 1ps
module PC(
input clk,
input [31:0] pcin,
output reg[31:0] pc = 0
);
always@(posedge clk) begin
    pc = pcin;
end
endmodule
