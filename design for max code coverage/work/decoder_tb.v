// decoder_tb.v
module decoder_tb();
    reg [2:0]a;
    reg clk, rst;
    wire [7:0]y;

    decoder uut(.y(y), .a(a), .clk(clk), .rst(rst));
    
    always #5 clk=~clk;

    initial begin
        clk=1'b0;
        rst = 1'b1;
        a = 3'd0;
        #10;
        a = 3'd1;
        #10;
        a = 3'd2;
        #10;
        a = 3'd3;
        #10;
        a = 3'd4;
        #10;
        a = 3'd5;
        #10;
        a = 3'd6;
        #10;
        a = 3'd7;
        #10;

        rst = 1'b0;
        #10;
        a = 3'd0;
        #10;
        a = 3'd1;
        #10;
        a = 3'd2;
        #10;
        a = 3'd3;
        #10;
        a = 3'd4;
        #10;
        a = 3'd5;
        #10;
        a = 3'd6;
        #10;
        a = 3'd7;
        #10;
        a =3'bx;
        #10

        rst = 1'b1;
        a = 3'd3;
        #10;
        
        a =3'bx;
        #10
        
        rst = 1'b0;
        #10; $finish;
    end
endmodule

