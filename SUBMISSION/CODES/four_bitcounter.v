module four_bitcounter(clk,rst,q);
	input clk,rst;
	output reg[3:0]q;

always@(posedge clk)
	begin
		if(rst)
			q <= 0;
		else
			q = q+4'b1;
	end
endmodule

