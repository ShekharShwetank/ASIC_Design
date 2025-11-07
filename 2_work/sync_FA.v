// sync_full_adder_1bit - Synchronous 1-bit Full Adder using Synchronous Half Adders
module sync_FA(
    input a,
    input b,
    input cin,
    input clk,
    output reg sum,
    output reg cout
);

    wire s1_wire, c1_wire, c2_wire, sum_w;

    sync_HA ha1 (
        .a(a),
        .b(b),
        .clk(clk),
        .sum(s1_wire),
        .c_out(c1_wire)
    );

    sync_HA ha2 (
        .a(s1_wire),
        .b(cin),
        .clk(clk),
        .sum(sum_w),
        .c_out(c2_wire)
    );

    always @(posedge clk) begin
    	sum <= sum_w;
        cout <= c1_wire | c2_wire;
    end

endmodule

