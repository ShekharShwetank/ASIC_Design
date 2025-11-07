
//input ports
add mapped point clk clk -type PI PI
add mapped point rst_n rst_n -type PI PI
add mapped point opcode[3] opcode[3] -type PI PI
add mapped point opcode[2] opcode[2] -type PI PI
add mapped point opcode[1] opcode[1] -type PI PI
add mapped point opcode[0] opcode[0] -type PI PI

//output ports
add mapped point RegWrite RegWrite -type PO PO
add mapped point ALUSrc ALUSrc -type PO PO
add mapped point ALUOp[1] ALUOp[1] -type PO PO
add mapped point ALUOp[0] ALUOp[0] -type PO PO
add mapped point MemRead MemRead -type PO PO
add mapped point MemWrite MemWrite -type PO PO
add mapped point MemtoReg MemtoReg -type PO PO
add mapped point Branch Branch -type PO PO

//inout ports




//Sequential Pins
add mapped point state[1]/q state_reg[1]/Q -type DFF DFF
add mapped point state[2]/q state_reg[2]/Q -type DFF DFF
add mapped point state[3]/q state_reg[3]/Q -type DFF DFF
add mapped point state[0]/q state_reg[0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
