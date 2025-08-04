module four_bitcounter_tb();
	reg clk,rst;
	wire [3:0]q;

four_bitcounter UUT(.clk(clk),.rst(rst),.q(q));

initial clk=0;
always #5 clk=~clk;

initial
	begin
		rst = 1'b1;
		#10;
		rst = 1'b0;
		repeat(16)@(posedge clk);
		rst = 1'b1;
		#10;
		$finish; 
	end
endmodule
