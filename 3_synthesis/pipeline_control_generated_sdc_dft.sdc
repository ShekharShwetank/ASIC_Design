# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Wed Nov 05 16:56:17 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design pipeline_cpu

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports rst]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[31]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[30]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[29]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[28]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[27]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[26]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[25]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[24]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[23]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[22]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[21]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[20]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[19]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[18]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[17]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[16]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[15]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[14]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[13]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {debug_reg_r4[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
