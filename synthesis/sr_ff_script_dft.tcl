set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/student/Desktop/22BEC1204_ASIC_DESIGN/work
read_libs slow.lib
# change
read_hdl sr_ff.v 
elaborate
# change
read_sdc sr_ff_sdc.g 

set_db dft_scan_style muxed_scan

set_db dft_prefix dft_

define_shift_enable -name SE -active high -create_port SE

check_dft_rules

set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt

check_dft_rules

# change
set_db design:sr_ff .dft_min_number_of_scan_chains 1 

define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports

connect_scan_chains -auto_create_chains

syn_opt -incr

report_scan_chains

write_dft_atpg -library /home/install/FOUNDRY/digital/90nm/dig/lib

# change
write_hdl > sr_ff_generated_netlist_dft.v
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > sr_ff_generated_delays_dft.sdf
write_sdc > sr_ff_generated_sdc_dft.g
write_scandef > sr_ff_generated_scanDEF.scandef

gui_show
