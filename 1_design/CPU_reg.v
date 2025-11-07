module CPU_reg(clr, clk, re1,re2, we1, we2,in1, in2,add1,add2 out);

input clr, clk,re1,re2,we;
input [31:0]in1;
input [31:0]in2;
input [7:0]add1, [7:0]add2;
output [31:0]out;

reg[31:0] mem[0:7];

always @(*) begin
  if(clr)
    begin
    [31:0]mem[0:7]=31'b0;
    end
  end

always @(posedge clk) begin
  if(re1) out<= mem[add1];
  if(re2) out<=mem[add2];
  if(we1) mem[add1] <=in1;
  if(we2) mem[add2]<=in2;
 end
 
 endmodule
