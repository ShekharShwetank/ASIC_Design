create_clock -name clk -period 10 -waveform {0 5} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]

# Constrain all inputs
set_input_delay -max 1.0 [get_ports "rst_n"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_ports "opcode"] -clock [get_clocks "clk"]

# Constrain all outputs
set_output_delay -max 1.0 [get_ports "RegWrite"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "ALUSrc"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "ALUOp"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "MemRead"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "MemWrite"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "MemtoReg"] -clock [get_clocks "clk"]
set_output_delay -max 1.0 [get_ports "Branch"] -clock [get_clocks "clk"]
