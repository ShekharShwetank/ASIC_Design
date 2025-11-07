`timescale 1ns / 1ps

// 4-Stage Pipelined CPU (IF, ID, EX, WB) with Hazard Detection
// Simplified Instruction Set:
// ADD Rd, Rs1, Rs2 -> Opcode: 2'b00
// NOP               -> Opcode: 2'b11

module pipeline_cpu (
    input wire clk,
    input wire rst
);

    // --- Parameters ---
    parameter REG_ADDR_WIDTH = 4;
    parameter INSTR_WIDTH = 16;
    parameter REG_FILE_DEPTH = 16;
    parameter DATA_WIDTH = 32;
    parameter INSTR_MEM_DEPTH = 16;

    // Opcodes
    parameter OP_ADD = 2'b00;
    parameter OP_NOP = 2'b11;

    // --- Register File ---
    reg [DATA_WIDTH-1:0] reg_file [0:REG_FILE_DEPTH-1];

    // --- Instruction Memory (ROM) ---
    reg [INSTR_WIDTH-1:0] instr_mem [0:INSTR_MEM_DEPTH-1];

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

    // --- Initialization ---
    initial begin
        // Initialize Reg File
        reg_file[2] <= 32'd5;  // R2 = 5
        reg_file[3] <= 32'd10; // R3 = 10
        reg_file[5] <= 32'd7;  // R5 = 7
        
        // Initialize Instruction Memory
        // Program:
        // 0: ADD R1, R2, R3  (R1 = R2 + R3 = 5 + 10 = 15)
        // 1: ADD R4, R1, R5  (R4 = R1 + R5 = 15 + 7 = 22) <- HAZARD on R1
        // 2: NOP
        // 3: NOP
        // 4: NOP
        
        // Format: [15:14]Op, [13:10]Rd, [9:6]Rs1, [5:2]Rs2
        instr_mem[0] <= {OP_ADD, 4'd1, 4'd2, 4'd3, 2'b00}; // ADD R1, R2, R3
        instr_mem[1] <= {OP_ADD, 4'd4, 4'd1, 4'd5, 2'b00}; // ADD R4, R1, R5
        instr_mem[2] <= {OP_NOP, 14'b0};                   // NOP
        instr_mem[3] <= {OP_NOP, 14'b0};                   // NOP
        instr_mem[4] <= {OP_NOP, 14'b0};                   // NOP
        
        // Initialize other memories to NOP (Verilog-2001 style loop)
        for (i = 5; i < INSTR_MEM_DEPTH; i = i + 1) begin
            instr_mem[i] <= {OP_NOP, 14'b0};
        end
    end

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
                if_id_instr <= instr_mem[pc];
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

    // --- WB Stage (Combinational Write to Reg File) ---
    always @(posedge clk) begin
        if (ex_wb_reg_write && (ex_wb_rd_addr != 0) && !rst) begin
            reg_file[ex_wb_rd_addr] <= ex_wb_alu_result;
        end
    end

endmodule
