set log file sync_FA_generated_LEC.log -replace
read library /home/student/Desktop/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -verilog -both
read design -verilog -golden \
     /home/student/Desktop/22BEC1204_ASIC_DESIGN/work/sync_HA.v \
     /home/student/Desktop/22BEC1204_ASIC_DESIGN/work/sync_FA.v
read design -verilog -revised \
     /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/sync_FA_generated_netlist_dft.v \
     /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/sync_HA_netlist.v
add ignored inputs scan_in -revised
add ignored outputs scan_out -revised
add pin constraints 0 SE -revised
set system mode lec
add compare point -all
compare

report verification
set gui on

