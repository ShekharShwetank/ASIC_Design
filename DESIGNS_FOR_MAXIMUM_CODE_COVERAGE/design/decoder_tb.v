// decoder_tb.v
module decoder_tb();
    reg [2:0]a;
    reg rst;
    wire [7:0]y;

    decoder uut(.y(y),.a(a),.rst(rst));

    initial begin
        rst = 1'b0;
        a = 3'd2;
        #10;

        rst = 1'b1;
        a = 3'd2;
        #10;

        rst = 1'b0;
        a = 3'd5;
        #10;

        rst = 1'b0;
        a = 3'd7;
        #10;

        rst = 1'b0;
        a = 3'd6;
        #10;

        $finish;
    end
endmodule

