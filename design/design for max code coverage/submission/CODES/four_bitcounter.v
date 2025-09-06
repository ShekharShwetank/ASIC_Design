module four_bitcounter(clk,rst,count);
	input clk,rst;
	output reg[3:0]q;

always@(posedge clk)
	begin
		if(rst)
			q <= 0
		else
			q = q+1
	end
	count<=q;
endmodule

