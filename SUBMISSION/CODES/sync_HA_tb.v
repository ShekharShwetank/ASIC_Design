module sync_HA_tb();
	reg a,b,clk;
	wire sum,c_out;

sync_HA UUT(.a(a),.b(b),.clk(clk),.sum(sum),.c_out(c_out));

initial
     begin
        clk=0;
        forever #5 clk=~clk;
     end

initial
     begin
        a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        #10 a=0; b=0;
        #10 $finish;
     end
endmodule
