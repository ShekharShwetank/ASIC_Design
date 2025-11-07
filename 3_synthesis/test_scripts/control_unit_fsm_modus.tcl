build_model -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -designsource control_unit_fsm.test_netlist.v -techlib /home/student/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -designtop control_unit_fsm
build_testmode -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -assignfile control_unit_fsm.FULLSCAN.pinassign
verify_test_structures -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN
report_test_structures -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN 
build_faultmodel -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -fullfault yes
create_scanchain_tests -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -experiment scan 
create_logic_tests -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -experiment logic -effort high
write_vectors -workdir /home/student/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -inexperiment logic -language verilog -scanformat serial -outputfilename control_unit_fsm_modus_generated_results
