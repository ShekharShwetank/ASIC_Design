`timescale 1ns / 1ps

// 4-Stage Pipelined CPU (IF, ID, EX, WB) with Hazard Detection
// Simplified Instruction Set:
// ADD Rd, Rs1, Rs2 -> Opcode: 2'b00
// NOP               -> Opcode: 2'b11

module pipeline_cpu #(
    // --- Parameters ---
    parameter REG_ADDR_WIDTH = 4,
    parameter INSTR_WIDTH = 16,
    parameter REG_FILE_DEPTH = 16,
    parameter DATA_WIDTH = 32,
    parameter INSTR_MEM_DEPTH = 16
) (
    input wire clk,
    input wire rst,
    output wire [DATA_WIDTH-1:0] debug_reg_r4
);

    // Opcodes
    parameter OP_ADD = 2'b00;
    parameter OP_NOP = 2'b11;

    // --- Register File ---
    reg [DATA_WIDTH-1:0] reg_file [0:REG_FILE_DEPTH-1];

    // --- Program Counter (PC) ---
    reg [REG_ADDR_WIDTH-1:0] pc;

    // --- Pipeline Registers ---
    // IF/ID
    reg [INSTR_WIDTH-1:0] if_id_instr;

    // ID/EX
    reg id_ex_reg_write;
    reg [REG_ADDR_WIDTH-1:0] id_ex_rd_addr;
    reg [DATA_WIDTH-1:0] id_ex_data1;
    reg [DATA_WIDTH-1:0] id_ex_data2;

    // EX/WB
    reg ex_wb_reg_write;
    reg [REG_ADDR_WIDTH-1:0] ex_wb_rd_addr;
    reg [DATA_WIDTH-1:0] ex_wb_alu_result;

    // --- Hazard Detection Wires ---
    wire hazard_detected;
    wire pc_stall;
    wire if_id_stall;
    wire id_ex_bubble;
    wire hazard_ex;
    wire hazard_wb;

    // --- ID Stage Wires (Decode) ---
    wire [REG_ADDR_WIDTH-1:0] id_rs1_addr;
    wire [REG_ADDR_WIDTH-1:0] id_rs2_addr;
    wire [REG_ADDR_WIDTH-1:0] id_rd_addr;
    wire id_reg_write;
    wire [1:0] id_opcode;

    // --- EX Stage Wires (Execute) ---
    wire [DATA_WIDTH-1:0] ex_alu_result;
    
    // --- VERILOG-2001 COMPATIBILITY ---
    // Declare loop variable here, not in the for-loop
    integer i;

    // =================================================================
    // HAZARD DETECTION UNIT (Combinational)
    // =================================================================
    
    // Inputs from ID stage (current instruction being decoded)
    assign id_rs1_addr = if_id_instr[9:6];
    assign id_rs2_addr = if_id_instr[5:2];
    
    // Hazard between ID and EX stage
    assign hazard_ex = id_ex_reg_write && (id_ex_rd_addr != 0) &&
                     ((id_ex_rd_addr == id_rs1_addr) || (id_ex_rd_addr == id_rs2_addr));
                             
    // Hazard between ID and WB stage (prevents read/write race)
    assign hazard_wb = ex_wb_reg_write && (ex_wb_rd_addr != 0) &&
                     ((ex_wb_rd_addr == id_rs1_addr) || (ex_wb_rd_addr == id_rs2_addr));
                              
    // Stall if either hazard is detected
    assign hazard_detected = hazard_ex || hazard_wb;
                              
    // Stall Signals:
    assign pc_stall     = hazard_detected; // Stop PC from incrementing
    assign if_id_stall  = hazard_detected; // Stop IF/ID reg from loading new instr
    assign id_ex_bubble = hazard_detected; // Inject a NOP into the ID/EX register


    // =================================================================
    // PIPELINE STAGES (Sequential Logic)
    // =================================================================
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset all pipeline stages
            pc <= 0;
            if_id_instr <= {OP_NOP, 14'b0}; // Reset to NOP
            
            id_ex_reg_write <= 0;
            id_ex_rd_addr <= 0;
            id_ex_data1 <= 0;
            id_ex_data2 <= 0;
            
            ex_wb_reg_write <= 0;
            ex_wb_rd_addr <= 0;
            ex_wb_alu_result <= 0;
        end else begin
            
            // --- IF Stage ---
            if (!pc_stall) begin
                pc <= pc + 1;
            end
            
            // --- IF/ID Register ---
            if (!if_id_stall) begin
                // Synthesizable ROM: Hardcode the program
                case (pc)
                    0: if_id_instr <= {OP_ADD, 4'd1, 4'd2, 4'd3, 2'b00}; // ADD R1, R2, R3
                    1: if_id_instr <= {OP_ADD, 4'd4, 4'd1, 4'd5, 2'b00}; // ADD R4, R1, R5
                    default: if_id_instr <= {OP_NOP, 14'b0}; // NOP
                endcase
            end
            
            // --- ID/EX Register ---
            if (id_ex_bubble) begin
                // Inject NOP (all control signals 0)
                id_ex_reg_write <= 0;
                id_ex_rd_addr <= 0;
                id_ex_data1 <= 0;
                id_ex_data2 <= 0;
            end else begin
                // Load decoded values
                id_ex_reg_write <= id_reg_write;
                id_ex_rd_addr <= id_rd_addr;
                id_ex_data1 <= reg_file[id_rs1_addr];
                id_ex_data2 <= reg_file[id_rs2_addr];
            end
            
            // --- EX/WB Register ---
            ex_wb_reg_write <= id_ex_reg_write;
            ex_wb_rd_addr <= id_ex_rd_addr;
            ex_wb_alu_result <= ex_alu_result;
            
        end
    end
    
    // --- ID Stage (Combinational Decode) ---
    assign id_opcode   = if_id_instr[15:14];
    assign id_rd_addr  = if_id_instr[13:10];
    assign id_reg_write = (id_opcode == OP_ADD); // Only ADD writes to reg file

    // --- EX Stage (Combinational ALU) ---
    assign ex_alu_result = id_ex_data1 + id_ex_data2; // Only operation is ADD

    // --- WB Stage (Write to Reg File) ---
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Add asynchronous reset for the entire reg_file
            for (i = 0; i < REG_FILE_DEPTH; i = i + 1) begin
                reg_file[i] <= 0;
            end
        end else if (ex_wb_reg_write && (ex_wb_rd_addr != 0)) begin
            // Synchronous write (no longer gated by !rst)
            reg_file[ex_wb_rd_addr] <= ex_wb_alu_result;
        end
    end

    assign debug_reg_r4 = reg_file[4];

endmodule
