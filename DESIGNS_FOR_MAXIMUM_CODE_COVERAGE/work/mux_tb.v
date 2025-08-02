// mux_tb.v
module mux_tb();
    reg a,b,s,clk,rst;
    wire y;

    mux dut(.a(a),.b(b),.s(s),.clk(clk),.rst(rst),.y(y));
    
    initial
     begin
        clk=0;
        forever #5 clk=~clk;
     end

    initial begin
        // Reset 
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
        
        #10 rst = 1; 
        #10 a = 0; b = 0; s = 1'bx;
        #10 a = 1; b = 0; s = 1'bx;
        #10 a = 0; b = 1; s = 1'bx;
        #10 a = 1; b = 1; s = 1'bx;
        
        #10 rst = 0;
        /*
        #10 a = 0; b = 0; // Keep inputs stable
        #10 s = 1'bx;    // Assign 'X' to 's'
        #10;        // Wait for clock edge to propagate 'X' and hit default
        */
        // Return s to a defined value before finishing
        s = 0;
        #10;
        
        #10 $finish;
    end
endmodule
