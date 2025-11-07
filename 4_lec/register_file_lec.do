set log file register_file_generated_LEC.log -replace
read library /home/student/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -verilog -both
read design /home/student/22BEC1204_ASIC_DESIGN/work/register_file.v -verilog -golden
read design /home/student/22BEC1204_ASIC_DESIGN/synthesis/register_file_generated_netlist_dft.v -verilog -revised
add ignored inputs scan_in -revised
add ignored outputs scan_out -revised
add pin constraints 0 SE -revised
set system mode lec
add compare point -all
compare

report verification
set gui on
