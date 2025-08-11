
//input ports
add mapped point a[2] a[2] -type PI PI
add mapped point a[1] a[1] -type PI PI
add mapped point a[0] a[0] -type PI PI
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI

//output ports
add mapped point y[7] y[7] -type PO PO
add mapped point y[6] y[6] -type PO PO
add mapped point y[5] y[5] -type PO PO
add mapped point y[4] y[4] -type PO PO
add mapped point y[3] y[3] -type PO PO
add mapped point y[2] y[2] -type PO PO
add mapped point y[1] y[1] -type PO PO
add mapped point y[0] y[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point y[4]/q y_reg[4]/Q -type DFF DFF
add mapped point y[6]/q y_reg[6]/Q -type DFF DFF
add mapped point y[7]/q y_reg[7]/Q -type DFF DFF
add mapped point y[0]/q y_reg[0]/Q -type DFF DFF
add mapped point y[3]/q y_reg[3]/Q -type DFF DFF
add mapped point y[5]/q y_reg[5]/Q -type DFF DFF
add mapped point y[2]/q y_reg[2]/Q -type DFF DFF
add mapped point y[1]/q y_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
