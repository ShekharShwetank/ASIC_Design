`timescale 1ns / 1ps

module datapath_tb;

    // Parameters
    localparam DATA_WIDTH = 8;
    localparam Z_WIDTH = 18;
    localparam CLK_PERIOD = 10;

    // Signals
    reg clk;
    reg rst_n;
    reg start;
    reg [DATA_WIDTH-1:0] A, B, C, D;
    wire [Z_WIDTH-1:0] Z;
    wire done;
    
    integer errors = 0;

    // Instantiate DUT
    resource_shared_datapath #(
        .DATA_WIDTH(DATA_WIDTH),
        .Z_WIDTH(Z_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .A(A), .B(B), .C(C), .D(D),
        .Z(Z),
        .done(done)
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

        // 1. Reset
        rst_n = 0;
        start = 0;
        A = 0; B = 0; C = 0; D = 0;
        #(CLK_PERIOD * 2);
        rst_n = 1;
        @(posedge clk);
        $display("--- System Reset Complete ---");

	// Test 1: Simple positive
        // (5 + 10) * (8 - 3) = 15 * 5 = 75
        apply_and_check(8'd5, 8'd10, 8'd8, 8'd3, 18'd75);
        
        // Test 2: Negative result
        // (10 + 2) * (5 - 10) = 12 * -5 = -60
        apply_and_check(8'd10, 8'd2, 8'd5, 8'd10, -18'd60);
        
        // Test 3: Corrected Expected Value (was -256)
        // ($signed(8'hFF) + $signed(8'h01)) * ($signed(8'h00) - $signed(8'h01))
        // (-1 + 1) * (0 - 1) = 0 * -1 = 0
        apply_and_check(8'hFF, 8'h01, 8'h00, 8'h01, 18'd0);
        
        // Test 4: Corrected Expected Value (was -21675)
        // ($signed(8'hAA) + $signed(8'h55)) * ($signed(8'h55) - $signed(8'hAA))
        // (-86 + 85) * (85 - (-86)) = -1 * 171 = -171
        apply_and_check(8'hAA, 8'h55, 8'h55, 8'hAA, -18'd171);

        if (errors == 0)
            $display("\n*** ALL TESTS PASSED ***");
        else
            $display("\n*** %0d TESTS FAILED ***", errors);
            
        $finish;
    end

    // Task to apply values, start, and check result
    task apply_and_check;
        input [DATA_WIDTH-1:0] i_A;
        input [DATA_WIDTH-1:0] i_B;
        input [DATA_WIDTH-1:0] i_C;
        input [DATA_WIDTH-1:0] i_D;
        input [Z_WIDTH-1:0]    exp_Z;
        
        @(posedge clk);
        A = i_A;
        B = i_B;
        C = i_C;
        D = i_D;
        start = 1;
        
        @(posedge clk);
        start = 0;

        @(posedge done); // Wait for the 'done' signal
        
        // Check result on the same cycle as 'done'
        if (Z === exp_Z) begin
            $display("PASS: (A=%d, B=%d, C=%d, D=%d) -> Z=%d", $signed(i_A), $signed(i_B), $signed(i_C), $signed(i_D), $signed(Z));
        end else begin
            $display("FAIL: (A=%d, B=%d, C=%d, D=%d) -> Z=%d, Expected=%d", $signed(i_A), $signed(i_B), $signed(i_C), $signed(i_D), $signed(Z), $signed(exp_Z));
            errors = errors + 1;
        end
        @(posedge clk); // Wait one cycle for FSM to return to IDLE
    endtask

endmodule
