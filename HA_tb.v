module HA_tb(a,b,sum,c_out);
	reg a,b;
	wire sum,c_out;

HA_tb UUT(.a(a),.b(b),.sum(sum),.c_out(c_out));

initial
     begin
        a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        #10 $finish;
     end
endmodule
