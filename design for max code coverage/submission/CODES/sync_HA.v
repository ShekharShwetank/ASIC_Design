module sync_HA(a,b,sum,c_out);
	input a,b;
	output sum, c_out;

always@(posedge clk)
   begin
      sum<=a^b;
      carry<=a&b;
   end 
endmodule
