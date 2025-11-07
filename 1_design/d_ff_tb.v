//d_ff_tb.v
module d_ff_tb();
    reg D_tb;
    reg clk_tb;
    wire Q_tb;
    wire Q_bar_tb;

    d_ff UUT (
        .D(D_tb),
        .clk(clk_tb),
        .Q(Q_tb),
        .Q_bar(Q_bar_tb)
    );

    initial begin
        clk_tb = 1'b0;
        forever #5 clk_tb = ~clk_tb;
    end

    initial begin
    	D_tb = 0;
    	#10 D_tb = 1;
    	#10 D_tb = 0;
    	#10 D_tb = 1;
    	#10 D_tb = 0;
    	#10 D_tb = 1;
    	#2 D_tb = 0;
        #8 $finish;
    end

endmodule

