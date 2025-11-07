`timescale 1ns / 1ps

module register_file_tb;

    // Parameters
    localparam DATA_WIDTH = 32;
    localparam ADDR_WIDTH = 3;
    localparam CLK_PERIOD = 10;

    // Testbench Signals
    reg clk;
    reg rst_n;
    reg [ADDR_WIDTH-1:0] addr_a;
    reg [ADDR_WIDTH-1:0] addr_b;
    reg we_w;
    reg [ADDR_WIDTH-1:0] addr_w;
    reg [DATA_WIDTH-1:0] data_w;
    wire [DATA_WIDTH-1:0] data_a;
    wire [DATA_WIDTH-1:0] data_b;

    // Instantiate the DUT
    register_file #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .addr_a(addr_a),
        .data_a(data_a),
        .addr_b(addr_b),
        .data_b(data_b),
        .we_w(we_w),
        .addr_w(addr_w),
        .data_w(data_w)
    );

    // Clock Generator
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end

    // Test Sequence
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, dut);

        // 1. Initialize and Reset
        rst_n = 0; // Assert active-low reset
        we_w = 0;
        addr_a = 1;
        addr_b = 2;
        addr_w = 0;
        data_w = 32'hAAAAAAAA;
        
        #(CLK_PERIOD * 1.5); // Wait for reset to propagate
        rst_n = 1; // De-assert reset
        
        @(negedge clk);
        $display("T=%0t: Reset released.", $time);
        
        // 2. Check reset
        @(posedge clk);
        if (data_a === 32'b0 && data_b === 32'b0) begin
            $display("T=%0t: TEST PASSED - Registers reset to 0.", $time);
        end else begin
            $display("T=%0t: TEST FAILED - Reset failed. data_a=%h, data_b=%h", $time, data_a, data_b);
        end

        // 3. Write to R3
        we_w = 1;
        addr_w = 3;
        data_w = 32'hDEADBEEF;
        $display("T=%0t: Writing 0xDEADBEEF to R3.", $time);
        
        @(posedge clk);
        
        // 4. Write to R5, Read from R3 (check prev write) and R1 (check reset)
        we_w = 1;
        addr_w = 5;
        data_w = 32'h12345678;
        addr_a = 3; // Read R3
        addr_b = 1; // Read R1
        $display("T=%0t: Writing 0x12345678 to R5. Reading R3 and R1.", $time);

        @(posedge clk);
        if (data_a === 32'hDEADBEEF && data_b === 32'b0) begin
            $display("T=%0t: TEST PASSED - R3=0xDEADBEEF, R1=0x0.", $time);
        end else begin
            $display("T=%0t: TEST FAILED - R3 read failed. data_a=%h, data_b=%h", $time, data_a, data_b);
        end

        // 5. Read R5 and R3 (check both writes)
        we_w = 0;
        addr_a = 5; // Read R5
        addr_b = 3; // Read R3
        $display("T=%0t: Reading R5 and R3.", $time);

        @(posedge clk);
        if (data_a === 32'h12345678 && data_b === 32'hDEADBEEF) begin
            $display("T=%0t: TEST PASSED - R5=0x12345678, R3=0xDEADBEEF.", $time);
        end else begin
            $display("T=%0t: TEST FAILED - R5/R3 read failed. data_a=%h, data_b=%h", $time, data_a, data_b);
        end

        $finish;
    end

endmodule
