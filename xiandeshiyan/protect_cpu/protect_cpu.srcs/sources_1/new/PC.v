module PC(clk,pcin,pc);
    input clk;
    input [31:0]pcin;
    output [31:0]pc;
    reg [31:0] pc=0;
    always @(posedge clk)
    begin
        pc=pcin;
    end
endmodule