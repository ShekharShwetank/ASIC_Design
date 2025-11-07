`timescale 1ns / 1ps

// Multi-Cycle CPU Control Unit (FSM)
module control_unit_fsm (
    input wire clk,
    input wire rst_n, // Active-low asynchronous reset
    
    // Input from Instruction Register
    input wire [3:0] opcode,
    
    // Control Signals for Datapath
    output reg RegWrite,
    output reg ALUSrc,   // 0: RegFile, 1: Immediate
    output reg [1:0] ALUOp,  // 00:ADD, 01:SUB, 10:Opcode-defined
    output reg MemRead,
    output reg MemWrite,
    output reg MemtoReg, // 0: ALU_Result, 1: Mem_Data
    output reg Branch
);

    // --- State Definitions ---
    // Using 4 bits for 9 states
    parameter [3:0] 
        S_IDLE      = 4'b0000,
        S_DECODE    = 4'b0001,
        S_EXEC_R    = 4'b0010, // R-type (ADD) execute
        S_WB_R      = 4'b0011, // R-type (ADD) writeback
        S_EXEC_MEM  = 4'b0100, // Mem (LW/SW) address calc
        S_MEM_READ  = 4'b0101, // Mem (LW) read
        S_WB_MEM    = 4'b0110, // Mem (LW) writeback
        S_MEM_WRITE = 4'b0111, // Mem (SW) write
        S_EXEC_BR   = 4'b1000; // Branch (BEQ) execute

    // --- Opcode Definitions ---
    parameter [3:0] 
        OP_ADD    = 4'b0000,
        OP_LOAD   = 4'b0001,
        OP_STORE  = 4'b0010,
        OP_BRANCH = 4'b0011;

    // --- State Registers ---
    reg [3:0] state, next_state;

    // --- State Transition Logic (Sequential) ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
        end else begin
            state <= next_state;
        end
    end

    // --- Next State Logic (Combinational) ---
    always @(*) begin
        case (state)
            S_IDLE: 
                next_state = S_DECODE;
            S_DECODE:
                case (opcode)
                    OP_ADD:    next_state = S_EXEC_R;
                    OP_LOAD:   next_state = S_EXEC_MEM;
                    OP_STORE:  next_state = S_EXEC_MEM;
                    OP_BRANCH: next_state = S_EXEC_BR;
                    default:   next_state = S_IDLE; // NOP
                endcase
            S_EXEC_R:    next_state = S_WB_R;
            S_WB_R:      next_state = S_IDLE;
            S_EXEC_MEM:
                case (opcode)
                    OP_LOAD:  next_state = S_MEM_READ;
                    OP_STORE: next_state = S_MEM_WRITE;
                    default:  next_state = S_IDLE;
                endcase
            S_MEM_READ:  next_state = S_WB_MEM;
            S_WB_MEM:    next_state = S_IDLE;
            S_MEM_WRITE: next_state = S_IDLE;
            S_EXEC_BR:   next_state = S_IDLE;
            default:     next_state = S_IDLE;
        endcase
    end

    // --- Output Logic (Combinational) ---
    always @(*) begin
        // Default values (all signals 0)
        RegWrite = 1'b0;
        ALUSrc   = 1'b0;
        ALUOp    = 2'b00;
        MemRead  = 1'b0;
        MemWrite = 1'b0;
        MemtoReg = 1'b0;
        Branch   = 1'b0;
        
        case (state)
            S_EXEC_R: begin // ADD
                ALUSrc = 1'b0; // ALU operand 2 from RegFile
                ALUOp  = 2'b10; // R-type operation
            end
            S_WB_R: begin // ADD Writeback
                RegWrite = 1'b1;
                MemtoReg = 1'b0; // Write ALU result
            end
            S_EXEC_MEM: begin // LOAD/STORE Address Calc
                ALUSrc = 1'b1; // ALU operand 2 from Immediate
                ALUOp  = 2'b00; // ADD
            end
            S_MEM_READ: begin // LOAD
                MemRead = 1'b1;
            end
            S_WB_MEM: begin // LOAD Writeback
                RegWrite = 1'b1;
                MemtoReg = 1'b1; // Write Memory data
            end
            S_MEM_WRITE: begin // STORE
                MemWrite = 1'b1;
            end
            S_EXEC_BR: begin // BRANCH
                ALUSrc = 1'b0; // Compare registers
                ALUOp  = 2'b01; // SUB
                Branch = 1'b1;
            end
            // S_IDLE, S_DECODE have all default (0) control signals
        endcase
    end

endmodule
