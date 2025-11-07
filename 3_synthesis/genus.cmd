# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Mon Aug 04 08:49:41 2025
# Host: ic312.vit.ac.in (x86_64 w/Linux 4.18.0-425.19.2.el8_7.x86_64) (12cores*20cpus*1physical cpu*12th Gen Intel(R) Core(TM) i7-12700 25600KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path /home/student/Desktop/22BEC1204_ASIC_DESIGN/work
read_libs slow.lib
read_hdl four_bitcounter.v
elaborate
read_sdc counter_sdc.g
set_db syn_generic_effort medium
set_db syn_map_effort medium
gui show
gui_show
gui_hide
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
gui_show
gui_hide
write_hdl > four_bitcounter_netlist.v
write_sdc > four_bitcounter_generated.sdc
write_sdc > four_bitcounter_generated_sdc.g
genus -f four_bitcounter_script.tcl
EXIT
exit
