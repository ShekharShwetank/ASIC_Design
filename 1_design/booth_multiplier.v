module booth_multiplier #(
    parameter N = 8 // Number of bits for the multiplication
) (
    input clk,
    input rst_n,
    input start,
    input [N-1:0] multiplicand,
    input [N-1:0] multiplier,
    output reg done,
    output reg [2*N-1:0] product
);

    // Internal registers
    reg [N:0] A; // Accumulator
    reg [N-1:0] M; // Multiplicand
    reg [N:0] Q; // Multiplier
    reg Q_minus_1; // Q[-1] bit
    reg [4:0] count; // Counter for N shifts

    // State machine definition
    localparam S_IDLE = 3'b000;
    localparam S_LOAD = 3'b001;
    localparam S_CALC = 3'b010;
    localparam S_SHIFT = 3'b011;
    localparam S_DONE = 3'b100;
    reg [2:0] state, next_state;

    // Control path state machine
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        next_state = state;
        case (state)
            S_IDLE: begin
                if (start) begin
                    next_state = S_LOAD;
                end
            end
            S_LOAD: begin
                next_state = S_CALC;
            end
            S_CALC: begin
                if (count == N) begin
                    next_state = S_DONE;
                end else begin
                    next_state = S_SHIFT;
                end
            end
            S_SHIFT: begin
                next_state = S_CALC;
            end
            S_DONE: begin
                next_state = S_IDLE;
            end
        endcase
    end

    // Datapath
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            A <= {N{1'b0}};
            M <= {N{1'b0}};
            Q <= {N{1'b0}};
            Q_minus_1 <= 1'b0;
            count <= 0;
            done <= 1'b0;
            product <= {2*N{1'b0}};
        end else begin
            done <= 1'b0;
            case (state)
                S_LOAD: begin
                    M <= {1'b0, multiplicand};
                    Q <= {1'b0, multiplier};
                    A <= {N{1'b0}};
                    Q_minus_1 <= 1'b0;
                    count <= 0;
                end
                S_CALC: begin
                    case ({Q[0], Q_minus_1})
                        2'b01: begin
                            A <= A + M;
                        end
                        2'b10: begin
                            A <= A - M;
                        end
                        default: begin
                            // No change for 00 or 11
                        end
                    endcase
                end
                S_SHIFT: begin
                    // Arithmetic right shift on [A, Q, Q_minus_1]
                    Q_minus_1 <= Q[0];
                    Q <= {A[0], Q[N:1]};
                    A <= {{1'b0, A[N]}, A[N:1]};
                    count <= count + 1;
                end
                S_DONE: begin
                    product <= {A, Q[N:1]};
                    done <= 1'b1;
                end
            endcase
        end
    end
endmodule

