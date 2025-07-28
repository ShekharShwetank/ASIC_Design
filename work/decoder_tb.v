// decoder_tb.v
module decoder_tb();
    reg [2:0]a;
    reg rst;
    wire [7:0]y;

    decoder uut(.y(y),.a(a),.rst(rst));

    initial begin
        rst_tb = 1'b1; // Active high reset
        a_tb = 3'd0;   // Arbitrary input while reset is active
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (Reset Active)", $time, rst_tb, a_tb, y_tb);

        // Test Case 2: Deactivate Reset
        rst_tb = 1'b0; // Inactive low reset
        #10; // Allow time for reset to deassert and logic to stabilize
        $display("Time=%0d | Reset Deactivated", $time);

        // --- Test Decoder Functionality (rst = 0) - All 8 combinations of 'a' ---
        // a = 0 (3'd0)
        rst_tb = 1'b0;
        a_tb = 3'd0;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=0)", $time, rst_tb, a_tb, y_tb);

        // a = 1 (3'd1)
        rst_tb = 1'b0;
        a_tb = 3'd1;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=1)", $time, rst_tb, a_tb, y_tb);

        // a = 2 (3'd2)
        rst_tb = 1'b0;
        a_tb = 3'd2;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=2)", $time, rst_tb, a_tb, y_tb);

        // a = 3 (3'd3)
        rst_tb = 1'b0;
        a_tb = 3'd3;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=3)", $time, rst_tb, a_tb, y_tb);

        // a = 4 (3'd4)
        rst_tb = 1'b0;
        a_tb = 3'd4;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=4)", $time, rst_tb, a_tb, y_tb);

        // a = 5 (3'd5)
        rst_tb = 1'b0;
        a_tb = 3'd5;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=5)", $time, rst_tb, a_tb, y_tb);

        // a = 6 (3'd6)
        rst_tb = 1'b0;
        a_tb = 3'd6;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=6)", $time, rst_tb, a_tb, y_tb);

        // a = 7 (3'd7)
        rst_tb = 1'b0;
        a_tb = 3'd7;
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (a=7)", $time, rst_tb, a_tb, y_tb);

        // --- Additional Reset Test (mid-operation) ---
        // Test Case: Apply reset during normal operation
        rst_tb = 1'b1; // Activate reset
        a_tb = 3'd3; // Arbitrary input while reset is active
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (Reset Active mid-op)", $time, rst_tb, a_tb, y_tb);

        rst_tb = 1'b0; // Deactivate reset
        #10;
        $display("Time=%0d | rst=%b, a=%b | y=%b (Reset Deactivated mid-op)", $time, rst_tb, a_tb, y_tb);

        $finish; // End simulation
    end
endmodule

        $finish;
    end
endmodule

