# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Nov 04 19:25:01 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design resource_shared_datapath

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports start]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {A[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {B[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {C[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {D[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[17]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[16]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[15]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[14]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[13]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[12]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[11]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[10]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Z[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports done]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
