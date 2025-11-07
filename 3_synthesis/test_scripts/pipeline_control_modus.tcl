build_model -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -designsource pipeline_cpu.test_netlist.v -techlib /home/student/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -designtop pipeline_cpu
build_testmode -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -assignfile pipeline_cpu.FULLSCAN.pinassign
verify_test_structures -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN
report_test_structures -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN 
build_faultmodel -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -fullfault yes
create_scanchain_tests -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -experiment scan 
create_logic_tests -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -experiment logic -effort high
write_vectors -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -inexperiment logic -language verilog -scanformat serial -outputfilename pipeline_control_modus_generated_results
