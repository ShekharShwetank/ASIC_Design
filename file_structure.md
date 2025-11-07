.
├── 1_design
│   ├── 4_stage_cpu_tb.v
│   ├── 4_stage_cpu.v
│   ├── booth_multiplier.v
│   ├── control_unit_fsm_tb.v
│   ├── control_unit_fsm.v
│   ├── CPU_reg.v
│   ├── datapath_tb.v
│   ├── decoder_tb.v
│   ├── decoder.v
│   ├── d_ff_tb.v
│   ├── d_ff.v
│   ├── four_bitcounter_tb.v
│   ├── four_bitcounter.v
│   ├── HA_tb.v
│   ├── HA.v
│   ├── Lab_3_scripting_guide.txt
│   ├── mux_tb.v
│   ├── mux.v
│   ├── overlapping_sequence_detector_FSM_0010.v
│   ├── register_file_tb.v
│   ├── register_file.v
│   ├── resource_shared_datapath.v
│   ├── seq_det_0010.v
│   ├── simple_processor.v
│   ├── sr_ff_tb.v
│   ├── sr_ff.v
│   ├── sync_FA_tb.v
│   ├── sync_FA.v
│   ├── sync_HA_tb.v
│   └── sync_HA.v
├── 2_work
│   ├── booth_multiplier.v
│   ├── cds.lib
│   ├── control_unit_fsm_tb.v
│   ├── control_unit_fsm.v
│   ├── cov_work
│   │   └── scope
│   │       ├── icc_063bd61d_00000000.ucm
│   │       ├── icc_0bc79983_00000000.ucm
│   │       ├── icc_1b874656_00000000.ucm
│   │       ├── icc_1c1b8ae2_00000000.ucm
│   │       ├── icc_1c7c4a9a_00000000.ucm
│   │       ├── icc_206d0473_00000000.ucm
│   │       ├── icc_265dabe3_00000000.ucm
│   │       ├── icc_2e6ca5fc_00000000.ucm
│   │       ├── icc_3520d7e4_00000000.ucm
│   │       ├── icc_37577a1f_00000000.ucm
│   │       ├── icc_3df1f218_00000000.ucm
│   │       ├── icc_40044131_00000000.ucm
│   │       ├── icc_4014f7b5_00000000.ucm
│   │       ├── icc_43c224e7_00000000.ucm
│   │       ├── icc_450a9eec_00000000.ucm
│   │       ├── icc_47097d29_00000000.ucm
│   │       ├── icc_4778f370_00000000.ucm
│   │       ├── icc_4b69f7c8_00000000.ucm
│   │       ├── icc_4d5eda11_00000000.ucm
│   │       ├── icc_58a85093_00000000.ucm
│   │       ├── icc_5fe92143_00000000.ucm
│   │       ├── icc_6440b53f_00000000.ucm
│   │       ├── icc_681fda04_00000000.ucm
│   │       ├── icc_70d60607_00000000.ucm
│   │       ├── icc_71518eed_00000000.ucm
│   │       ├── icc_72d24087_00000000.ucm
│   │       ├── icc_762a3979_00000000.ucm
│   │       ├── icc_7bd8fbfc_00000000.ucm
│   │       ├── icc_7d055a12_00000000.ucm
│   │       ├── icc_7d5b708c_00000000.ucm
│   │       ├── icc_7eab2002_00000000.ucm
│   │       ├── icc_7f6a195b_00000000.ucm
│   │       └── test
│   │           ├── icc_206d0473_00000000.ucd
│   │           ├── icc_7eab2002_00000000
│   │           └── icc_7eab2002_00000000 (1)
│   ├── datapath_tb.v
│   ├── decoder_tb.v
│   ├── decoder.v
│   ├── d_ff_tb.v
│   ├── d_ff.v
│   ├── four_bitcounter_tb.v
│   ├── four_bitcounter.v
│   ├── genus.cmd
│   ├── genus.log
│   ├── hal.design_facts
│   ├── .hal-irun.history
│   ├── hal.log
│   ├── HA_tb.v
│   ├── HA.v
│   ├── hdl.var
│   ├── imc.log
│   ├── INCA_libs
│   │   ├── history
│   │   ├── .history.lock
│   │   ├── irun.lnx8664.15.20.nc
│   │   │   ├── bind.lst.lnx8664
│   │   │   ├── cds.lib
│   │   │   ├── cdsrun.lib
│   │   │   ├── files.ts
│   │   │   ├── hdlrun.var
│   │   │   ├── hdl.var
│   │   │   ├── irun.args
│   │   │   ├── ncelab.args
│   │   │   ├── ncelab.env
│   │   │   ├── ncelab.hrd
│   │   │   ├── .nclib.lock
│   │   │   ├── .ncrun.lock
│   │   │   ├── ncsim.args
│   │   │   ├── ncsim.env
│   │   │   ├── ncsim_restart.args
│   │   │   ├── ncsim_restart.env
│   │   │   ├── .ncv.lock
│   │   │   ├── ncvlog.args
│   │   │   ├── ncvlog.env
│   │   │   ├── ncvlog.files
│   │   │   ├── OVMHOME
│   │   │   ├── temp
│   │   │   ├── .timestamp.ts
│   │   │   ├── UVMHOME
│   │   │   └── xllibs
│   │   ├── irun.nc -> irun.lnx8664.15.20.nc
│   │   └── worklib
│   │       ├── .bboxVlog2001
│   │       ├── .cdsvmod
│   │       ├── control_unit_fsm_tb
│   │       │   └── v
│   │       ├── .customrules
│   │       ├── datapath_tb
│   │       │   └── v
│   │       ├── four_bitcounter_tb
│   │       │   └── v
│   │       ├── .hal.log.sidefile
│   │       ├── .hal.log.sidefile.back
│   │       ├── .hal.naming
│   │       ├── halsynth.box
│   │       ├── halsynth.cells
│   │       ├── halsynth_dump.log
│   │       ├── .inca.db.150.lnx8664
│   │       ├── .inca.lckorder.150.lnx8664
│   │       ├── inca.lnx8664.150.pak
│   │       ├── .ncls.log
│   │       ├── pakvst.ts
│   │       ├── register_file_tb
│   │       │   └── v
│   │       ├── .rulesfile
│   │       ├── .rulesfile.back
│   │       ├── sync_FA_tb
│   │       │   └── module
│   │       │       └── cpi.dump
│   │       ├── sync_HA_tb
│   │       │   └── v
│   │       │       └── cpi.dump
│   │       ├── .xm.db.175.lnx8664
│   │       └── xm.lnx8664.175.pak
│   ├── mdv.log
│   ├── mux_new.v
│   ├── mux_tb.v
│   ├── mux.v
│   ├── ncelab.log
│   ├── .nclaunch.dd
│   ├── .nclaunch.dd.bak
│   ├── nclaunch.key
│   ├── ncsim.key
│   ├── ncsim.log
│   ├── ncsim.shm
│   │   ├── ncsim.dsn
│   │   └── ncsim.trn
│   ├── ncupdate.log
│   ├── ncvlog.log
│   ├── pipeline_control_tb.v
│   ├── pipeline_control.v
│   ├── register_file_tb.v
│   ├── register_file.v
│   ├── resource_shared_datapath.v
│   ├── seq_det_0010.v
│   ├── simple_processor.v
│   ├── .simvision
│   │   ├── dbrowser-bookmarks
│   │   ├── schematic-bookmarks
│   │   └── source-bookmarks
│   ├── simvision5371.diag
│   ├── sr_ff_d.v
│   ├── sr_ff_tb.v
│   ├── sr_ff.v
│   ├── sync_FA_tb.v
│   ├── sync_FA.v
│   ├── sync_HA_tb.v
│   ├── sync_HA.v
│   ├── waves.shm
│   │   ├── waves-1.trn
│   │   ├── waves-2.trn
│   │   ├── waves.dsn
│   │   └── waves.trn
│   ├── wave.vcd
│   ├── xcelium.d
│   │   ├── history
│   │   ├── .history.lock
│   │   ├── pakvst.ts
│   │   ├── run.d -> run.lnx8664.22.09.d
│   │   └── run.lnx8664.22.09.d
│   │       ├── bind.lst.lnx8664
│   │       ├── cds.lib
│   │       ├── cdsrun.lib
│   │       ├── files.ts
│   │       ├── hdlrun.var
│   │       ├── hdl.var
│   │       ├── ic312.vit.ac.in_27617_cdsrun.lib
│   │       ├── ic312.vit.ac.in_27617_hdlrun.var
│   │       ├── ic312.vit.ac.in_36224_cdsrun.lib
│   │       ├── ic312.vit.ac.in_36224_hdlrun.var
│   │       ├── ic312.vit.ac.in_39885_cdsrun.lib
│   │       ├── ic312.vit.ac.in_39885_hdlrun.var
│   │       ├── ic312.vit.ac.in_43821_cdsrun.lib
│   │       ├── ic312.vit.ac.in_43821_hdlrun.var
│   │       ├── ic312.vit.ac.in_6939_cdsrun.lib
│   │       ├── ic312.vit.ac.in_6939_hdlrun.var
│   │       ├── ic312.vit.ac.in_7326_cdsrun.lib
│   │       ├── ic312.vit.ac.in_7326_hdlrun.var
│   │       ├── .ncv.lock
│   │       ├── OVMHOME
│   │       ├── temp
│   │       ├── .timestamp.ts
│   │       ├── UVMHOME
│   │       ├── xllibs
│   │       ├── xmelab.args
│   │       ├── xmelab.env
│   │       ├── xmelab.hrd
│   │       ├── .xmlib.lock
│   │       ├── .xmlibpath
│   │       ├── .xmrun.lock
│   │       ├── xmsim.args
│   │       ├── xmsim.env
│   │       ├── xmsim_restart.args
│   │       ├── xmsim_restart.env
│   │       ├── xmvlog.args
│   │       ├── xmvlog.env
│   │       ├── xmvlog.files
│   │       ├── xmvlog.hrd
│   │       └── xrun.args
│   ├── xrun.history
│   ├── xrun.key
│   └── xrun.log
├── 3_synthesis
│   ├── booth_multiplier_generated_delays_dft.sdf
│   ├── booth_multiplier_generated_netlist_dft.v
│   ├── booth_multiplier_generated_scanDEF.scandef
│   ├── booth_multiplier_generated_sdc_dft.g
│   ├── booth_multiplier_script_dft.tcl
│   ├── booth_multiplier_sdc (copy).g
│   ├── booth_multiplier_sdc.g
│   ├── .cadence
│   │   └── genus
│   │       └── gui_sch.pref.tcl
│   ├── control_unit_fsm_generated_delays_dft.sdf
│   ├── control_unit_fsm_generated_netlist_dft.v
│   ├── control_unit_fsm_generated_scanDEF.scandef
│   ├── control_unit_fsm_generated_sdc_dft.sdc
│   ├── control_unit_fsm_gui_schematic.gif
│   ├── control_unit_fsm_script_dft.tcl
│   ├── control_unit_fsm_sdc.g
│   ├── counter_sdc.g
│   ├── datapath_generated_delays_dft.sdf
│   ├── datapath_generated_netlist_dft.v
│   ├── datapath_generated_scanDEF.scandef
│   ├── datapath_generated_sdc_dft.sdc
│   ├── datapath_gui_schematic.gif
│   ├── datapath_script_dft.tcl
│   ├── datapath_sdc.g
│   ├── decoder_generated_delays_dft.sdf
│   ├── decoder_generated_netlist_dft.v
│   ├── decoder_generated_scanDEF.scandef
│   ├── decoder_generated_sdc_dft.g
│   ├── decoder_generated_sdc.g
│   ├── decoder_netlist.v
│   ├── decoder_script_dft.tcl
│   ├── decoder_script.tcl
│   ├── decoder_sdc.g
│   ├── d_ff_generated_delays_dft.sdf
│   ├── d_ff_generated_netlist_dft.v
│   ├── d_ff_generated_scanDEF.scandef
│   ├── d_ff_generated_sdc_dft.g
│   ├── d_ff_generated_sdc.g
│   ├── d_ff_netlist.v
│   ├── d_ff_script_dft.tcl
│   ├── d_ff_script.tcl
│   ├── d_ff_sdc.g
│   ├── four_bitcounter_generated_sdc_dft.g
│   ├── four_bitcounter_generated_sdc_dft.sdc
│   ├── four_bitcounter_generated_sdc.g
│   ├── four_bitcounter_netlist_dft.v
│   ├── four_bitcounter_netlist.v
│   ├── four_bitcounter_scanDEF.scandef
│   ├── four_bitcounter_script_dft.tcl
│   ├── four_bitcounter_script.tcl
│   ├── fv
│   │   ├── booth_multiplier
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   └── rtl_to_fv_map.do
│   │   ├── control_unit_fsm
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   └── rtl_to_fv_map.do
│   │   ├── decoder
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── d_ff
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── four_bitcounter
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── mux
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── pipeline_cpu
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── register_file
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   └── rtl_to_fv_map.do
│   │   ├── resource_shared_datapath
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   └── rtl_to_fv_map.do
│   │   ├── seq_det_0010
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── simple_processor
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   └── rtl_to_fv_map.do
│   │   ├── sr_ff
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   ├── sync_FA
│   │   │   ├── fv_map.fv.json
│   │   │   ├── fv_map.map.do
│   │   │   ├── fv_map.singlebit.original_name.alias.json.gz
│   │   │   ├── fv_map.v.gz
│   │   │   ├── read_libs.tcl
│   │   │   ├── rtl_to_fv_map.do
│   │   │   └── rtl_to_fv_map.do~
│   │   └── sync_HA
│   │       ├── fv_map.fv.json
│   │       ├── fv_map.map.do
│   │       ├── fv_map.singlebit.original_name.alias.json.gz
│   │       ├── fv_map.v.gz
│   │       ├── read_libs.tcl
│   │       ├── rtl_to_fv_map.do
│   │       └── rtl_to_fv_map.do~
│   ├── genus.cmd
│   ├── genus.cmd1
│   ├── genus.cmd10
│   ├── genus.cmd11
│   ├── genus.cmd12
│   ├── genus.cmd13
│   ├── genus.cmd14
│   ├── genus.cmd15
│   ├── genus.cmd16
│   ├── genus.cmd17
│   ├── genus.cmd18
│   ├── genus.cmd19
│   ├── genus.cmd2
│   ├── genus.cmd20
│   ├── genus.cmd21
│   ├── genus.cmd22
│   ├── genus.cmd23
│   ├── genus.cmd24
│   ├── genus.cmd25
│   ├── genus.cmd26
│   ├── genus.cmd27
│   ├── genus.cmd28
│   ├── genus.cmd29
│   ├── genus.cmd3
│   ├── genus.cmd30
│   ├── genus.cmd31
│   ├── genus.cmd32
│   ├── genus.cmd33
│   ├── genus.cmd34
│   ├── genus.cmd35
│   ├── genus.cmd36
│   ├── genus.cmd37
│   ├── genus.cmd38
│   ├── genus.cmd39
│   ├── genus.cmd4
│   ├── genus.cmd40
│   ├── genus.cmd41
│   ├── genus.cmd42
│   ├── genus.cmd43
│   ├── genus.cmd44
│   ├── genus.cmd5
│   ├── genus.cmd6
│   ├── genus.cmd7
│   ├── genus.cmd8
│   ├── genus.cmd9
│   ├── genus.log
│   ├── genus.log1
│   ├── genus.log10
│   ├── genus.log11
│   ├── genus.log12
│   ├── genus.log13
│   ├── genus.log14
│   ├── genus.log15
│   ├── genus.log16
│   ├── genus.log17
│   ├── genus.log18
│   ├── genus.log19
│   ├── genus.log2
│   ├── genus.log20
│   ├── genus.log21
│   ├── genus.log22
│   ├── genus.log23
│   ├── genus.log24
│   ├── genus.log25
│   ├── genus.log26
│   ├── genus.log27
│   ├── genus.log28
│   ├── genus.log29
│   ├── genus.log3
│   ├── genus.log30
│   ├── genus.log31
│   ├── genus.log32
│   ├── genus.log33
│   ├── genus.log34
│   ├── genus.log35
│   ├── genus.log36
│   ├── genus.log37
│   ├── genus.log38
│   ├── genus.log39
│   ├── genus.log4
│   ├── genus.log40
│   ├── genus.log41
│   ├── genus.log42
│   ├── genus.log43
│   ├── genus.log44
│   ├── genus.log5
│   ├── genus.log6
│   ├── genus.log7
│   ├── genus.log8
│   ├── genus.log9
│   ├── gui_schematic_decoder.gif
│   ├── gui_schematic_d_ff.gif
│   ├── gui_schematic_four_bitcounter.gif
│   ├── gui_schematic_mux.gif
│   ├── gui_schematic_seq_det_0010.gif
│   ├── gui_schematic_sr_ff.gif
│   ├── gui_schematic_sync_FA.gif
│   ├── gui_schematic_sync_HA.gif
│   ├── mux_generated_delays_dft.sdf
│   ├── mux_generated_netlist_dft.v
│   ├── mux_generated_scanDEF.scandef
│   ├── mux_generated_sdc_dft.g
│   ├── mux_generated_sdc.g
│   ├── mux_netlist.v
│   ├── mux_script_dft.tcl
│   ├── mux_script.tcl
│   ├── mux_sdc.g
│   ├── pipeline_control_generated_delays_dft.sdf
│   ├── pipeline_control_generated_netlist_dft.v
│   ├── pipeline_control_generated_scanDEF.scandef
│   ├── pipeline_control_generated_sdc_dft.sdc
│   ├── pipeline_control_script_dft.tcl
│   ├── pipeline_control_sdc.g
│   ├── pipeline_cpu_4_stage_gui_schematic.gif
│   ├── register_file_generated_delays_dft.sdf
│   ├── register_file_generated_netlist_dft.v
│   ├── register_file_generated_scanDEF.scandef
│   ├── register_file_generated_sdc_dft.sdc
│   ├── register_file_gui_schematic.gif
│   ├── register_file_script_dft.tcl
│   ├── register_file_sdc.g
│   ├── .rs_student.tstamp
│   ├── seq_det_0010_generated_delays_dft.sdf
│   ├── seq_det_0010_generated_netlist_dft.v
│   ├── seq_det_0010_generated_scanDEF.scandef
│   ├── seq_det_0010_generated_sdc_dft.g
│   ├── seq_det_0010_generated_sdc.g
│   ├── seq_det_0010_netlist.v
│   ├── seq_det_0010_script_dft.tcl
│   ├── seq_det_0010_script.tcl
│   ├── seq_det_0010_sdc.g
│   ├── shwet_gui_sch.pref.tcl
│   ├── simple_processor_generated_delays_dft.sdf
│   ├── simple_processor_generated_netlist_dft.v
│   ├── simple_processor_generated_scanDEF.scandef
│   ├── simple_processor_generated_sdc_dft.g
│   ├── simple_processor_gui_schematic.gif
│   ├── simple_processor_script_dft.tcl
│   ├── simple_processor_sdc (copy).g
│   ├── simple_processor_sdc.g
│   ├── sr_ff_generated_delays_dft.sdf
│   ├── sr_ff_generated_netlist_dft.v
│   ├── sr_ff_generated_scanDEF.scandef
│   ├── sr_ff_generated_sdc_dft.g
│   ├── sr_ff_generated_sdc.g
│   ├── sr_ff_netlist.v
│   ├── sr_ff_script_dft.tcl
│   ├── sr_ff_script.tcl
│   ├── sr_ff_sdc.g
│   ├── sync_FA_generated_delays_dft.sdf
│   ├── sync_FA_generated_netlist_dft.v
│   ├── sync_FA_generated_scanDEF.scandef
│   ├── sync_FA_generated_sdc_dft.g
│   ├── sync_FA_generated_sdc.g
│   ├── sync_FA_netlist.v
│   ├── sync_FA_script_dft.tcl
│   ├── sync_FA_script.tcl
│   ├── sync_FA_sdc.g
│   ├── sync_HA_generated_delays_dft.sdf
│   ├── sync_HA_generated_netlist_dft.v
│   ├── sync_HA_generated_scanDEF.scandef
│   ├── sync_HA_generated_sdc_dft.g
│   ├── sync_HA_generated_sdc.g
│   ├── sync_HA_netlist.v
│   ├── sync_HA_script_dft.tcl
│   ├── sync_HA_script.tcl
│   ├── sync_HA_sdc.g
│   └── test_scripts
│       ├── booth_multiplier.FULLSCAN.pinassign
│       ├── booth_multiplier_modus.tcl
│       ├── booth_multiplier.test_netlist.v
│       ├── control_unit_fsm.FULLSCAN.pinassign
│       ├── control_unit_fsm_modus.tcl
│       ├── control_unit_fsm.test_netlist.v
│       ├── decoder.FULLSCAN.pinassign
│       ├── decoder_modus.tcl
│       ├── decoder.test_netlist.v
│       ├── d_ff.ASSUMED.pinassign
│       ├── d_ff_modus.tcl
│       ├── d_ff.test_netlist.v
│       ├── four_bitcounter.FULLSCAN.pinassign
│       ├── four_bitcounter_modus.tcl
│       ├── four_bitcounter.test_netlist.v
│       ├── modus.cmd
│       ├── modus.cmd1
│       ├── modus.cmd10
│       ├── modus.cmd11
│       ├── modus.cmd12
│       ├── modus.cmd13
│       ├── modus.cmd14
│       ├── modus.cmd2
│       ├── modus.cmd3
│       ├── modus.cmd4
│       ├── modus.cmd5
│       ├── modus.cmd6
│       ├── modus.cmd7
│       ├── modus.cmd8
│       ├── modus.cmd9
│       ├── modus.log
│       ├── modus.log1
│       ├── modus.log10
│       ├── modus.log11
│       ├── modus.log12
│       ├── modus.log13
│       ├── modus.log14
│       ├── modus.log2
│       ├── modus.log3
│       ├── modus.log4
│       ├── modus.log5
│       ├── modus.log6
│       ├── modus.log7
│       ├── modus.log8
│       ├── modus.log9
│       ├── mux.FULLSCAN.pinassign
│       ├── mux_modus.tcl
│       ├── mux.test_netlist.v
│       ├── pipeline_control_modus.tcl
│       ├── pipeline_cpu.ASSUMED.pinassign
│       ├── pipeline_cpu.FULLSCAN.pinassign
│       ├── pipeline_cpu.test_netlist.v
│       ├── register_file.FULLSCAN.pinassign
│       ├── register_file_modus.tcl
│       ├── register_file.test_netlist.v
│       ├── resource_shared_datapath.FULLSCAN.pinassign
│       ├── resource_shared_datapath_modus.tcl
│       ├── resource_shared_datapath.test_netlist.v
│       ├── run_fullscan_sim
│       ├── run_fullscan_sim_sdf
│       ├── runmodus.atpg.tcl
│       ├── seq_det_0010.FULLSCAN.pinassign
│       ├── seq_det_0010_modus.tcl
│       ├── seq_det_0010.test_netlist.v
│       ├── simple_processor.FULLSCAN.pinassign
│       ├── simple_processor_modus.tcl
│       ├── simple_processor.test_netlist.v
│       ├── sr_ff.FULLSCAN.pinassign
│       ├── sr_ff_modus.tcl
│       ├── sr_ff.test_netlist.v
│       ├── sync_FA.FULLSCAN.pinassign
│       ├── sync_FA_modus.tcl
│       ├── sync_FA.test_netlist.v
│       ├── sync_HA.FULLSCAN.pinassign
│       ├── sync_HA_modus.tcl
│       ├── sync_HA.test_netlist.v
│       ├── tbdata
│       │   ├── activeNodeMap2.FULLSCAN
│       │   ├── contents.FULLSCAN
│       │   ├── faultModel
│       │   ├── faultStatus
│       │   ├── faultStatus.FULLSCAN.logic
│       │   ├── faultStatus.FULLSCAN.scan
│       │   ├── flatModel
│       │   ├── globalData
│       │   ├── hierAttributes3
│       │   ├── hierModel3
│       │   ├── locks
│       │   │   ├── channelInputs.FULLSCAN
│       │   │   ├── clockChopper.FULLSCAN
│       │   │   ├── clockSignalRaces.FULLSCAN
│       │   │   ├── experiment.FULLSCAN.logic
│       │   │   ├── experiment.FULLSCAN.scan
│       │   │   ├── explicitFVlatch.FULLSCAN
│       │   │   ├── faultStatus
│       │   │   ├── feedback.FULLSCAN
│       │   │   ├── flatModel
│       │   │   ├── globalData_itself
│       │   │   ├── hierAttributes
│       │   │   ├── hierModel
│       │   │   ├── hierModel3
│       │   │   ├── latchUsage.FULLSCAN
│       │   │   ├── lock0_faultModel
│       │   │   ├── lock0_faultStatus
│       │   │   ├── lock0_faultStatus.FULLSCAN.logic
│       │   │   ├── lock0_faultStatus.FULLSCAN.scan
│       │   │   ├── lock0_flatModel
│       │   │   ├── lock0_hierModel3
│       │   │   ├── lock0_hierModel3_new
│       │   │   ├── lock0_modeInfo4.FULLSCAN
│       │   │   ├── lock0_TCIcaTable.FULLSCAN
│       │   │   ├── lock0_TSItsvInterfaceFile.FULLSCAN
│       │   │   ├── lock0_TSVmessageFile.FULLSCAN
│       │   │   ├── lock1_faultModel
│       │   │   ├── lock1_faultStatus
│       │   │   ├── lock1_faultStatus.FULLSCAN.logic
│       │   │   ├── lock1_faultStatus.FULLSCAN.scan
│       │   │   ├── lock1_flatModel
│       │   │   ├── lock1_hierModel3
│       │   │   ├── lock1_hierModel3_new
│       │   │   ├── lock1_modeInfo4.FULLSCAN
│       │   │   ├── lock1_TCIcaTable.FULLSCAN
│       │   │   ├── lock1_TSItsvInterfaceFile.FULLSCAN
│       │   │   ├── lock1_TSVmessageFile.FULLSCAN
│       │   │   ├── modeInfo.FULLSCAN
│       │   │   ├── modus_metrics
│       │   │   ├── pipelineInfo.FULLSCAN
│       │   │   ├── README
│       │   │   ├── runstats.FULLSCAN
│       │   │   ├── TEIpidINFO
│       │   │   ├── TEIpidLIST
│       │   │   ├── testClockUsage.FULLSCAN
│       │   │   ├── testMode.FULLSCAN
│       │   │   ├── tsdContention.FULLSCAN
│       │   │   ├── TSItsvInterfaceFile.FULLSCAN
│       │   │   ├── TSVmessageFile.FULLSCAN
│       │   │   ├── TTM_simultaneous
│       │   │   └── updateStats.FULLSCAN
│       │   ├── messages
│       │   │   ├── log_build_faultmodel
│       │   │   ├── log_build_model
│       │   │   └── log_build_testmode_FULLSCAN
│       │   ├── modeInfo4.FULLSCAN
│       │   ├── modus_metrics
│       │   ├── TBDbin.FULLSCAN.logic
│       │   ├── TBDbin.FULLSCAN.scan
│       │   ├── TBDseq.FULLSCAN
│       │   ├── TCIcaTable.FULLSCAN
│       │   ├── TEIexcludedAttr
│       │   ├── TEIincludedAttr
│       │   ├── TEImsgOverrides
│       │   ├── TEIsourceLibPath
│       │   ├── TEIversion
│       │   ├── TSItsvInterfaceFile.FULLSCAN
│       │   └── TSVmessageFile.FULLSCAN
│       ├── test.exclude
│       ├── test.modedef
│       └── testresults
│           ├── .CDNSmodusCpuTime_57951_09_09_2025_16:44:37
│           ├── .CDNSmodusCpuTime_61030_09_09_2025_16:47:03
│           ├── .CDNSmodusCpuTime_79778_09_09_2025_17:46:20
│           ├── .CDNSmodusCpuTime_94501_09_09_2025_18:03:32
│           ├── .CDNSmodusMemory_57951_09_09_2025_16:44:37
│           ├── .CDNSmodusMemory_61030_09_09_2025_16:47:03
│           ├── .CDNSmodusMemory_79778_09_09_2025_17:46:20
│           ├── .CDNSmodusMemory_94501_09_09_2025_18:03:32
│           ├── logs
│           │   ├── log_build_faultmodel -> log_build_faultmodel_110525173613-679116000
│           │   ├── log_build_faultmodel_090925162950-398963000
│           │   ├── log_build_faultmodel_090925164057-014865000
│           │   ├── log_build_faultmodel_090925164719-528912000
│           │   ├── log_build_faultmodel_090925174110-885768000
│           │   ├── log_build_faultmodel_090925175137-171104000
│           │   ├── log_build_faultmodel_090925175508-828097000
│           │   ├── log_build_faultmodel_090925175742-079448000
│           │   ├── log_build_faultmodel_090925180119-611638000
│           │   ├── log_build_faultmodel_090925180354-014078000
│           │   ├── log_build_faultmodel_110525172744-906370000
│           │   ├── log_build_faultmodel_110525173152-417929000
│           │   ├── log_build_faultmodel_110525173334-312624000
│           │   ├── log_build_faultmodel_110525173613-679116000
│           │   ├── log_build_model -> log_build_model_110525173607-629493000
│           │   ├── log_build_model_090925162938-782430000
│           │   ├── log_build_model_090925164046-281684000
│           │   ├── log_build_model_090925164441-744992000
│           │   ├── log_build_model_090925164707-237600000
│           │   ├── log_build_model_090925174058-760773000
│           │   ├── log_build_model_090925174458-949235000
│           │   ├── log_build_model_090925174625-786574000
│           │   ├── log_build_model_090925175125-663073000
│           │   ├── log_build_model_090925175457-336683000
│           │   ├── log_build_model_090925175731-371465000
│           │   ├── log_build_model_090925180108-711872000
│           │   ├── log_build_model_090925180342-780611000
│           │   ├── log_build_model_110525172737-098383000
│           │   ├── log_build_model_110525173146-401513000
│           │   ├── log_build_model_110525173329-237853000
│           │   ├── log_build_model_110525173607-629493000
│           │   ├── log_build_testmode_FULLSCAN -> log_build_testmode_FULLSCAN_110525173609-537737000
│           │   ├── log_build_testmode_FULLSCAN_090925162942-632439000
│           │   ├── log_build_testmode_FULLSCAN_090925164049-406587000
│           │   ├── log_build_testmode_FULLSCAN_090925164711-912567000
│           │   ├── log_build_testmode_FULLSCAN_090925174102-027333000
│           │   ├── log_build_testmode_FULLSCAN_090925174628-861551000
│           │   ├── log_build_testmode_FULLSCAN_090925175128-779634000
│           │   ├── log_build_testmode_FULLSCAN_090925175500-203100000
│           │   ├── log_build_testmode_FULLSCAN_090925175734-204621000
│           │   ├── log_build_testmode_FULLSCAN_090925180111-661914000
│           │   ├── log_build_testmode_FULLSCAN_090925180345-822137000
│           │   ├── log_build_testmode_FULLSCAN_110525172740-214890000
│           │   ├── log_build_testmode_FULLSCAN_110525173148-201407000
│           │   ├── log_build_testmode_FULLSCAN_110525173330-012706000
│           │   ├── log_build_testmode_FULLSCAN_110525173609-537737000
│           │   ├── log_create_logic_tests_FULLSCAN_logic -> log_create_logic_tests_FULLSCAN_logic_110525173616-278891000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925162955-490591000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925164102-381117000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925164725-903647000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925174116-060579000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925175142-537896000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925175513-919595000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925175747-512941000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925180125-986535000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_090925180400-255456000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_110525172747-997935000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_110525173155-034511000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_110525173336-979264000
│           │   ├── log_create_logic_tests_FULLSCAN_logic_110525173616-278891000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan -> log_create_scanchain_tests_FULLSCAN_scan_110525173614-895753000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925162952-790524000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925164059-273007000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925164722-937025000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925174113-502109000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925175139-712782000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925175511-394728000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925175744-879262000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925180122-736715000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_090925180356-363961000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_110525172746-306456000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_110525173153-651183000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_110525173335-596212000
│           │   ├── log_create_scanchain_tests_FULLSCAN_scan_110525173614-895753000
│           │   ├── log_report_test_structures_FULLSCAN -> log_report_test_structures_FULLSCAN_110525173612-595798000
│           │   ├── log_report_test_structures_FULLSCAN_090925162948-265721000
│           │   ├── log_report_test_structures_FULLSCAN_090925164054-939620000
│           │   ├── log_report_test_structures_FULLSCAN_090925164717-161958000
│           │   ├── log_report_test_structures_FULLSCAN_090925174108-743914000
│           │   ├── log_report_test_structures_FULLSCAN_090925175134-971254000
│           │   ├── log_report_test_structures_FULLSCAN_090925175506-661477000
│           │   ├── log_report_test_structures_FULLSCAN_090925175739-596072000
│           │   ├── log_report_test_structures_FULLSCAN_090925180117-236787000
│           │   ├── log_report_test_structures_FULLSCAN_090925180351-864112000
│           │   ├── log_report_test_structures_FULLSCAN_110525172743-814894000
│           │   ├── log_report_test_structures_FULLSCAN_110525173151-334681000
│           │   ├── log_report_test_structures_FULLSCAN_110525173333-229406000
│           │   ├── log_report_test_structures_FULLSCAN_110525173612-595798000
│           │   ├── log_verify_test_structures_ASSUMED_090925174631-311580000
│           │   ├── log_verify_test_structures_FULLSCAN -> log_verify_test_structures_FULLSCAN_110525173610-870966000
│           │   ├── log_verify_test_structures_FULLSCAN_090925162945-232398000
│           │   ├── log_verify_test_structures_FULLSCAN_090925164051-798265000
│           │   ├── log_verify_test_structures_FULLSCAN_090925164714-303977000
│           │   ├── log_verify_test_structures_FULLSCAN_090925174104-535703000
│           │   ├── log_verify_test_structures_FULLSCAN_090925175131-471104000
│           │   ├── log_verify_test_structures_FULLSCAN_090925175502-694978000
│           │   ├── log_verify_test_structures_FULLSCAN_090925175736-721276000
│           │   ├── log_verify_test_structures_FULLSCAN_090925180114-086730000
│           │   ├── log_verify_test_structures_FULLSCAN_090925180348-288946000
│           │   ├── log_verify_test_structures_FULLSCAN_110525172741-931494000
│           │   ├── log_verify_test_structures_FULLSCAN_110525173149-568056000
│           │   ├── log_verify_test_structures_FULLSCAN_110525173331-387797000
│           │   ├── log_verify_test_structures_FULLSCAN_110525173610-870966000
│           │   ├── log_write_vectors_FULLSCAN_logic -> log_write_vectors_FULLSCAN_logic_110525173617-853898000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925162957-899034000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925164104-414588000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925164728-070050000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925174118-301980000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925175144-687628000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925175516-186063000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925175750-354142000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925180128-094877000
│           │   ├── log_write_vectors_FULLSCAN_logic_090925180402-413822000
│           │   ├── log_write_vectors_FULLSCAN_logic_110525172749-464645000
│           │   ├── log_write_vectors_FULLSCAN_logic_110525173156-442860000
│           │   ├── log_write_vectors_FULLSCAN_logic_110525173338-462785000
│           │   └── log_write_vectors_FULLSCAN_logic_110525173617-853898000
│           └── verilog
│               ├── booth_multiplier_modus_generated_results.1.verilog
│               ├── booth_multiplier_modus_generated_results.2.verilog
│               ├── booth_multiplier_modus_generated_results.cyclemap
│               ├── booth_multiplier_modus_generated_results.mainsim.v
│               ├── control_unit_fsm_modus_generated_results.1.verilog
│               ├── control_unit_fsm_modus_generated_results.2.verilog
│               ├── control_unit_fsm_modus_generated_results.cyclemap
│               ├── control_unit_fsm_modus_generated_results.mainsim.v
│               ├── decoder_modus_generated_results.1.verilog
│               ├── decoder_modus_generated_results.2.verilog
│               ├── decoder_modus_generated_results.cyclemap
│               ├── decoder_modus_generated_results.mainsim.v
│               ├── four_bitcounter_modus_generated_results.1.verilog
│               ├── four_bitcounter_modus_generated_results.2.verilog
│               ├── four_bitcounter_modus_generated_results.cyclemap
│               ├── four_bitcounter_modus_generated_results.mainsim.v
│               ├── mux_modus_generated_results.1.verilog
│               ├── mux_modus_generated_results.2.verilog
│               ├── mux_modus_generated_results.cyclemap
│               ├── mux_modus_generated_results.mainsim.v
│               ├── pipeline_control_modus_generated_results.1.verilog
│               ├── pipeline_control_modus_generated_results.2.verilog
│               ├── pipeline_control_modus_generated_results.cyclemap
│               ├── pipeline_control_modus_generated_results.mainsim.v
│               ├── register_file_modus_generated_results.1.verilog
│               ├── register_file_modus_generated_results.2.verilog
│               ├── register_file_modus_generated_results.cyclemap
│               ├── register_file_modus_generated_results.mainsim.v
│               ├── resource_shared_datapath_modus_generated_results.1.verilog
│               ├── resource_shared_datapath_modus_generated_results.2.verilog
│               ├── resource_shared_datapath_modus_generated_results.cyclemap
│               ├── resource_shared_datapath_modus_generated_results.mainsim.v
│               ├── seq_det_0010_modus_generated_results.1.verilog
│               ├── seq_det_0010_modus_generated_results.2.verilog
│               ├── seq_det_0010_modus_generated_results.cyclemap
│               ├── seq_det_0010_modus_generated_results.mainsim.v
│               ├── simple_processor_modus_generated_results.1.verilog
│               ├── simple_processor_modus_generated_results.2.verilog
│               ├── simple_processor_modus_generated_results.cyclemap
│               ├── simple_processor_modus_generated_results.mainsim.v
│               ├── sr_ff_modus_generated_results.1.verilog
│               ├── sr_ff_modus_generated_results.2.verilog
│               ├── sr_ff_modus_generated_results.cyclemap
│               ├── sr_ff_modus_generated_results.mainsim.v
│               ├── sync_FA_modus_generated_results.1.verilog
│               ├── sync_FA_modus_generated_results.2.verilog
│               ├── sync_FA_modus_generated_results.cyclemap
│               ├── sync_FA_modus_generated_results.mainsim.v
│               ├── sync_HA_modus_generated_results.1.verilog
│               ├── sync_HA_modus_generated_results.2.verilog
│               ├── sync_HA_modus_generated_results.cyclemap
│               └── sync_HA_modus_generated_results.mainsim.v
├── 4_lec
│   ├── booth_multiplier_generated_LEC.log
│   ├── booth_multiplier_generated_LEC.log~
│   ├── booth_multiplier_lec.do
│   ├── control_unit_fsm_generated_LEC.log
│   ├── control_unit_fsm_lec.do
│   ├── datapath_generated_LEC.log
│   ├── datapath_lec.do
│   ├── decoder_generated_LEC.log
│   ├── decoder_lec.do
│   ├── d_ff_generated_LEC.log
│   ├── d_ff_generated_LEC.log~
│   ├── d_ff_lec.do
│   ├── four_bitcounter_generated.log
│   ├── four_bitcounter_lec.do
│   ├── .lec.uilog.bak
│   ├── lib_v.log
│   ├── lib_v.log~
│   ├── mux_generated_LEC.log
│   ├── mux_generated_LEC.log~
│   ├── mux_lec.do
│   ├── pipeline_control_generated_LEC.log
│   ├── pipeline_control_generated_LEC.log~
│   ├── pipeline_control_lec.do
│   ├── register_file_generated_LEC.log
│   ├── register_file_lec.do
│   ├── seq_det_0010_generated_LEC.log
│   ├── seq_det_0010_lec.do
│   ├── simple_processor_generated_LEC.log
│   ├── simple_processor_lec.do
│   ├── slowlib_verilog.do
│   ├── slowlib_verilog_generated.v
│   ├── sr_ff_generated_LEC.log
│   ├── sr_ff_lec.do
│   ├── sync_FA_generated_LEC.log
│   ├── sync_FA_generated_LEC.log~
│   ├── sync_FA_lec.do
│   ├── sync_HA_generated_LEC.log
│   └── sync_HA_lec.do
├── 5_physical_design
│   ├── .cadence
│   │   └── innovus
│   │       └── workspaces
│   ├── ccopt.spec
│   ├── control_unit_fsm
│   ├── control_unit_fsm.dat
│   │   ├── AAE
│   │   │   ├── persistAaeAr.dat
│   │   │   └── vaMgrAr.dat
│   │   ├── ccopt
│   │   │   ├── clock_trees.bin
│   │   │   ├── prop_store_1.bin
│   │   │   ├── prop_store_2.bin
│   │   │   └── skew_groups.bin
│   │   ├── control_unit_fsm.aae.settings
│   │   ├── control_unit_fsm.apa
│   │   ├── control_unit_fsm.db.da.gz
│   │   ├── control_unit_fsm.dbinfo
│   │   ├── control_unit_fsm.flexmv
│   │   ├── control_unit_fsm.fp.gz
│   │   ├── control_unit_fsm.fp.spr.gz
│   │   ├── control_unit_fsm.globals
│   │   ├── control_unit_fsm.init
│   │   ├── control_unit_fsm.metric.gz
│   │   ├── control_unit_fsm.mode
│   │   ├── control_unit_fsm.opconds
│   │   ├── control_unit_fsm.place.gz
│   │   ├── control_unit_fsm_power_constraints.tcl
│   │   ├── control_unit_fsm.prop
│   │   ├── control_unit_fsm.route.congmap.gz
│   │   ├── control_unit_fsm.route.gz
│   │   ├── control_unit_fsm.symtbl.gz
│   │   ├── control_unit_fsm.tcz
│   │   ├── control_unit_fsm.v.bin
│   │   ├── control_unit_fsm.v.bin_lib
│   │   ├── gui.pref.tcl
│   │   ├── inn.cmd.gz
│   │   ├── libs
│   │   │   ├── lef
│   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   └── mmmc
│   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   ├── mmmc
│   │   │   └── delayCorner
│   │   │       ├── max_delay
│   │   │       └── min_delay
│   │   ├── user.attrdef
│   │   └── viewDefinition.tcl
│   ├── control_unit_fsm.spef
│   ├── control_unit_fsm.v
│   ├── DBS
│   │   ├── cts.enc
│   │   ├── cts.enc1
│   │   ├── cts.enc1.dat
│   │   │   ├── AAE
│   │   │   │   ├── persistAaeAr.dat
│   │   │   │   └── vaMgrAr.dat
│   │   │   ├── ccopt
│   │   │   │   ├── clock_trees.bin
│   │   │   │   ├── prop_store_1.bin
│   │   │   │   ├── prop_store_2.bin
│   │   │   │   └── skew_groups.bin
│   │   │   ├── gui.pref.tcl
│   │   │   ├── inn.cmd.gz
│   │   │   ├── libs
│   │   │   │   ├── lef
│   │   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   │   └── mmmc
│   │   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   │   ├── mmmc
│   │   │   │   └── delayCorner
│   │   │   │       ├── max_delay
│   │   │   │       └── min_delay
│   │   │   ├── pipeline_cpu.aae.settings
│   │   │   ├── pipeline_cpu.dbinfo
│   │   │   ├── pipeline_cpu.flexmv
│   │   │   ├── pipeline_cpu.fp.gz
│   │   │   ├── pipeline_cpu.fp.spr.gz
│   │   │   ├── pipeline_cpu.globals
│   │   │   ├── pipeline_cpu.init
│   │   │   ├── pipeline_cpu.marker.gz
│   │   │   ├── pipeline_cpu.metric.gz
│   │   │   ├── pipeline_cpu.mode
│   │   │   ├── pipeline_cpu.opconds
│   │   │   ├── pipeline_cpu.place.gz
│   │   │   ├── pipeline_cpu_power_constraints.tcl
│   │   │   ├── pipeline_cpu.prop
│   │   │   ├── pipeline_cpu.route.congmap.gz
│   │   │   ├── pipeline_cpu.route.gz
│   │   │   ├── pipeline_cpu.symtbl.gz
│   │   │   ├── pipeline_cpu.tcz
│   │   │   ├── pipeline_cpu.v.bin
│   │   │   ├── pipeline_cpu.v.bin_lib
│   │   │   ├── user.attrdef
│   │   │   └── viewDefinition.tcl
│   │   ├── cts.enc2
│   │   ├── cts.enc2.dat
│   │   │   ├── AAE
│   │   │   │   ├── persistAaeAr.dat
│   │   │   │   └── vaMgrAr.dat
│   │   │   ├── ccopt
│   │   │   │   ├── clock_trees.bin
│   │   │   │   ├── prop_store_1.bin
│   │   │   │   ├── prop_store_2.bin
│   │   │   │   └── skew_groups.bin
│   │   │   ├── gui.pref.tcl
│   │   │   ├── inn.cmd.gz
│   │   │   ├── libs
│   │   │   │   ├── lef
│   │   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   │   └── mmmc
│   │   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   │   ├── mmmc
│   │   │   │   └── delayCorner
│   │   │   │       ├── max_delay
│   │   │   │       └── min_delay
│   │   │   ├── resource_shared_datapath.aae.settings
│   │   │   ├── resource_shared_datapath.dbinfo
│   │   │   ├── resource_shared_datapath.flexmv
│   │   │   ├── resource_shared_datapath.fp.gz
│   │   │   ├── resource_shared_datapath.fp.spr.gz
│   │   │   ├── resource_shared_datapath.globals
│   │   │   ├── resource_shared_datapath.init
│   │   │   ├── resource_shared_datapath.marker.gz
│   │   │   ├── resource_shared_datapath.metric.gz
│   │   │   ├── resource_shared_datapath.mode
│   │   │   ├── resource_shared_datapath.opconds
│   │   │   ├── resource_shared_datapath.place.gz
│   │   │   ├── resource_shared_datapath_power_constraints.tcl
│   │   │   ├── resource_shared_datapath.prop
│   │   │   ├── resource_shared_datapath.route.congmap.gz
│   │   │   ├── resource_shared_datapath.route.gz
│   │   │   ├── resource_shared_datapath.symtbl.gz
│   │   │   ├── resource_shared_datapath.tcz
│   │   │   ├── resource_shared_datapath.v.bin
│   │   │   ├── resource_shared_datapath.v.bin_lib
│   │   │   ├── user.attrdef
│   │   │   └── viewDefinition.tcl
│   │   ├── cts.enc3
│   │   ├── cts.enc3.dat
│   │   │   ├── AAE
│   │   │   │   ├── persistAaeAr.dat
│   │   │   │   └── vaMgrAr.dat
│   │   │   ├── ccopt
│   │   │   │   ├── clock_trees.bin
│   │   │   │   ├── prop_store_1.bin
│   │   │   │   ├── prop_store_2.bin
│   │   │   │   └── skew_groups.bin
│   │   │   ├── control_unit_fsm.aae.settings
│   │   │   ├── control_unit_fsm.dbinfo
│   │   │   ├── control_unit_fsm.flexmv
│   │   │   ├── control_unit_fsm.fp.gz
│   │   │   ├── control_unit_fsm.fp.spr.gz
│   │   │   ├── control_unit_fsm.globals
│   │   │   ├── control_unit_fsm.init
│   │   │   ├── control_unit_fsm.metric.gz
│   │   │   ├── control_unit_fsm.mode
│   │   │   ├── control_unit_fsm.opconds
│   │   │   ├── control_unit_fsm.place.gz
│   │   │   ├── control_unit_fsm_power_constraints.tcl
│   │   │   ├── control_unit_fsm.prop
│   │   │   ├── control_unit_fsm.route.congmap.gz
│   │   │   ├── control_unit_fsm.route.gz
│   │   │   ├── control_unit_fsm.symtbl.gz
│   │   │   ├── control_unit_fsm.tcz
│   │   │   ├── control_unit_fsm.v.bin
│   │   │   ├── control_unit_fsm.v.bin_lib
│   │   │   ├── gui.pref.tcl
│   │   │   ├── inn.cmd.gz
│   │   │   ├── libs
│   │   │   │   ├── lef
│   │   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   │   └── mmmc
│   │   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   │   ├── mmmc
│   │   │   │   └── delayCorner
│   │   │   │       ├── max_delay
│   │   │   │       └── min_delay
│   │   │   ├── user.attrdef
│   │   │   └── viewDefinition.tcl
│   │   ├── cts.enc4
│   │   ├── cts.enc4.dat
│   │   │   ├── AAE
│   │   │   │   ├── persistAaeAr.dat
│   │   │   │   └── vaMgrAr.dat
│   │   │   ├── ccopt
│   │   │   │   ├── clock_trees.bin
│   │   │   │   ├── prop_store_1.bin
│   │   │   │   ├── prop_store_2.bin
│   │   │   │   └── skew_groups.bin
│   │   │   ├── gui.pref.tcl
│   │   │   ├── inn.cmd.gz
│   │   │   ├── libs
│   │   │   │   ├── lef
│   │   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   │   └── mmmc
│   │   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   │   ├── mmmc
│   │   │   │   └── delayCorner
│   │   │   │       ├── max_delay
│   │   │   │       └── min_delay
│   │   │   ├── register_file.aae.settings
│   │   │   ├── register_file.dbinfo
│   │   │   ├── register_file.flexmv
│   │   │   ├── register_file.fp.gz
│   │   │   ├── register_file.fp.spr.gz
│   │   │   ├── register_file.globals
│   │   │   ├── register_file.init
│   │   │   ├── register_file.marker.gz
│   │   │   ├── register_file.metric.gz
│   │   │   ├── register_file.mode
│   │   │   ├── register_file.opconds
│   │   │   ├── register_file.place.gz
│   │   │   ├── register_file_power_constraints.tcl
│   │   │   ├── register_file.prop
│   │   │   ├── register_file.route.congmap.gz
│   │   │   ├── register_file.route.gz
│   │   │   ├── register_file.symtbl.gz
│   │   │   ├── register_file.tcz
│   │   │   ├── register_file.v.bin
│   │   │   ├── register_file.v.bin_lib
│   │   │   ├── user.attrdef
│   │   │   └── viewDefinition.tcl
│   │   ├── cts.enc5
│   │   ├── cts.enc5.dat
│   │   │   ├── AAE
│   │   │   │   ├── persistAaeAr.dat
│   │   │   │   └── vaMgrAr.dat
│   │   │   ├── ccopt
│   │   │   │   ├── clock_trees.bin
│   │   │   │   ├── prop_store_1.bin
│   │   │   │   ├── prop_store_2.bin
│   │   │   │   └── skew_groups.bin
│   │   │   ├── gui.pref.tcl
│   │   │   ├── inn.cmd.gz
│   │   │   ├── libs
│   │   │   │   ├── lef
│   │   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   │   └── mmmc
│   │   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   │   ├── mmmc
│   │   │   │   └── delayCorner
│   │   │   │       ├── max_delay
│   │   │   │       └── min_delay
│   │   │   ├── pipeline_cpu.aae.settings
│   │   │   ├── pipeline_cpu.dbinfo
│   │   │   ├── pipeline_cpu.flexmv
│   │   │   ├── pipeline_cpu.fp.gz
│   │   │   ├── pipeline_cpu.fp.spr.gz
│   │   │   ├── pipeline_cpu.globals
│   │   │   ├── pipeline_cpu.init
│   │   │   ├── pipeline_cpu.marker.gz
│   │   │   ├── pipeline_cpu.metric.gz
│   │   │   ├── pipeline_cpu.mode
│   │   │   ├── pipeline_cpu.opconds
│   │   │   ├── pipeline_cpu.place.gz
│   │   │   ├── pipeline_cpu_power_constraints.tcl
│   │   │   ├── pipeline_cpu.prop
│   │   │   ├── pipeline_cpu.route.congmap.gz
│   │   │   ├── pipeline_cpu.route.gz
│   │   │   ├── pipeline_cpu.symtbl.gz
│   │   │   ├── pipeline_cpu.tcz
│   │   │   ├── pipeline_cpu.v.bin
│   │   │   ├── pipeline_cpu.v.bin_lib
│   │   │   ├── user.attrdef
│   │   │   └── viewDefinition.tcl
│   │   └── cts.enc.dat
│   │       ├── AAE
│   │       │   ├── persistAaeAr.dat
│   │       │   └── vaMgrAr.dat
│   │       ├── ccopt
│   │       │   ├── clock_trees.bin
│   │       │   ├── prop_store_1.bin
│   │       │   ├── prop_store_2.bin
│   │       │   └── skew_groups.bin
│   │       ├── gui.pref.tcl
│   │       ├── inn.cmd.gz
│   │       ├── libs
│   │       │   ├── lef
│   │       │   │   └── all.lef -> /home/install/FOUNDRY/digital/180nm/dig/lef/all.lef
│   │       │   └── mmmc
│   │       │       ├── fast.lib -> /home/install/FOUNDRY/digital/180nm/dig/lib/fast.lib
│   │       │       ├── slow.lib -> /home/install/FOUNDRY/digital/180nm/dig/lib/slow.lib
│   │       │       └── t018s6mlv.capTbl -> /home/install/FOUNDRY/digital/180nm/dig/captable/t018s6mlv.capTbl
│   │       ├── mmmc
│   │       │   └── delayCorner
│   │       │       ├── max_delay
│   │       │       └── min_delay
│   │       ├── register_file.aae.settings
│   │       ├── register_file.dbinfo
│   │       ├── register_file.flexmv
│   │       ├── register_file.fp.gz
│   │       ├── register_file.fp.spr.gz
│   │       ├── register_file.globals
│   │       ├── register_file.init
│   │       ├── register_file.marker.gz
│   │       ├── register_file.metric.gz
│   │       ├── register_file.mode
│   │       ├── register_file.opconds
│   │       ├── register_file.place.gz
│   │       ├── register_file_power_constraints.tcl
│   │       ├── register_file.prop
│   │       ├── register_file.route.congmap.gz
│   │       ├── register_file.route.gz
│   │       ├── register_file.symtbl.gz
│   │       ├── register_file.tcz
│   │       ├── register_file.v.bin
│   │       ├── register_file.v.bin_lib
│   │       ├── user.attrdef
│   │       └── viewDefinition.tcl
│   ├── Default.globals
│   ├── Default.view
│   ├── innovus.cmd
│   ├── innovus.cmd1
│   ├── innovus.cmd2
│   ├── innovus.cmd3
│   ├── innovus.cmd4
│   ├── innovus.cmd5
│   ├── innovus.log
│   ├── innovus.log1
│   ├── innovus.log2
│   ├── innovus.log3
│   ├── innovus.log4
│   ├── innovus.log5
│   ├── innovus.logv
│   ├── innovus.logv1
│   ├── innovus.logv2
│   ├── innovus.logv3
│   ├── innovus.logv4
│   ├── innovus.logv5
│   ├── pipeline_cpu
│   ├── pipeline_cpu.dat
│   │   ├── AAE
│   │   │   ├── persistAaeAr.dat
│   │   │   └── vaMgrAr.dat
│   │   ├── ccopt
│   │   │   ├── clock_trees.bin
│   │   │   ├── prop_store_1.bin
│   │   │   ├── prop_store_2.bin
│   │   │   └── skew_groups.bin
│   │   ├── gui.pref.tcl
│   │   ├── inn.cmd.gz
│   │   ├── libs
│   │   │   ├── lef
│   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   └── mmmc
│   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   ├── mmmc
│   │   │   └── delayCorner
│   │   │       ├── max_delay
│   │   │       └── min_delay
│   │   ├── pipeline_cpu.aae.settings
│   │   ├── pipeline_cpu.apa
│   │   ├── pipeline_cpu.db.da.gz
│   │   ├── pipeline_cpu.dbinfo
│   │   ├── pipeline_cpu.flexmv
│   │   ├── pipeline_cpu.fp.gz
│   │   ├── pipeline_cpu.fp.spr.gz
│   │   ├── pipeline_cpu.globals
│   │   ├── pipeline_cpu.init
│   │   ├── pipeline_cpu.metric.gz
│   │   ├── pipeline_cpu.mode
│   │   ├── pipeline_cpu.opconds
│   │   ├── pipeline_cpu.place.gz
│   │   ├── pipeline_cpu_power_constraints.tcl
│   │   ├── pipeline_cpu.prop
│   │   ├── pipeline_cpu.route.congmap.gz
│   │   ├── pipeline_cpu.route.gz
│   │   ├── pipeline_cpu.symtbl.gz
│   │   ├── pipeline_cpu.tcz
│   │   ├── pipeline_cpu.v.bin
│   │   ├── pipeline_cpu.v.bin_lib
│   │   ├── user.attrdef
│   │   └── viewDefinition.tcl
│   ├── pipeline_cpu.spef
│   ├── pipeline_cpu.v
│   ├── pvsUI_ipvs.log
│   ├── register_file
│   ├── register_file.dat
│   │   ├── AAE
│   │   │   ├── persistAaeAr.dat
│   │   │   └── vaMgrAr.dat
│   │   ├── ccopt
│   │   │   ├── clock_trees.bin
│   │   │   ├── prop_store_1.bin
│   │   │   ├── prop_store_2.bin
│   │   │   └── skew_groups.bin
│   │   ├── gui.pref.tcl
│   │   ├── inn.cmd.gz
│   │   ├── libs
│   │   │   ├── lef
│   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   └── mmmc
│   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   ├── mmmc
│   │   │   └── delayCorner
│   │   │       ├── max_delay
│   │   │       └── min_delay
│   │   ├── register_file.aae.settings
│   │   ├── register_file.apa
│   │   ├── register_file.db.da.gz
│   │   ├── register_file.dbinfo
│   │   ├── register_file.flexmv
│   │   ├── register_file.fp.gz
│   │   ├── register_file.fp.spr.gz
│   │   ├── register_file.globals
│   │   ├── register_file.init
│   │   ├── register_file.metric.gz
│   │   ├── register_file.mode
│   │   ├── register_file.opconds
│   │   ├── register_file.place.gz
│   │   ├── register_file_power_constraints.tcl
│   │   ├── register_file.prop
│   │   ├── register_file.route.congmap.gz
│   │   ├── register_file.route.gz
│   │   ├── register_file.symtbl.gz
│   │   ├── register_file.tcz
│   │   ├── register_file.v.bin
│   │   ├── register_file.v.bin_lib
│   │   ├── user.attrdef
│   │   └── viewDefinition.tcl
│   ├── register_file_PD
│   ├── register_file.spef
│   ├── register_file.v
│   ├── resource_shared_datapath
│   ├── resource_shared_datapath.dat
│   │   ├── AAE
│   │   │   ├── persistAaeAr.dat
│   │   │   └── vaMgrAr.dat
│   │   ├── ccopt
│   │   │   ├── clock_trees.bin
│   │   │   ├── prop_store_1.bin
│   │   │   ├── prop_store_2.bin
│   │   │   └── skew_groups.bin
│   │   ├── gui.pref.tcl
│   │   ├── inn.cmd.gz
│   │   ├── libs
│   │   │   ├── lef
│   │   │   │   ├── gsclib090_macro.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_macro.lef
│   │   │   │   ├── gsclib090_tech.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_tech.lef
│   │   │   │   ├── gsclib090_translated.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
│   │   │   │   └── gsclib090_translated_ref.lef -> /home/install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef
│   │   │   └── mmmc
│   │   │       ├── fast.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/fast.lib
│   │   │       ├── gpdk090.lef.extended.CapTbl -> /home/install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl
│   │   │       └── slow.lib -> /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
│   │   ├── mmmc
│   │   │   └── delayCorner
│   │   │       ├── max_delay
│   │   │       └── min_delay
│   │   ├── resource_shared_datapath.aae.settings
│   │   ├── resource_shared_datapath.apa
│   │   ├── resource_shared_datapath.db.da.gz
│   │   ├── resource_shared_datapath.dbinfo
│   │   ├── resource_shared_datapath.flexmv
│   │   ├── resource_shared_datapath.fp.gz
│   │   ├── resource_shared_datapath.fp.spr.gz
│   │   ├── resource_shared_datapath.globals
│   │   ├── resource_shared_datapath.init
│   │   ├── resource_shared_datapath.marker.gz
│   │   ├── resource_shared_datapath.metric.gz
│   │   ├── resource_shared_datapath.mode
│   │   ├── resource_shared_datapath.opconds
│   │   ├── resource_shared_datapath.place.gz
│   │   ├── resource_shared_datapath_power_constraints.tcl
│   │   ├── resource_shared_datapath.prop
│   │   ├── resource_shared_datapath.route.congmap.gz
│   │   ├── resource_shared_datapath.route.gz
│   │   ├── resource_shared_datapath.symtbl.gz
│   │   ├── resource_shared_datapath.tcz
│   │   ├── resource_shared_datapath.v.bin
│   │   ├── resource_shared_datapath.v.bin_lib
│   │   ├── user.attrdef
│   │   └── viewDefinition.tcl
│   ├── resource_shared_datapath.spef
│   ├── resource_shared_datapath.v
│   ├── streamOut.map
│   └── timingReports
│       ├── control_unit_fsm_preCTS_all_hold.tarpt.gz
│       ├── control_unit_fsm_preCTS_all.tarpt.gz
│       ├── control_unit_fsm_preCTS.cap.gz
│       ├── control_unit_fsm_preCTS_default_hold.tarpt.gz
│       ├── control_unit_fsm_preCTS_default.tarpt.gz
│       ├── control_unit_fsm_preCTS.fanout.gz
│       ├── control_unit_fsm_preCTS_hold.slk
│       ├── control_unit_fsm_preCTS_hold.summary.gz
│       ├── control_unit_fsm_preCTS.length.gz
│       ├── control_unit_fsm_preCTS_reg2reg_hold.tarpt.gz
│       ├── control_unit_fsm_preCTS_reg2reg.tarpt.gz
│       ├── control_unit_fsm_preCTS.slk
│       ├── control_unit_fsm_preCTS.summary.gz
│       ├── control_unit_fsm_preCTS.tran.gz
│       ├── pipeline_cpu_preCTS_all_hold.tarpt.gz
│       ├── pipeline_cpu_preCTS_all.tarpt.gz
│       ├── pipeline_cpu_preCTS.cap.gz
│       ├── pipeline_cpu_preCTS_default_hold.tarpt.gz
│       ├── pipeline_cpu_preCTS_default.tarpt.gz
│       ├── pipeline_cpu_preCTS.fanout.gz
│       ├── pipeline_cpu_preCTS_hold.slk
│       ├── pipeline_cpu_preCTS_hold.summary.gz
│       ├── pipeline_cpu_preCTS.length.gz
│       ├── pipeline_cpu_preCTS_reg2reg_hold.tarpt.gz
│       ├── pipeline_cpu_preCTS_reg2reg.tarpt.gz
│       ├── pipeline_cpu_preCTS.slk
│       ├── pipeline_cpu_preCTS.summary.gz
│       ├── pipeline_cpu_preCTS.tran.gz
│       ├── register_file_preCTS_all_hold.tarpt.gz
│       ├── register_file_preCTS_all.tarpt.gz
│       ├── register_file_preCTS.cap.gz
│       ├── register_file_preCTS_default_hold.tarpt.gz
│       ├── register_file_preCTS_default.tarpt.gz
│       ├── register_file_preCTS.fanout.gz
│       ├── register_file_preCTS_hold.slk
│       ├── register_file_preCTS_hold.summary.gz
│       ├── register_file_preCTS.length.gz
│       ├── register_file_preCTS_reg2reg_hold.tarpt.gz
│       ├── register_file_preCTS_reg2reg.tarpt.gz
│       ├── register_file_preCTS.slk
│       ├── register_file_preCTS.summary.gz
│       ├── register_file_preCTS.tran.gz
│       ├── resource_shared_datapath_preCTS_all_hold.tarpt.gz
│       ├── resource_shared_datapath_preCTS_all.tarpt.gz
│       ├── resource_shared_datapath_preCTS.cap.gz
│       ├── resource_shared_datapath_preCTS_default_hold.tarpt.gz
│       ├── resource_shared_datapath_preCTS_default.tarpt.gz
│       ├── resource_shared_datapath_preCTS.fanout.gz
│       ├── resource_shared_datapath_preCTS_hold.slk
│       ├── resource_shared_datapath_preCTS_hold.summary.gz
│       ├── resource_shared_datapath_preCTS.length.gz
│       ├── resource_shared_datapath_preCTS_reg2reg_hold.tarpt.gz
│       ├── resource_shared_datapath_preCTS_reg2reg.tarpt.gz
│       ├── resource_shared_datapath_preCTS.slk
│       ├── resource_shared_datapath_preCTS.summary.gz
│       └── resource_shared_datapath_preCTS.tran.gz
├── Assets
│   ├── Lab_1.txt
│   ├── Lab_2.txt
│   ├── Lab_3_scripting_guide.txt
│   ├── Lab_3_scripting.txt
│   ├── Lab_4_LEC_guide.txt
│   ├── Lab_5_modus_model_design_guide.txt
│   ├── Lab_6_physical_design_guide.txt
│   ├── RTL2GDSII
│   │   ├── Lab 4 Report Task 2_ 2R_1W CPU Register File.pdf
│   │   ├── Lab 5 Report _ Single-Cycle CPU FSM Control Unit.pdf
│   │   ├── Lab 6 Report_ Resource-Shared Datapath for Z=(A+B)x(C-D).pdf
│   │   ├── Lab Report_ 4-Stage Pipelined CPU.pdf
│   │   ├── Screenshot from 2025-11-04 16-14-22.png
│   │   ├── Screenshot from 2025-11-04 16-22-46.png
│   │   ├── Screenshot from 2025-11-04 16-25-16.png
│   │   ├── Screenshot from 2025-11-04 17-10-01.png
│   │   ├── Screenshot from 2025-11-04 17-46-32.png
│   │   ├── Screenshot from 2025-11-04 17-48-57.png
│   │   ├── Screenshot from 2025-11-04 17-50-00.png
│   │   ├── Screenshot from 2025-11-04 17-50-26.png
│   │   ├── Screenshot from 2025-11-04 17-57-02.png
│   │   ├── Screenshot from 2025-11-04 17-57-24.png
│   │   ├── Screenshot from 2025-11-04 17-58-01.png
│   │   ├── Screenshot from 2025-11-04 17-58-25.png
│   │   ├── Screenshot from 2025-11-04 18-05-17.png
│   │   ├── Screenshot from 2025-11-04 18-09-30.png
│   │   ├── Screenshot from 2025-11-04 18-09-59.png
│   │   ├── Screenshot from 2025-11-04 18-10-12.png
│   │   ├── Screenshot from 2025-11-04 18-10-18.png
│   │   ├── Screenshot from 2025-11-04 18-10-28.png
│   │   ├── Screenshot from 2025-11-04 18-11-02.png
│   │   ├── Screenshot from 2025-11-04 18-30-48.png
│   │   ├── Screenshot from 2025-11-04 18-32-07.png
│   │   ├── Screenshot from 2025-11-04 18-32-22.png
│   │   ├── Screenshot from 2025-11-04 18-34-21.png
│   │   ├── Screenshot from 2025-11-04 18-34-46.png
│   │   ├── Screenshot from 2025-11-04 18-35-55.png
│   │   ├── Screenshot from 2025-11-04 18-47-12.png
│   │   ├── Screenshot from 2025-11-04 18-47-14.png
│   │   ├── Screenshot from 2025-11-05 16-36-50.png
│   │   ├── Screenshot from 2025-11-05 16-37-00.png
│   │   ├── Screenshot from 2025-11-05 16-45-43.png
│   │   ├── Screenshot from 2025-11-05 16-46-30.png
│   │   ├── Screenshot from 2025-11-05 16-46-49.png
│   │   ├── Screenshot from 2025-11-05 16-47-11.png
│   │   ├── Screenshot from 2025-11-05 16-47-25.png
│   │   ├── Screenshot from 2025-11-05 16-48-33.png
│   │   ├── Screenshot from 2025-11-05 16-48-55.png
│   │   ├── Screenshot from 2025-11-05 16-49-16.png
│   │   ├── Screenshot from 2025-11-05 16-49-22.png
│   │   ├── Screenshot from 2025-11-05 16-49-36.png
│   │   ├── Screenshot from 2025-11-05 16-50-33.png
│   │   ├── Screenshot from 2025-11-05 16-50-35.png
│   │   ├── Screenshot from 2025-11-05 16-51-05.png
│   │   ├── Screenshot from 2025-11-05 16-51-08.png
│   │   ├── Screenshot from 2025-11-05 16-51-20.png
│   │   ├── Screenshot from 2025-11-05 17-00-41.png
│   │   ├── Screenshot from 2025-11-05 17-00-44.png
│   │   ├── Screenshot from 2025-11-05 17-30-54.png
│   │   ├── Screenshot from 2025-11-05 17-31-01.png
│   │   ├── Screenshot from 2025-11-05 17-31-04.png
│   │   ├── Screenshot from 2025-11-05 17-32-03.png
│   │   ├── Screenshot from 2025-11-05 17-32-06.png
│   │   ├── Screenshot from 2025-11-05 17-32-39.png
│   │   ├── Screenshot from 2025-11-05 17-33-43.png
│   │   ├── Screenshot from 2025-11-05 17-33-46.png
│   │   ├── Screenshot from 2025-11-05 17-34-03.png
│   │   ├── Screenshot from 2025-11-05 17-36-22.png
│   │   ├── Screenshot from 2025-11-05 17-36-27.png
│   │   ├── Screenshot from 2025-11-05 17-36-42.png
│   │   ├── Screenshot from 2025-11-05 17-54-20.png
│   │   ├── Screenshot from 2025-11-05 17-55-23.png
│   │   ├── Screenshot from 2025-11-05 17-55-29.png
│   │   ├── Screenshot from 2025-11-05 18-01-19.png
│   │   ├── Screenshot from 2025-11-05 18-01-23.png
│   │   ├── Screenshot from 2025-11-05 18-04-25.png
│   │   ├── Screenshot from 2025-11-05 18-05-14.png
│   │   ├── Screenshot from 2025-11-05 18-05-23.png
│   │   ├── Screenshot from 2025-11-05 18-07-30.png
│   │   ├── Screenshot from 2025-11-05 18-13-05.png
│   │   ├── Screenshot from 2025-11-05 18-14-56.png
│   │   ├── Screenshot from 2025-11-05 18-15-00.png
│   │   ├── Screenshot from 2025-11-05 18-16-39.png
│   │   ├── Screenshot from 2025-11-05 18-17-26.png
│   │   ├── Screenshot from 2025-11-05 18-17-54.png
│   │   ├── Screenshot from 2025-11-05 18-19-33.png
│   │   ├── Screenshot from 2025-11-05 18-24-56.png
│   │   ├── Screenshot from 2025-11-05 18-25-10.png
│   │   ├── Screenshot from 2025-11-05 18-25-20.png
│   │   ├── Screenshot from 2025-11-05 18-26-19.png
│   │   ├── Screenshot from 2025-11-05 18-27-05.png
│   │   ├── Screenshot from 2025-11-05 18-27-13.png
│   │   ├── Screenshot from 2025-11-05 18-32-24.png
│   │   ├── Screenshot from 2025-11-05 18-32-57.png
│   │   ├── Screenshot from 2025-11-05 18-34-56.png
│   │   ├── Screenshot from 2025-11-05 18-47-07.png
│   │   ├── Screenshot from 2025-11-05 18-47-14.png
│   │   ├── Screenshot from 2025-11-05 18-49-10.png
│   │   ├── Screenshot from 2025-11-05 18-50-26.png
│   │   ├── Screenshot from 2025-11-05 18-52-00.png
│   │   ├── Screenshot from 2025-11-05 18-52-22.png
│   │   ├── Screenshot from 2025-11-05 18-52-59.png
│   │   ├── Screenshot from 2025-11-05 18-53-47.png
│   │   ├── Screenshot from 2025-11-05 18-54-44.png
│   │   ├── Screenshot from 2025-11-05 18-55-55.png
│   │   ├── Screenshot from 2025-11-05 18-56-09.png
│   │   ├── Screenshot from 2025-11-07 16-58-28.png
│   │   ├── Screenshot from 2025-11-07 16-59-14.png
│   │   ├── Screenshot from 2025-11-07 17-00-37.png
│   │   ├── Screenshot from 2025-11-07 17-01-04.png
│   │   ├── Screenshot from 2025-11-07 17-07-31.png
│   │   ├── Screenshot from 2025-11-07 17-07-39.png
│   │   ├── Screenshot from 2025-11-07 17-13-45.png
│   │   ├── Screenshot from 2025-11-07 17-15-57.png
│   │   ├── Screenshot from 2025-11-07 17-17-25.png
│   │   ├── Screenshot from 2025-11-07 17-19-12.png
│   │   ├── Screenshot from 2025-11-07 17-22-18.png
│   │   ├── Screenshot from 2025-11-07 17-23-27.png
│   │   ├── Screenshot from 2025-11-07 17-23-32.png
│   │   ├── Screenshot from 2025-11-07 17-28-54.png
│   │   ├── Screenshot from 2025-11-07 17-31-02.png
│   │   ├── Screenshot from 2025-11-07 17-33-12.png
│   │   ├── Screenshot from 2025-11-07 17-36-00.png
│   │   ├── Screenshot from 2025-11-07 17-37-06.png
│   │   ├── Screenshot from 2025-11-07 17-38-46.png
│   │   ├── Screenshot from 2025-11-07 17-40-47.png
│   │   ├── Screenshot from 2025-11-07 17-43-51.png
│   │   ├── Screenshot from 2025-11-07 17-45-33.png
│   │   ├── Screenshot from 2025-11-07 17-45-48.png
│   │   ├── Screenshot from 2025-11-07 17-47-24.png
│   │   ├── Screenshot from 2025-11-07 17-47-28.png
│   │   ├── Screenshot from 2025-11-07 17-47-40.png
│   │   ├── Screenshot from 2025-11-07 17-48-38.png
│   │   ├── Screenshot from 2025-11-07 17-49-20.png
│   │   ├── Screenshot from 2025-11-07 17-50-17.png
│   │   ├── Screenshot from 2025-11-07 17-50-51.png
│   │   ├── Screenshot from 2025-11-07 17-50-55.png
│   │   ├── Screenshot from 2025-11-07 17-51-19.png
│   │   ├── Screenshot from 2025-11-07 17-51-23.png
│   │   ├── Screenshot from 2025-11-07 17-51-27.png
│   │   ├── Screenshot from 2025-11-07 17-51-29.png
│   │   ├── Screenshot from 2025-11-07 17-51-47.png
│   │   ├── Screenshot from 2025-11-07 17-52-12.png
│   │   ├── Screenshot from 2025-11-07 17-52-20.png
│   │   ├── Screenshot from 2025-11-07 17-52-22.png
│   │   ├── Screenshot from 2025-11-07 17-53-13.png
│   │   ├── Screenshot from 2025-11-07 17-53-21.png
│   │   ├── Screenshot from 2025-11-07 17-53-24.png
│   │   ├── Screenshot from 2025-11-07 17-53-35.png
│   │   ├── Screenshot from 2025-11-07 17-53-51.png
│   │   ├── Screenshot from 2025-11-07 17-57-03.png
│   │   ├── Screenshot from 2025-11-07 18-01-01.png
│   │   ├── Screenshot from 2025-11-07 18-04-21.png
│   │   ├── Screenshot from 2025-11-07 18-04-28.png
│   │   ├── Screenshot from 2025-11-07 18-05-08.png
│   │   ├── Screenshot from 2025-11-07 18-05-18.png
│   │   ├── Screenshot from 2025-11-07 18-05-38.png
│   │   ├── Screenshot from 2025-11-07 18-05-49.png
│   │   ├── Screenshot from 2025-11-07 18-06-03.png
│   │   ├── Screenshot from 2025-11-07 18-07-46.png
│   │   ├── Screenshot from 2025-11-07 18-07-55.png
│   │   ├── Screenshot from 2025-11-07 18-08-22.png
│   │   ├── Screenshot from 2025-11-07 18-08-26.png
│   │   ├── Screenshot from 2025-11-07 18-08-27.png
│   │   ├── Screenshot from 2025-11-07 18-08-46.png
│   │   ├── Screenshot from 2025-11-07 18-09-44.png
│   │   ├── Screenshot from 2025-11-07 18-10-17.png
│   │   ├── Screenshot from 2025-11-07 18-10-52.png
│   │   ├── Screenshot from 2025-11-07 18-10-58.png
│   │   ├── Screenshot from 2025-11-07 18-11-01.png
│   │   ├── Screenshot from 2025-11-07 18-11-38.png
│   │   ├── Screenshot from 2025-11-07 18-11-48.png
│   │   ├── Screenshot from 2025-11-07 18-11-56.png
│   │   ├── Screenshot from 2025-11-07 18-12-25.png
│   │   ├── Screenshot from 2025-11-07 18-12-29.png
│   │   ├── Screenshot from 2025-11-07 18-12-43.png
│   │   ├── Screenshot from 2025-11-07 18-12-56.png
│   │   ├── Screenshot from 2025-11-07 18-13-11.png
│   │   ├── Screenshot from 2025-11-07 18-13-23.png
│   │   ├── Screenshot from 2025-11-07 18-14-31.png
│   │   ├── Screenshot from 2025-11-07 18-14-42.png
│   │   ├── Screenshot from 2025-11-07 18-14-51.png
│   │   ├── Screenshot from 2025-11-07 18-14-59.png
│   │   ├── Screenshot from 2025-11-07 18-23-31.png
│   │   ├── Screenshot from 2025-11-07 18-23-41.png
│   │   ├── Screenshot from 2025-11-07 18-27-05.png
│   │   ├── Screenshot from 2025-11-07 18-28-33.png
│   │   ├── Screenshot from 2025-11-07 18-29-46.png
│   │   ├── Screenshot from 2025-11-07 18-30-09.png
│   │   ├── Screenshot from 2025-11-07 18-31-31.png
│   │   ├── Screenshot from 2025-11-07 18-31-35.png
│   │   ├── Screenshot from 2025-11-07 18-31-39.png
│   │   ├── Screenshot from 2025-11-07 18-31-59.png
│   │   ├── Screenshot from 2025-11-07 18-32-28.png
│   │   ├── Screenshot from 2025-11-07 18-32-33.png
│   │   ├── Screenshot from 2025-11-07 18-32-57.png
│   │   ├── Screenshot from 2025-11-07 18-33-00.png
│   │   ├── Screenshot from 2025-11-07 18-33-07.png
│   │   ├── Screenshot from 2025-11-07 18-33-24.png
│   │   ├── Screenshot from 2025-11-07 18-34-24.png
│   │   ├── Screenshot from 2025-11-07 18-34-29.png
│   │   ├── Screenshot from 2025-11-07 18-35-22.png
│   │   ├── Screenshot from 2025-11-07 18-35-28.png
│   │   ├── Screenshot from 2025-11-07 18-35-56.png
│   │   ├── Screenshot from 2025-11-07 18-36-07.png
│   │   ├── Screenshot from 2025-11-07 18-36-15.png
│   │   ├── Screenshot from 2025-11-07 18-36-19.png
│   │   ├── Screenshot from 2025-11-07 18-36-49.png
│   │   ├── Screenshot from 2025-11-07 18-36-54.png
│   │   ├── Screenshot from 2025-11-07 18-36-59.png
│   │   ├── Screenshot from 2025-11-07 18-37-01.png
│   │   ├── Screenshot from 2025-11-07 18-37-22.png
│   │   ├── Screenshot from 2025-11-07 18-37-41.png
│   │   ├── Screenshot from 2025-11-07 18-38-04.png
│   │   ├── Screenshot from 2025-11-07 18-38-08.png
│   │   ├── Screenshot from 2025-11-07 18-38-10.png
│   │   ├── Screenshot from 2025-11-07 18-38-18.png
│   │   ├── Screenshot from 2025-11-07 18-38-21.png
│   │   ├── Screenshot from 2025-11-07 18-38-39.png
│   │   ├── Screenshot from 2025-11-07 18-39-33.png
│   │   ├── Screenshot from 2025-11-07 18-39-41.png
│   │   ├── Screenshot from 2025-11-07 18-39-53.png
│   │   ├── Screenshot from 2025-11-07 18-40-04.png
│   │   ├── Screenshot from 2025-11-07 18-40-09.png
│   │   ├── Screenshot from 2025-11-07 18-40-12.png
│   │   ├── Screenshot from 2025-11-07 18-40-22.png
│   │   ├── Screenshot from 2025-11-07 18-40-40.png
│   │   ├── Screenshot from 2025-11-07 18-40-49.png
│   │   ├── Screenshot from 2025-11-07 19-13-59.png
│   │   ├── Screenshot from 2025-11-07 19-14-29.png
│   │   ├── Screenshot from 2025-11-07 19-14-33.png
│   │   ├── Screenshot from 2025-11-07 19-15-40.png
│   │   ├── Screenshot from 2025-11-07 19-16-14.png
│   │   ├── Screenshot from 2025-11-07 19-16-56.png
│   │   ├── Screenshot from 2025-11-07 19-17-00.png
│   │   ├── Screenshot from 2025-11-07 19-17-47.png
│   │   ├── Screenshot from 2025-11-07 19-18-17.png
│   │   ├── Screenshot from 2025-11-07 19-18-23.png
│   │   ├── Screenshot from 2025-11-07 19-18-31.png
│   │   ├── Screenshot from 2025-11-07 19-19-06.png
│   │   ├── Screenshot from 2025-11-07 19-19-08.png
│   │   ├── Screenshot from 2025-11-07 19-19-22.png
│   │   ├── Screenshot from 2025-11-07 19-19-35.png
│   │   ├── Screenshot from 2025-11-07 19-19-49.png
│   │   ├── Screenshot from 2025-11-07 19-20-29.png
│   │   ├── Screenshot from 2025-11-07 19-20-33.png
│   │   ├── Screenshot from 2025-11-07 19-20-36.png
│   │   ├── Screenshot from 2025-11-07 19-20-58.png
│   │   └── Screenshot from 2025-11-07 19-22-11.png
│   └── SCREENSHOTS
│       ├── decoder
│       │   ├── Screenshot from 2025-07-31 16-22-12.png
│       │   ├── Screenshot from 2025-07-31 16-22-19.png
│       │   ├── Screenshot from 2025-07-31 17-33-28.png
│       │   └── Screenshot from 2025-07-31 17-33-41.png
│       ├── d ff
│       │   ├── Screenshot from 2025-07-30 12-59-19.png
│       │   └── Screenshot from 2025-07-30 12-59-26.png
│       ├── four_bitcounter
│       │   ├── LAB_1_4BIT_COUNTER.png
│       │   ├── lec_1.png
│       │   └── lec_2.png
│       ├── HA
│       │   ├── Screenshot from 2025-07-30 12-41-37.png
│       │   └── Screenshot from 2025-07-30 12-41-53.png
│       ├── lab_3_lec
│       │   ├── alu_tb.txt
│       │   ├── alu.txt
│       │   ├── Screenshot from 2025-09-09 16-38-19.png
│       │   ├── Screenshot from 2025-09-09 16-43-04.png
│       │   ├── Screenshot from 2025-09-09 16-48-32.png
│       │   ├── Screenshot from 2025-09-09 16-48-45.png
│       │   ├── Screenshot from 2025-09-09 17-41-47.png
│       │   ├── Screenshot from 2025-09-09 17-41-58.png
│       │   ├── Screenshot from 2025-09-09 17-53-00.png
│       │   ├── Screenshot from 2025-09-09 17-53-20.png
│       │   ├── Screenshot from 2025-09-09 17-55-55.png
│       │   ├── Screenshot from 2025-09-09 17-59-11.png
│       │   ├── Screenshot from 2025-09-09 18-01-52.png
│       │   ├── Screenshot from 2025-09-09 18-10-13.png
│       │   ├── Screenshot from 2025-09-09 18-11-48.png
│       │   └── simple_processor_gui_schematic.gif
│       ├── mux
│       │   ├── Screenshot from 2025-07-30 13-22-21.png
│       │   ├── Screenshot from 2025-07-30 13-22-30.png
│       │   ├── Screenshot from 2025-07-30 13-35-19.png
│       │   ├── Screenshot from 2025-07-30 13-35-35.png
│       │   ├── Screenshot from 2025-07-30 13-46-46.png
│       │   └── Screenshot from 2025-07-30 13-46-53.png
│       ├── Screenshot from 2025-07-21 08-52-38.png
│       ├── Screenshot from 2025-07-21 09-13-13.png
│       ├── Screenshot from 2025-07-21 09-13-42.png
│       ├── Screenshot from 2025-07-21 09-54-50.png
│       ├── Screenshot from 2025-07-28 11-02-22.png
│       ├── Screenshot from 2025-07-28 11-21-31.png
│       ├── Screenshot from 2025-07-28 11-26-01.png
│       ├── Screenshot from 2025-07-28 11-45-08.png
│       ├── Screenshot from 2025-07-28 11-48-59.png
│       ├── Screenshot from 2025-07-28 11-51-04.png
│       ├── Screenshot from 2025-07-29 16-30-48.png
│       ├── simple_processor
│       │   └── simple_processor_gui_schematic.gif
│       ├── sr ff
│       │   ├── Screenshot from 2025-07-30 12-57-07.png
│       │   └── Screenshot from 2025-07-30 12-57-15.png
│       ├── sync_fa
│       │   ├── Screenshot from 2025-07-30 12-51-01.png
│       │   ├── Screenshot from 2025-07-30 12-51-13.png
│       │   ├── Screenshot from 2025-07-30 12-54-14.png
│       │   ├── Screenshot from 2025-07-30 12-54-21.png
│       │   └── Screenshot from 2025-07-30 12-54-54.png
│       ├── SYNC_HA
│       │   ├── Screenshot from 2025-07-30 12-44-17.png
│       │   ├── Screenshot from 2025-07-30 12-44-30.png
│       │   ├── Screenshot from 2025-07-30 12-49-04.png
│       │   ├── Screenshot from 2025-07-30 12-49-12.png
│       │   └── Screenshot from 2025-07-30 12-52-14.png
│       └── Synthesis_Submissions_Exp_2
│           ├── counter_sdc.g
│           ├── four_bitcounter_generated_sdc.g
│           ├── four_bitcounter_netlist.v
│           ├── four_bitcounter_script.tcl
│           ├── screenshots
│           │   ├── gui_schematic_decoder.gif
│           │   ├── gui_schematic_d_ff.gif
│           │   ├── gui_schematic_four_bitcounter.gif
│           │   ├── gui_schematic_mux.gif
│           │   ├── gui_schematic_seq_det_0010.gif
│           │   ├── gui_schematic_sr_ff.gif
│           │   ├── gui_schematic_sync_FA.gif
│           │   ├── gui_schematic_sync_HA.gif
│           │   ├── Screenshot from 2025-08-11 12-43-09.png
│           │   ├── Screenshot from 2025-08-11 12-47-12.png
│           │   ├── Screenshot from 2025-08-11 12-51-49.png
│           │   ├── Screenshot from 2025-08-11 13-04-06.png
│           │   ├── Screenshot from 2025-08-11 13-09-14.png
│           │   ├── Screenshot from 2025-08-11 13-19-28.png
│           │   ├── Screenshot from 2025-08-11 13-25-54.png
│           │   ├── Screenshot from 2025-08-11 13-26-29.png
│           │   ├── Screenshot from 2025-08-11 13-26-55.png
│           │   ├── Screenshot from 2025-08-11 13-27-18.png
│           │   ├── Screenshot from 2025-08-11 13-28-10.png
│           │   ├── Screenshot from 2025-08-11 13-28-42.png
│           │   ├── Screenshot from 2025-08-11 13-29-11.png
│           │   └── Screenshot from 2025-08-11 13-29-48.png
│           └── screenshots.zip
├── file_structure.md
└── Reference
    ├── ASIC Layout_2  Digital Innovus.pdf
    └── Innovus_Steps.pdf

180 directories, 1691 files
