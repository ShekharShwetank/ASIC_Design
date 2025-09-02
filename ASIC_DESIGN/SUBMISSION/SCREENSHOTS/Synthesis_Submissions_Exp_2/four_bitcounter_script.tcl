set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/student/Desktop/22BEC1204_ASIC_DESIGN/work
read_libs slow.lib
read_hdl four_bitcounter.v
elaborate
read_sdc counter_sdc.g
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
write_hdl > four_bitcounter_netlist.v
write_sdc > four_bitcounter_generated_sdc.g
gui_show
