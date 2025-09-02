// d_ff.v
module d_ff(
    input D,
    input clk,
    output Q,
    output Q_bar
);

    wire S_wire;
    wire R_wire;

    assign S_wire = D;

    not (R_wire, D);
// change sr_ff_d to sr_ff
    sr_ff_d UUT_sr_ff_d (
        .S(S_wire),
        .R(R_wire),
        .clk(clk),
        .Q(Q),
        .Q_bar(Q_bar)
    );

endmodule

