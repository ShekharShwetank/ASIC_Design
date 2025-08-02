module HA(a,b,sum,c_out);
	input a,b;
	output sum, c_out;

assign sum=a^b;
assign c_out=a&b;

endmodule
