build_model -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -designsource four_bitcounter.test_netlist.v -techlib /home/student/Desktop/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -designtop four_bitcounter
build_testmode -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -assignfile four_bitcounter.FULLSCAN.pinassign
verify_test_structures -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN
report_test_structures -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN 
build_faultmodel -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -fullfault yes
create_scanchain_tests -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -experiment scan 
create_logic_tests -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -experiment logic -effort high
write_vectors -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -inexperiment logic -language verilog -scanformat serial -outputfilename four_bitcounter_modus_generated_results
