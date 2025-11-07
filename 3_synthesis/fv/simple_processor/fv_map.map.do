
//input ports
add mapped point clk clk -type PI PI
add mapped point rst_n rst_n -type PI PI
add mapped point start start -type PI PI
add mapped point op_sel op_sel -type PI PI
add mapped point in_a[7] in_a[7] -type PI PI
add mapped point in_a[6] in_a[6] -type PI PI
add mapped point in_a[5] in_a[5] -type PI PI
add mapped point in_a[4] in_a[4] -type PI PI
add mapped point in_a[3] in_a[3] -type PI PI
add mapped point in_a[2] in_a[2] -type PI PI
add mapped point in_a[1] in_a[1] -type PI PI
add mapped point in_a[0] in_a[0] -type PI PI
add mapped point in_b[7] in_b[7] -type PI PI
add mapped point in_b[6] in_b[6] -type PI PI
add mapped point in_b[5] in_b[5] -type PI PI
add mapped point in_b[4] in_b[4] -type PI PI
add mapped point in_b[3] in_b[3] -type PI PI
add mapped point in_b[2] in_b[2] -type PI PI
add mapped point in_b[1] in_b[1] -type PI PI
add mapped point in_b[0] in_b[0] -type PI PI

//output ports
add mapped point result[7] result[7] -type PO PO
add mapped point result[6] result[6] -type PO PO
add mapped point result[5] result[5] -type PO PO
add mapped point result[4] result[4] -type PO PO
add mapped point result[3] result[3] -type PO PO
add mapped point result[2] result[2] -type PO PO
add mapped point result[1] result[1] -type PO PO
add mapped point result[0] result[0] -type PO PO
add mapped point done done -type PO PO

//inout ports




//Sequential Pins
add mapped point result[7]/q result_reg[7]/Q -type DFF DFF
add mapped point result[6]/q result_reg[6]/Q -type DFF DFF
add mapped point result[5]/q result_reg[5]/Q -type DFF DFF
add mapped point result[4]/q result_reg[4]/Q -type DFF DFF
add mapped point result[3]/q result_reg[3]/Q -type DFF DFF
add mapped point result[2]/q result_reg[2]/Q -type DFF DFF
add mapped point result[1]/q result_reg[1]/Q -type DFF DFF
add mapped point result[0]/q result_reg[0]/Q -type DFF DFF
add mapped point state[0]/q state_reg[0]/Q -type DFF DFF
add mapped point reg_a[1]/q reg_a_reg[1]/Q -type DFF DFF
add mapped point reg_a[5]/q reg_a_reg[5]/Q -type DFF DFF
add mapped point reg_b[1]/q reg_b_reg[1]/Q -type DFF DFF
add mapped point reg_a[2]/q reg_a_reg[2]/Q -type DFF DFF
add mapped point reg_b[3]/q reg_b_reg[3]/Q -type DFF DFF
add mapped point reg_b[4]/q reg_b_reg[4]/Q -type DFF DFF
add mapped point reg_b[6]/q reg_b_reg[6]/Q -type DFF DFF
add mapped point reg_b[7]/q reg_b_reg[7]/Q -type DFF DFF
add mapped point reg_a[7]/q reg_a_reg[7]/Q -type DFF DFF
add mapped point reg_b[2]/q reg_b_reg[2]/Q -type DFF DFF
add mapped point reg_b[5]/q reg_b_reg[5]/Q -type DFF DFF
add mapped point reg_a[4]/q reg_a_reg[4]/Q -type DFF DFF
add mapped point reg_a[6]/q reg_a_reg[6]/Q -type DFF DFF
add mapped point reg_a[3]/q reg_a_reg[3]/Q -type DFF DFF
add mapped point done/q done_reg/Q -type DFF DFF
add mapped point reg_b[0]/q reg_b_reg[0]/Q -type DFF DFF
add mapped point reg_a[0]/q reg_a_reg[0]/Q -type DFF DFF
add mapped point state[1]/q state_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
