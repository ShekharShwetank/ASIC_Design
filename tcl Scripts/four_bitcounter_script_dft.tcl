set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/student/Desktop/22BEC1204_ASIC_DESIGN/work
read_libs slow.lib
read_hdl four_bitcounter.v
elaborate
read_sdc counter_sdc.g

######

# set the DFT scan ff style for scan replacement
set_db dft_scan_style muxed_scan

# prefix added to the name of DFT logic that is inserted
set_db dft_prefix dft_

# define the test signals, the syntax is define_shift_enable -name {scan_en} -active {high} -create_port {scan_en}
define_shift_enable -name SE -active high -create_port SE

# recommended to check dft rules multiple times during a DFT flow. Check pass means all the registers are eligible for scan connection
check_dft_rules

######

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt

######

check_dft_rules

# specify the no. of scan chains required to connect all FFs. Here one scan chain is used. // top module name inserted
set_db design:four_bitcounter .dft_min_number_of_scan_chains 1

# specify the scan-in and scan-out ports of the scan chain
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports

# connect the scan chains using the connect_scan_chain command. This will include all original FFs that were mapped to scan flops.
connect_scan_chains -auto_create_chains

# Run incremental synthesis
syn_opt -incr

# view the DFT chains
report_scan_chains

# run the final ATPG analysis and vector generation. This step will take the final scan chains and run through the basic ATPG flow. This flow will generate a directory name test_scripts in current working location
write_dft_atpg -library /home/install/FOUNDRY/digital/90nm/dig/lib

# new writes
write_hdl > four_bitcounter_netlist_dft.v
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > four_bitcounter_generated_delays_dft.sdf
write_sdc > four_bitcounter_generated_sdc_dft.g
write_scandef > four_bitcounter_scanDEF.scandef

#write_hdl > four_bitcounter_netlist.v
#write_sdc > four_bitcounter_generated_sdc.g
gui_show
