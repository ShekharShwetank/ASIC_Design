`timescale 1ns / 1ps

module resource_shared_datapath #(
    parameter DATA_WIDTH = 8,
    // (A+B) or (C-D) can be 9 bits (8 bits + carry/sign)
    parameter TEMP_WIDTH = 9,
    // (9-bit * 9-bit) = 18 bits
    parameter Z_WIDTH = 18
) (
    input wire clk,
    input wire rst_n, // Active-low async reset
    input wire start, // Start computation
    
    // Data Inputs
    input wire [DATA_WIDTH-1:0] A,
    input wire [DATA_WIDTH-1:0] B,
    input wire [DATA_WIDTH-1:0] C,
    input wire [DATA_WIDTH-1:0] D,
    
    // Data Output
    output wire [Z_WIDTH-1:0] Z,
    output wire done
);

    // --- FSM State Definitions ---
    parameter [2:0] 
        S_IDLE     = 3'b000,
        S_CALC_ADD = 3'b001,
        S_CALC_SUB = 3'b010,
        S_CALC_MULT = 3'b011,
        S_DONE     = 3'b100;

    // --- FSM State Registers ---
    reg [2:0] state, next_state;

    // --- Datapath Registers ---
    reg [DATA_WIDTH-1:0] a_reg, b_reg, c_reg, d_reg;
    reg [TEMP_WIDTH-1:0] temp1_reg; // Holds (A+B)
    reg [TEMP_WIDTH-1:0] temp2_reg; // Holds (C-D)
    reg [Z_WIDTH-1:0] z_reg;     // Holds final result

    // --- Datapath Wires ---
    wire [DATA_WIDTH-1:0] alu_in1;
    wire [DATA_WIDTH-1:0] alu_in2;
    wire alu_sub;
    wire [TEMP_WIDTH-1:0] alu_out;
    wire [Z_WIDTH-1:0] mul_out;

    // --- FSM State Transition Logic (Sequential) ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
        end else begin
            state <= next_state;
        end
    end

    // --- Datapath Register Loading (Sequential) ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset all datapath registers
            a_reg <= 0;
            b_reg <= 0;
            c_reg <= 0;
            d_reg <= 0;
            temp1_reg <= 0;
            temp2_reg <= 0;
            z_reg <= 0;
        end else begin
            // FSM-controlled loading
            if (state == S_IDLE && start) begin
                a_reg <= A;
                b_reg <= B;
                c_reg <= C;
                d_reg <= D;
            end
            
            if (state == S_CALC_ADD) begin
                temp1_reg <= alu_out;
            end
            
            if (state == S_CALC_SUB) begin
                temp2_reg <= alu_out;
            end
            
            if (state == S_CALC_MULT) begin
                z_reg <= mul_out;
            end
        end
    end

    // --- FSM Next-State Logic (Combinational) ---
    always @(*) begin
        case (state)
            S_IDLE:     next_state = start ? S_CALC_ADD : S_IDLE;
            S_CALC_ADD: next_state = S_CALC_SUB;
            S_CALC_SUB: next_state = S_CALC_MULT;
            S_CALC_MULT:next_state = S_DONE;
            S_DONE:     next_state = S_IDLE;
            default:    next_state = S_IDLE;
        endcase
    end

    // --- Datapath Logic (Combinational) ---
    
    // Muxes for ALU inputs
    assign alu_in1 = (state == S_CALC_ADD) ? a_reg : c_reg;
    assign alu_in2 = (state == S_CALC_ADD) ? b_reg : d_reg;
    
    // Control signal for ALU
    assign alu_sub = (state == S_CALC_SUB); // 1 for SUB, 0 for ADD

    // Resource-Shared ALU (Adder/Subtractor)
    // We use 9 bits to handle signed results and carry-outs
    assign alu_out = (alu_sub) ? 
                   ($signed(alu_in1) - $signed(alu_in2)) : 
                   ($signed(alu_in1) + $signed(alu_in2));

    // Multiplier
    // Multiplies the 9-bit signed temporary results
    assign mul_out = $signed(temp1_reg) * $signed(temp2_reg);

    // --- Output Assignments ---
    assign Z = z_reg;
    assign done = (state == S_DONE);

endmodule
