
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI

//output ports
add mapped point q[3] q[3] -type PO PO
add mapped point q[2] q[2] -type PO PO
add mapped point q[1] q[1] -type PO PO
add mapped point q[0] q[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point q[3]/q q_reg[3]/Q -type DFF DFF
add mapped point q[2]/q q_reg[2]/Q -type DFF DFF
add mapped point q[1]/q q_reg[1]/Q -type DFF DFF
add mapped point q[0]/q q_reg[0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
