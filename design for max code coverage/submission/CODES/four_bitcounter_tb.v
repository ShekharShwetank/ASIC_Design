module four_bitcounter_tb();
	reg clk,rst;
	wire reg[3:0]q;

##initiating the top module
four_bitcounter UUT(.clk(clk),.rst(rst),.q(q));

always #5 clk=~clk;

initial
	begin
		rst=1'b1;
		clk=1'b0;
		#10 rst=1'b0;
		clk=1'b1;
		#50 $finish;
	end
endmodule
