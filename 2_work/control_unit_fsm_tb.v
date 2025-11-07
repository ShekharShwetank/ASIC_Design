`timescale 1ns / 1ps

module control_unit_fsm_tb;

    // Parameters
    localparam CLK_PERIOD = 10;

    // Opcode Definitions
    localparam [3:0] 
        OP_ADD    = 4'b0000,
        OP_LOAD   = 4'b0001,
        OP_STORE  = 4'b0010,
        OP_BRANCH = 4'b0011,
        OP_NOP    = 4'b1111;

    // State Definitions
    localparam [3:0] 
        S_IDLE      = 4'b0000,
        S_DECODE    = 4'b0001,
        S_EXEC_R    = 4'b0010,
        S_WB_R      = 4'b0011,
        S_EXEC_MEM  = 4'b0100,
        S_MEM_READ  = 4'b0101,
        S_WB_MEM    = 4'b0110,
        S_MEM_WRITE = 4'b0111,
        S_EXEC_BR   = 4'b1000;

    // Signals
    reg clk;
    reg rst_n;
    reg [3:0] opcode;

    wire RegWrite, ALUSrc, MemRead, MemWrite, MemtoReg, Branch;
    wire [1:0] ALUOp;

    // Statistics
    integer errors = 0;

    // Instantiate DUT
    control_unit_fsm dut (
        .clk(clk),
        .rst_n(rst_n),
        .opcode(opcode),
        .RegWrite(RegWrite),
        .ALUSrc(ALUSrc),
        .ALUOp(ALUOp),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .MemtoReg(MemtoReg),
        .Branch(Branch)
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
        
        // 1. Reset Test
        $display("\n--- Test 1: Reset ---");
        rst_n = 0;
        opcode = OP_ADD; // Set an opcode
        #(CLK_PERIOD * 2);
        rst_n = 1;
        
        @(posedge clk);
        if (dut.state === S_IDLE)
            $display("PASS: FSM reset to S_IDLE.");
        else
            errors = errors + 1;

        // 2. ADD Instruction Test
        $display("\n--- Test 2: ADD Instruction ---");
        opcode = OP_ADD;
        
        @(posedge clk); // S_IDLE -> S_DECODE
        check_state(S_DECODE);
        
        @(posedge clk); // S_DECODE -> S_EXEC_R
        check_state_and_signals(S_EXEC_R, 0, 0, 2'b10, 0, 0, 0, 0);
        
        @(posedge clk); // S_EXEC_R -> S_WB_R
        check_state_and_signals(S_WB_R, 1, 0, 2'b00, 0, 0, 0, 0);

        @(posedge clk); // S_WB_R -> S_IDLE
        check_state(S_IDLE);

        // 3. LOAD Instruction Test
        $display("\n--- Test 3: LOAD Instruction ---");
        opcode = OP_LOAD;
        
        @(posedge clk); // S_IDLE -> S_DECODE
        check_state(S_DECODE);
        
        @(posedge clk); // S_DECODE -> S_EXEC_MEM
        check_state_and_signals(S_EXEC_MEM, 0, 1, 2'b00, 0, 0, 0, 0);
        
        @(posedge clk); // S_EXEC_MEM -> S_MEM_READ
        check_state_and_signals(S_MEM_READ, 0, 0, 2'b00, 1, 0, 0, 0);

        @(posedge clk); // S_MEM_READ -> S_WB_MEM
        check_state_and_signals(S_WB_MEM, 1, 0, 2'b00, 0, 0, 1, 0);

        @(posedge clk); // S_WB_MEM -> S_IDLE
        check_state(S_IDLE);

        // 4. STORE Instruction Test
        $display("\n--- Test 4: STORE Instruction ---");
        opcode = OP_STORE;
        
        @(posedge clk); // S_IDLE -> S_DECODE
        check_state(S_DECODE);
        
        @(posedge clk); // S_DECODE -> S_EXEC_MEM
        check_state_and_signals(S_EXEC_MEM, 0, 1, 2'b00, 0, 0, 0, 0);
        
        @(posedge clk); // S_EXEC_MEM -> S_MEM_WRITE
        check_state_and_signals(S_MEM_WRITE, 0, 0, 2'b00, 0, 1, 0, 0);
        
        @(posedge clk); // S_MEM_WRITE -> S_IDLE
        check_state(S_IDLE);

        // 5. BRANCH Instruction Test
        $display("\n--- Test 5: BRANCH Instruction ---");
        opcode = OP_BRANCH;
        
        @(posedge clk); // S_IDLE -> S_DECODE
        check_state(S_DECODE);
        
        @(posedge clk); // S_DECODE -> S_EXEC_BR
        check_state_and_signals(S_EXEC_BR, 0, 0, 2'b01, 0, 0, 0, 1);
        
        @(posedge clk); // S_EXEC_BR -> S_IDLE
        check_state(S_IDLE);

        // 6. NOP (Default Opcode) Test
        $display("\n--- Test 6: NOP (Default) Test ---");
        opcode = OP_NOP;
        
        @(posedge clk); // S_IDLE -> S_DECODE
        check_state(S_DECODE);
        
        @(posedge clk); // S_DECODE -> S_IDLE
        check_state_and_signals(S_IDLE, 0, 0, 2'b00, 0, 0, 0, 0);

        // --- Final Result ---
        if (errors == 0)
            $display("\n*** ALL TESTS PASSED ***");
        else
            $display("\n*** %0d TESTS FAILED ***", errors);

        $finish;
    end
    
    // Task to check state
    task check_state(input [3:0] expected_state);
        if (dut.state === expected_state)
            $display("  PASS: Entered state %h", expected_state);
        else begin
            $display("  FAIL: Expected state %h, but was in %h", expected_state, dut.state);
            errors = errors + 1;
        end
    endtask

    // Task to check state and all signals
    task check_state_and_signals(
        input [3:0] expected_state,
        input exp_RegWrite,
        input exp_ALUSrc,
        input [1:0] exp_ALUOp,
        input exp_MemRead,
        input exp_MemWrite,
        input exp_MemtoReg,
        input exp_Branch
    );
        check_state(expected_state);
        if (RegWrite !== exp_RegWrite) begin $display("  FAIL: RegWrite mismatch"); errors = errors + 1; end
        if (ALUSrc   !== exp_ALUSrc)   begin $display("  FAIL: ALUSrc mismatch");   errors = errors + 1; end
        if (ALUOp    !== exp_ALUOp)    begin $display("  FAIL: ALUOp mismatch");    errors = errors + 1; end
        if (MemRead  !== exp_MemRead)  begin $display("  FAIL: MemRead mismatch");  errors = errors + 1; end
        if (MemWrite !== exp_MemWrite) begin $display("  FAIL: MemWrite mismatch"); errors = errors + 1; end
        if (MemtoReg !== exp_MemtoReg) begin $display("  FAIL: MemtoReg mismatch"); errors = errors + 1; end
        if (Branch   !== exp_Branch)   begin $display("  FAIL: Branch mismatch");   errors = errors + 1; end
    endtask

endmodule
