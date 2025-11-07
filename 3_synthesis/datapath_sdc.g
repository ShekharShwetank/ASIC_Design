create_clock -name clk -period 10 -waveform {0 5} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]

# Constrain all inputs
set_input_delay -max 1.0 [get_ports "rst_n"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "start"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "A"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "B"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "C"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "D"] -clock [get_clocks "clk"]

# Constrain all outputs
set_output_delay -max 1.0 [get_ports "Z"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "done"] -clock [get_clocks "clk"]
