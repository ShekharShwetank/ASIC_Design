// mux.v
module mux(a,b,s,clk,rst,y);
    input a,b,s,clk,rst;
    output reg y;

    always @(posedge clk or posedge rst) begin
        if(!rst) begin
            y = 1'b0;
        end else begin
            case(s)
                1'b0: y = a;
                1'b1: y = b;
                default: y = y;
            endcase
        end
    end
endmodule
