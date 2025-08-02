// decoder.v
module decoder(y, a, clk, rst);
    input [2:0]a;
    input clk, rst;
    output reg [7:0]y;
    
    always@(posedge clk) begin
        if(rst) begin
            y = 8'b0;
        end else begin
            case(a)
                3'd0: y = 8'd0;
                3'd1: y = 8'd2;
                3'd2: y = 8'd4;
                3'd3: y = 8'd8;
                3'd4: y = 8'd16;
                3'd5: y = 8'd32;
                3'd6: y = 8'd64;
                3'd7: y = 8'd128;
                default: y = 8'b0;
            endcase
        end
    end
endmodule
