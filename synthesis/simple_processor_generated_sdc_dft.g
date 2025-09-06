# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri Sep 05 16:38:22 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design simple_processor

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports start]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports op_sel]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {in_b[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports rst_n]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {result[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports done]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks clk]
set_clock_uncertainty -hold 0.01 [get_clocks clk]
