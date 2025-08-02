module four_bitcounter_tb();
	reg clk,rst;
	wire reg[3:0]q;

// initiating the top module
four_bitcounter UUT(.clk(clk),.rst(rst),.q(q));

always #5 clk=~clk;

initial
	begin
		rst = 1'b1; //initial state: reset active
		#10;	    //Hold reset for 10 time units
		rst = 1'b0; //Deactivate reset and allow counter to count
		repeat(20)@(posedge clk); //Allow the upcounting
		
		//Apply reset again mid-count
		rst = 1'b1;
		#10;
		rst = 1'b0;
		repeat(5)@(posedge clk); //Final increment cycles
		
		//End of simulation
		$finish; 
	end
endmodule
