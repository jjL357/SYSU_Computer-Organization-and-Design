`timescale 1ns / 1ps
module PCAdder4(pc,pcIn);
    input [31:0]pc;
    output [31:0] pcIn;
    assign pcIn=pc+4;
endmodule

