`timescale 1ns / 1ps

module SignExtend(ins16, ExtSel,extendOut);
input [15:0] ins16;
input ExtSel;//为1，符号扩展，为0，无符号
output reg [31:0] extendOut;
always@ (ins16[15:0] , ExtSel) begin
    extendOut={{16{ins16[15]}},ins16[15:0]};
end
endmodule
