set log file counter_lec.log -replace
read library /home/student/Desktop/L1L2_ASICDesign/Equivalence_Checking/slow.v -verilog -both
read design /home/student/Desktop/L1L2_ASICDesign/work/counter4bit.v -verilog -golden
read design /home/student/Desktop/L1L2_ASICDesign/synthesis/counter4bit_netlist_dft.v -verilog -revised
add pin constraints 0 SE -revised
add ignored inputs scan_in -revised
add ignored outputs scan_out -revised
set system mode lec
add compare point -all
compare

report verification
set gui on

