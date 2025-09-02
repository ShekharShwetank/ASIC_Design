
//input ports
add mapped point a a -type PI PI
add mapped point b b -type PI PI
add mapped point cin cin -type PI PI
add mapped point clk clk -type PI PI

//output ports
add mapped point sum sum -type PO PO
add mapped point cout cout -type PO PO

//inout ports




//Sequential Pins
add mapped point cout/q cout_reg/Q -type DFF DFF
add mapped point sum/q sum_reg/Q -type DFF DFF



//Black Boxes
add mapped point ha1 ha1 -type BBOX BBOX
add mapped point ha2 ha2 -type BBOX BBOX



//Empty Modules as Blackboxes
