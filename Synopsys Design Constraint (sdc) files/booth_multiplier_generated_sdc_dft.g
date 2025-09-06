# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri Sep 05 15:16:08 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design booth_multiplier

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports start]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplicand[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {multiplier[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports done]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[15]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[14]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[13]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {product[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks clk]
set_clock_uncertainty -hold 0.01 [get_clocks clk]
