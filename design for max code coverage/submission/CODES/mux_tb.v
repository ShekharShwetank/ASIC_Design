// mux_tb.v
module mux_tb();
    reg a,b,s,rst;
    wire y;

    mux dut(.a(a),.b(b),.s(s),.rst(rst),.y(y));

    initial begin
        // --- Test Reset Functionality ---    
        rst = 0; 
        #10 a = 0; b = 0; s = 0;
        #10 a = 1; b = 0; s = 0;
        #10 a = 0; b = 1; s = 0;
        #10 a = 1; b = 1; s = 0;
        
        #10 a = 0; b = 0; s = 1;
        #10 a = 1; b = 0; s = 1;
        #10 a = 0; b = 1; s = 1;
        #10 a = 1; b = 1; s = 1;
        
        #10 rst = 1; 
        #10 a = 0; b = 0; s = 0;
        #10 a = 1; b = 0; s = 0;
        #10 a = 0; b = 1; s = 0;
        #10 a = 1; b = 1; s = 0;
        
        #10 a = 0; b = 0; s = 1;
        #10 a = 1; b = 0; s = 1;
        #10 a = 0; b = 1; s = 1;
        #10 a = 1; b = 1; s = 1;
        
        #10 $finish;
    end
endmodule
