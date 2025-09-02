set log file four_bitcounter_generated.log -replace
read library /home/student/Desktop/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -verilog -both
read design /home/student/Desktop/22BEC1204_ASIC_DESIGN/work/four_bitcounter.v -verilog -golden
read design /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/four_bitcounter_netlist_dft.v -verilog -revised
add ignored inputs scan_in -revised
add ignored outputs scan_out -revised
add pin constraints 0 SE -revised
set system mode lec
add compare point -all
compare

report verification
set gui on
