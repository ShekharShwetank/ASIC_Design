set log file pipeline_control_generated_LEC.log -replace
read library ./slowlib_verilog_generated.v -verilog -both
read design /home/student/22BEC1204_ASIC_DESIGN/work/pipeline_control.v -verilog -golden
read design /home/student/22BEC1204_ASIC_DESIGN/synthesis/pipeline_control_generated_netlist_dft.v -verilog -revised
add ignored inputs scan_in -revised
add ignored outputs scan_out -revised
add pin constraints 0 SE -revised
set system mode lec
add compare point -all
compare

report verification
set gui on
