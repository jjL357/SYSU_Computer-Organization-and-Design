module CPU(input clk,output wire[15:0] q);
    wire[31:0] pc;
    wire [31:0] pcin;
    wire[31:0] ins;
    assign q[15:8] = pc[7:0];
    assign q[7:0] = ins[31:24];
    PC uPC(clk,pcin,pc);
    Add a(pc,4,pcin);
    InsMem uInsMem (pc,ins);
endmodule