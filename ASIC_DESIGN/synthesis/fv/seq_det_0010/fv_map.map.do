
//input ports
add mapped point clk clk -type PI PI
add mapped point rst_n rst_n -type PI PI
add mapped point in in -type PI PI

//output ports
add mapped point out out -type PO PO

//inout ports




//Sequential Pins
add mapped point current_state[1]/q current_state_reg[1]/Q -type DFF DFF
add mapped point current_state[0]/q current_state_reg[0]/Q -type DFF DFF
add mapped point current_state[2]/q current_state_reg[2]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
