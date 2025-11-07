create_clock -name clk -period 10 -waveform {0 5} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]

# Constrain all inputs relative to the clock
set_input_delay -max 1.0 [get_ports "rst_n"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "we_w"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "addr_a"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "addr_b"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "addr_w"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "data_w"] -clock [get_clocks "clk"]

# Constrain all outputs relative to the clock
set_output_delay -max 1.0 [get_ports "data_a"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "data_b"] -clock [get_clocks "clk"]
