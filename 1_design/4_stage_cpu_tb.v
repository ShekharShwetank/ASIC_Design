`timescale 1ns / 1ps

module pipeline_control_tb;

    // --- Parameters ---
    localparam CLK_PERIOD = 10;

    // --- Signals ---
    reg clk;
    reg rst;

    // Instantiate the DUT (Design Under Test)
    pipeline_cpu dut (
        .clk(clk),
        .rst(rst)
    );

    // --- Clock Generation ---
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end

    // --- Test Sequence ---
    initial begin
        // Dump waves
        $dumpfile("wave.vcd");
        $dumpvars(0, dut);

        // 1. Reset the system
        rst = 1;
        @(negedge clk);
        @(negedge clk);
        rst = 0;
        
        // 2. Monitor execution
        // We need to run for enough cycles to complete the program
        // Cycle 0: PC=0, IF fetches ADD R1, R2, R3
        // Cycle 1: PC=1, IF fetches ADD R4, R1, R5 | ID decodes ADD R1
        // Cycle 2: PC=2, IF fetches NOP            | ID decodes ADD R4 | EX executes ADD R1
        // Cycle 3: PC=2, IF fetches NOP (STALLED)  | ID decodes ADD R4 (STALLED) | EX exec. NOP (BUBBLE) | WB writes R1
        // Cycle 4: PC=3, IF fetches NOP            | ID decodes ADD R4 | EX executes ADD R4
        // Cycle 5: PC=4, IF fetches NOP            | ID decodes NOP    | EX executes NOP | WB writes R4
        // Cycle 6: PC=5, IF fetches NOP            | ID decodes NOP    | EX executes NOP
        // Cycle 7: WB writes NOP (nothing)
        
        $display("Time\tPC\tIF/ID_Instr\tID/EX_Op\tEX/WB_Op\tHazard");
        repeat (10) begin
            @(posedge clk);
            $display("%0t\t%d\t%h\t\t%h\t\t%h\t\t%b",
                     $time,
                     dut.pc,
                     dut.if_id_instr,
                     dut.id_ex_rd_addr, // Show dest reg in ID/EX
                     dut.ex_wb_rd_addr, // Show dest reg in EX/WB
                     dut.hazard_detected);
        end

        // 3. Check final register values
        // R1 = R2(5) + R3(10) = 15
        // R4 = R1(15) + R5(7) = 22
        $display("\n--- Final Register Values ---");
        $display("Register R1 (addr 1): %d", dut.reg_file[1]);
        $display("Register R4 (addr 4): %d", dut.reg_file[4]);

        if (dut.reg_file[1] == 15 && dut.reg_file[4] == 22) begin
            $display("TEST PASSED: Hazard detected and resolved correctly.");
        end else begin
            $display("TEST FAILED: Final register values are incorrect.");
        end

        $finish;
    end

endmodule
