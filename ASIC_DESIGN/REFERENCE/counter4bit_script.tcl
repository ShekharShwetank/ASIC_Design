set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/student/Desktop/L1L2_ASICDesign/work
read_libs slow.lib
read_hdl counter4bit.v
elaborate
read_sdc counter_constraints.g
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
write_hdl > counter4bit_netlist.v
write_sdc > counter4bit_constraints.sdc
# write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > delays.sdf

gui_show
