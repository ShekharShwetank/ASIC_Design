build_model -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -designsource d_ff.test_netlist.v -techlib /home/student/Desktop/22BEC1204_ASIC_DESIGN/LEC/slowlib_verilog_generated.v -designtop d_ff
build_testmode -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode FULLSCAN -assignfile d_ff.ASSUMED.pinassign
verify_test_structures -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode ASSUMED
report_test_structures -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode ASSUMED 
build_faultmodel -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -fullfault yes
create_scanchain_tests -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode ASSUMED -experiment scan 
create_logic_tests -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode ASSUMED -experiment logic -effort high
write_vectors -workdir /home/student/Desktop/22BEC1204_ASIC_DESIGN/synthesis/test_scripts -testmode ASSUMED -inexperiment logic -language verilog -scanformat serial -outputfilename d_ff_modus_generated_results
