// mux.v
module mux(a,b,s,rst,y);
    input a,b,s,rst;
    output reg y;

    always @(*) begin
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
