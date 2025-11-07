module sr_ff(
    input S,
    input R,
    input clk,
    output reg Q,
    output reg Q_bar
); 

always @(posedge clk) begin
    if (R == 1'b1) begin
        Q <= 1'b0;
        Q_bar <= 1'b1;
    end else if (S == 1'b1) begin
        Q <= 1'b1;
        Q_bar <= 1'b0;
    end else begin
        Q <= Q;
        Q_bar <= ~Q;
    end
end

endmodule

