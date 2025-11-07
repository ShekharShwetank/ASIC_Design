// sr_ff_d.v (Assumed SR Flip-Flop module, synchronous)
module sr_ff_d(
    input S,
    input R,
    input clk,
    output reg Q,      // Declared as reg as it's assigned in an always block
    output reg Q_bar   // Declared as reg
);

    always @(posedge clk) begin
        if (S == 1'b1 && R == 1'b0) begin
            Q = 1'b1;
            Q_bar = 1'b0;
        end else if (S == 1'b0 && R == 1'b1) begin
            Q = 1'b0;
            Q_bar = 1'b1;
        end else if (S == 1'b0 && R == 1'b0) begin
            // Hold state (no change)
            // Q = Q; Q_bar = Q_bar; // Implicit if no assignment
        end else begin // S = 1, R = 1 (Forbidden state, usually handled explicitly or by design)
            // For block coverage, reaching this 'else' is important if it exists.
            // For a D-FF, S and R will never be both 1 due to the 'not' gate.
            // So, this block will not be covered by D-FF.
            // It's good practice for SR_FF itself to handle it, e.g.,
            // $display("Warning: Invalid SR input combination (S=1, R=1) at time %0t", $time);
        end
    end

endmodule
