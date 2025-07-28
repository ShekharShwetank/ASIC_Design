module sync_HA(a,b,clk,sum,c_out);
	input a,b,clk;
	output reg sum, c_out;

always@(posedge clk)
   begin
      sum<=a^b;
      c_out<=a&b;
   end 
endmodule
