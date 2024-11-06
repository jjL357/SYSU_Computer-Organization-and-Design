module gate(
    input [8:0] sw,
    output [5:0] led
    );
    full_adder g(sw[3:0],sw[7:4],sw[8],led[3:0],led[4],led[5]);
endmodule