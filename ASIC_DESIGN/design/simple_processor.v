module simple_processor (
    input clk,
    input rst_n,
    input start,
    input op_sel, // 0 for add, 1 for subtract
    input [7:0] in_a,
    input [7:0] in_b,
    output reg [7:0] result,
    output reg done
);

    // Datapath registers
    reg [7:0] reg_a, reg_b;
    wire [7:0] alu_out;
    wire [7:0] mux_out;

    // Control path (FSM)
    localparam S_IDLE = 2'b00;
    localparam S_LOAD = 2'b01;
    localparam S_CALC = 2'b10;
    localparam S_DONE = 2'b11;
    reg [1:0] state, next_state;

    // FSM State Register
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= S_IDLE;
        else
            state <= next_state;
    end

    // FSM Next State Logic
    always @(*) begin
        next_state = state;
        case (state)
            S_IDLE: begin
                if (start)
                    next_state = S_LOAD;
            end
            S_LOAD: begin
                next_state = S_CALC;
            end
            S_CALC: begin
                next_state = S_DONE;
            end
            S_DONE: begin
                if (!start)
                    next_state = S_IDLE;
            end
        endcase
    end

    // Datapath Logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reg_a <= 8'h00;
            reg_b <= 8'h00;
            result <= 8'h00;
            done <= 1'b0;
        end else begin
            case (state)
                S_LOAD: begin
                    reg_a <= in_a;
                    reg_b <= in_b;
                end
                S_CALC: begin
                    result <= alu_out;
                end
                S_DONE: begin
                    done <= 1'b1;
                end
                default: begin
                    done <= 1'b0;
                end
            endcase
        end
    end

    // Mux for ALU input B
    assign mux_out = reg_b;

    // ALU operation
    assign alu_out = op_sel ? (reg_a - mux_out) : (reg_a + mux_out);

endmodule
