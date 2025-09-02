set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/student/Desktop/L1L2_ASICDesign/work
read_libs slow.lib
read_hdl counter4bit.v
elaborate
read_sdc counter_constraints.g

set_db dft_scan_style muxed_scan
# Set the DFT Scan flip-flop style for scan replacement
set_db dft_prefix dft_
# Prefix is added to the name of DFT logic that is inserted
define_shift_enable -name SE -active high -create_port SE
# Define the test signals, the syntax is: define_shift_enable -name {scan_en} -active {high} -create_port {scan_en}
check_dft_rules
# It is recommended to check DFT rules multiple times during a DFT flow. Check pass means all the registers are eligible for scan connection

set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt

check_dft_rules

set_db design:counter4bit .dft_min_number_of_scan_chains 1
# Specify the number of scan chains required to connect all FFs. Here one scan chain is used
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports
# Specify the scan-in and scan-out ports of the scan chain
connect_scan_chains -auto_create_chains
# Connect the scan chains using the connect_scan_chain command. This will include all original FFs that were mapped to scan flops

syn_opt -incr
# Run incremental synthesis
report_scan_chains
# View the DFT chains

write_dft_atpg -library /home/install/FOUNDRY/digital/90nm/dig/lib
# Run the final ATPG analysis and vector generation. This step will take the final scan chains and run through the basic ATPG flow. This flow will generate a directory name test_scripts in current working location

write_hdl > counter4bit_netlist_dft.v
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > delays.sdf
write_sdc > counter4bit_constraints_dft.sdc
write_scandef > counter4bit_scanDEF.scandef 

# write_hdl > counter4bit_netlist.v
# write_sdc > counter4bit_constraints.sdc
# write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > delays.sdf

gui_show
