module sr_ff_tb();
    reg S, R;
    reg clk;
    wire Q, Q_bar;

    sr_ff UUT (
        .S(S),
        .R(R),
        .clk(clk),
        .Q(Q),
        .Q_bar(Q_bar)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
    	S = 0; R =0;
    	#10 S = 1; R = 0;
    	#10 S = 0; R = 0;
    	#10 S = 0; R = 1;
    	#10 S = 0; R = 0;
    	#10 S = 1; R = 1;
    	#10 S = 1; R = 0;
        #10 $finish;
    end

endmodule

