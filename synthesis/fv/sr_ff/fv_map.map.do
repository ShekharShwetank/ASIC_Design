
//input ports
add mapped point S S -type PI PI
add mapped point R R -type PI PI
add mapped point clk clk -type PI PI

//output ports
add mapped point Q Q -type PO PO
add mapped point Q_bar Q_bar -type PO PO

//inout ports




//Sequential Pins
add mapped point Q/q Q_reg/Q -type DFF DFF
add mapped point Q_bar/q Q_bar_reg/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
