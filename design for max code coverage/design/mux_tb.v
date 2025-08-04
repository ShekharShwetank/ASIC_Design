// mux_tb.v
module mux_tb();
    reg a,b,s,rst;
    wire y;

    mux dut(.a(a),.b(b),.s(s),.rst(rst),.y(y));

    initial begin
        rst = 1'b1;
        a = 1'b1;
        b = 1'b0;
        s = 1'b1;
        #10;

        a = 1'b1;
        b = 1'b0;
        s = 1'b0;
        #10;

        a = 1'b0;
        b = 1'b1;
        s = 1'b1;
        #10;

        a = 1'b0;
        b = 1'b1;
        s = 1'b0;
        #10;

        $finish;
    end
endmodule
