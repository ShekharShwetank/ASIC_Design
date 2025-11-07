// Filename: seq_det_0010.v

module seq_det_0010 (
    input wire clk,
    input wire rst_n, // Active low asynchronous reset
    input wire in,
    output reg out
);

    // Define state parameters for readability and maintainability
    localparam S0 = 3'd0; // No match
    localparam S1 = 3'd1; // Found '0'
    localparam S2 = 3'd2; // Found '00'
    localparam S3 = 3'd3; // Found '001'
    localparam S4 = 3'd4; // Found '0010'

    // State registers
    reg [2:0] current_state;
    reg [2:0] next_state;

    // Sequential logic for state transitions
    // This block is sensitive to the positive edge of the clock or a negative edge of the reset.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Asynchronous active-low reset
            current_state <= S0;
        end else begin
            // On clock edge, update the current state to the next state
            current_state <= next_state;
        end
    end

    // Combinational logic for next state and output
    // This block determines the next state and output based on the current state and input.
    always @(*) begin
        // Default values to prevent latches and ensure full code coverage
        next_state = current_state;
        out = 1'b0;

        case (current_state)
            S0: begin
                if (in == 1'b0) begin
                    next_state = S1;
                end else begin
                    next_state = S0;
                end
                out = 1'b0;
            end

            S1: begin
                if (in == 1'b0) begin
                    next_state = S2;
                end else begin
                    next_state = S0;
                end
                out = 1'b0;
            end

            S2: begin
                if (in == 1'b1) begin
                    next_state = S3;
                end else begin
                    next_state = S2; // Overlapping "00"
                end
                out = 1'b0;
            end

            S3: begin
                if (in == 1'b0) begin
                    next_state = S4;
                end else begin
                    next_state = S0;
                end
                out = 1'b0;
            end

            S4: begin
                if (in == 1'b0) begin
                    next_state = S2; // Overlapping "00"
                    out = 1'b1;
                end else begin
                    next_state = S0;
                    out = 1'b1;
                end
            end

            default: begin
                // A default case is included for robustness and synthesis best practices
                // It handles any unexpected state and resets to the initial state.
                next_state = S0;
                out = 1'b0;
            end
        endcase
    end
endmodule

