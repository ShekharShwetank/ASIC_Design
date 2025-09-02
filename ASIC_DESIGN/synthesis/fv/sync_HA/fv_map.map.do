
//input ports
add mapped point a a -type PI PI
add mapped point b b -type PI PI
add mapped point clk clk -type PI PI

//output ports
add mapped point sum sum -type PO PO
add mapped point c_out c_out -type PO PO

//inout ports




//Sequential Pins
add mapped point sum/q sum_reg/Q -type DFF DFF
add mapped point c_out/q c_out_reg/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
