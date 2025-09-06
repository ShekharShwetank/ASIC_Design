module sync_FA_tb(a, b, cin, sum, cout);
    reg a, b, cin;
    reg clk;
    wire sum, cout;

    sync_FA UUT(
        .a(a),
        .b(b),
        .cin(cin),
        .clk(clk),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial 
    	begin
    	   a=0; b=0; cin=0;
    	   #10 a=0; b=0; cin=1;
    	   #10 a=0; b=1; cin=0;
    	   #10 a=0; b=1; cin=1;
    	   #10 a=1; b=0; cin=0;
    	   #10 a=1; b=0; cin=1;
    	   #10 a=1; b=1; cin=0;
    	   #10 a=1; b=1; cin=1;
    	   #10 $finish;
     	end
endmodule
