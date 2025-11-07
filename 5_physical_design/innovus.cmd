#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Nov  5 17:53:03 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
save_global Default.globals
set init_gnd_net vss
set init_lef_file ../../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_design_settop 0
set init_verilog ../synthesis/register_file_generated_netlist_dft.v
set init_mmmc_file Default.view
set init_pwr_net vdd
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site tsm3site -r 1 0.699993 2.5 2.5 2.5 2.5
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd vss} -type core_rings -follow core -layer {top Metal5 bottom Metal5 left Metal6 right Metal6} -width {top 0.7 bottom 0.7 left 0.7 right 0.7} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.5 bottom 0.5 left 0.5 right 0.5} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {vdd vss} -layer Metal6 -direction vertical -width 0.7 -spacing 0.2 -set_to_set_distance 5 -start_from left -start_offset 1 -stop_offset 0 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal6 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal6 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { Metal1(1) Metal6(6) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal6(6) } -nets { vdd vss } -allowLayerChange 1 -targetViaLayerRange { Metal1(1) Metal6(6) }
setAnalysisMode -cppr both -clockGatingCheck true -timeBorrowing true -useOutputPinCap true -sequentialConstProp false -timingSelfLoopsNoSkew false -enableMultipleDriveNet true -clkSrcPath true -warn true -usefulSkew false -analysisType onChipVariation -log true
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
setPlaceMode -fp true
place_design
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp true
place_design
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
zoomBox 30.86600 34.68150 294.91600 162.34000
zoomBox -360.16200 -71.32150 463.51000 326.89400
zoomBox -1.69350 25.85350 308.95450 176.04050
zoomBox 145.78250 65.83250 245.36950 113.97900
zoomBox 184.49200 76.32550 228.68000 97.68900
zoomBox 102.05500 53.97800 264.22350 132.38050
zoomBox 171.41750 86.28950 232.58000 115.85950
zoomBox 197.57650 98.47550 220.64500 109.62850
zoomBox 187.62150 93.83800 225.18650 111.99950
zoomBox 132.94750 68.36700 250.13000 125.02050
zoomBox 32.05650 21.36700 296.15850 149.05050
zoomBox -81.89900 -31.72000 348.14750 176.19200
zoomBox -134.01450 -55.99800 371.92300 188.60450
zoomBox -206.81600 -92.56000 388.40550 195.20800
zoomBox -22.71250 0.11300 342.82850 176.83900
zoomBox -70.38550 -30.06550 359.66350 177.84750
zoomBox -126.47100 -65.56950 379.46900 179.03400
zoomOut
zoomBox -430.04550 -150.10400 666.58000 380.07450
zoomBox -346.76050 -113.01150 585.37150 337.64050
zoomBox -275.96800 -81.48300 516.34450 301.57150
zoomBox -215.79500 -54.68350 457.67150 270.91300
zoomBox -164.64700 -31.90400 407.79950 244.85300
ecoPlace
setPlaceMode -reset
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
zoomBox -93.84200 -40.92650 336.20700 166.98650
zoomBox -126.47100 -65.56950 379.46900 179.03400
zoomBox -5.46300 25.82150 219.02600 134.35400
zoomBox 48.22850 66.37150 147.83650 114.52850
zoomBox -22.49950 12.95450 241.61100 140.64250
zoomBox -93.85050 -40.93200 336.21100 166.98700
zoomBox 58.92800 71.71100 249.75000 163.96650
zoomBox 130.67500 107.77600 215.34450 148.71050
zoomBox 158.02800 121.52550 202.22700 142.89400
zoomBox 108.69150 96.72600 225.88550 153.38500
zoomBox 36.15900 60.26650 260.66700 168.80800
zoomBox -154.08850 -35.36500 351.89700 209.26050
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
viewLast
fit
saveDesign register_file
zoomBox -7.78800 64.68850 216.65400 173.19800
zoomBox -228.03800 -63.45650 472.08550 275.02750
zoomBox -7.79050 64.68700 216.65400 173.19800
zoomBox 56.93600 102.34650 141.58650 143.27200
zoomBox 75.67000 113.24650 119.85850 134.61000
zoomBox 32.30600 88.01700 170.14850 154.65900
zoomBox -73.09950 26.69100 292.38900 203.39150
zoomBox -352.57700 -135.91400 616.50750 332.60300
zoomBox -228.06200 -63.46900 472.10250 275.03500
fit
zoomBox -42.78350 92.89200 147.99200 185.12500
zoomBox -6.84450 132.11850 65.10800 166.90500
zoomBox 7.94100 148.25700 31.00800 159.40900
zoomBox 12.28600 152.99950 20.98600 157.20550
zoomBox 8.98550 149.39800 28.59550 158.87850
zoomBox -0.80950 138.70700 51.18500 163.84450
selectInst g15301__1881
zoomBox -10.24850 134.54000 61.71650 169.33250
zoomBox -23.31300 128.77250 76.29350 176.92850
zoomBox -31.62100 125.10500 85.56300 181.75900
zoomBox -62.66400 113.08800 99.52850 191.50200
zoomBox -82.40500 105.44600 108.40950 197.69800
zoomBox -132.95500 85.87850 131.14950 213.56350
fit
zoomBox 52.95750 65.36550 277.39950 173.87500
zoomBox 125.79000 94.52450 242.95100 151.16750
deselectAll
selectInst {registers_reg[0][14]}
zoomBox -11.03700 26.80950 299.61250 176.99700
zoomBox -373.82950 -152.73600 449.85000 245.48300
fit
deselectAll
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
zoomBox 76.95050 68.83200 267.72600 161.06500
zoomBox 148.23300 96.65600 232.88200 137.58050
zoomBox 76.94900 68.83150 267.72600 161.06500
zoomBox -40.38750 23.03100 325.08150 199.72200
fit
zoomBox 5.24100 44.72200 229.68300 153.23150
zoomBox 36.96300 57.08100 199.12200 135.47900
zoomBox 82.90650 74.98100 154.85900 109.76750
zoomBox 105.73100 83.87350 132.86850 96.99350
zoomBox 114.33850 87.22700 124.57550 92.17600
zoomBox 105.72850 83.87200 132.87100 96.99450
zoomBox 76.42950 72.45700 161.09750 113.39100
zoomBox 5.21200 44.70950 229.70850 153.24550
zoomBox -183.61900 -28.86100 411.62750 258.91900
fit
refinePlace -eco true
getCTSMode -engine -quiet
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix register_file_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix register_file_preCTS -outDir timingReports
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window
getCTSMode -engine -quiet
add_ndr -name 2w2s
getCTSMode -engine -quiet
getCTSMode -engine -quiet
create_route_type -name clkroute -non_default_rule 2w2s -bottom_preferred_layer Metal5 -top_preferred_layer Metal6
set_ccopt_property route_type clkroute -net_type trunk
set_ccopt_property route_type clkroute -net_type leaf
set_ccopt_property buffer_cells {CLKBUFX2 CLKBUFX4}
set_ccopt_property inverter_cells {CLKINVX2 CLKINVX4}
set_ccopt_property clock_gating_cells TLATNTSCA*
create_ccopt_clock_tree_spec -file ccopt.spec
ccopt_design -cts
saveDesign DBS/cts.enc
setNanoRouteMode -quiet -routeTopRoutingLayer 6
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
getFillerMode -quiet
addFiller -cell FILL1 FILL16 FILL2 FILL32 FILL4 FILL64 FILL8 -prefix FILLER
getFillerMode -quiet
addFiller -cell FILL1 FILL16 FILL2 FILL32 FILL4 FILL64 FILL8 -prefix FILLER -doDRC -fitGap
reset_parasitics
extractRC
rcOut -spef register_file.spef -rc_corner rccorner
saveNetlist register_file.v
saveDesign register_file
saveDesign register_file
streamOut register_file_PD -mapFile streamOut.map -libName DesignLib -units 2000 -mode ALL
setDrawView place
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView fplan
setLayerPreference pinblock -isVisible 1
setLayerPreference obsblock -isVisible 1
setLayerPreference obsblock -isSelectable 1
setLayerPreference pinblock -isSelectable 1
setLayerPreference pinother -isVisible 1
setLayerPreference pinother -isSelectable 1
setLayerPreference obsother -isVisible 1
setLayerPreference obsother -isSelectable 1
zoomBox 68.35500 80.76350 292.79800 189.27350
zoomBox -203.56800 -40.26450 391.53800 247.44750
zoomBox -735.67300 -269.52700 605.54600 378.90350
zoomBox -2324.65350 -914.17650 1231.54850 805.11800
zoomBox -905.46750 -338.41300 672.43900 424.44750
zoomBox -591.35100 -210.97600 548.68750 340.19100
zoomBox -136.39250 -26.39950 369.45050 218.15700
zoomBox 89.62750 65.29650 280.40650 157.53100
zoomBox 159.87100 85.09200 259.45950 133.23950
zoomBox 75.25450 57.68700 299.70350 166.20000
zoomBox 130.87600 76.90450 268.71600 143.54500
zoomBox 144.15450 81.49200 261.31850 138.13650
zoomBox 115.25350 71.50650 277.42000 149.90800
zoomBox 96.87500 65.15650 287.65900 157.39350
zoomBox 75.25300 57.68550 299.70500 166.20000
zoomBox 49.81450 48.89650 313.87700 176.56100
zoomBox 76.03800 56.97050 300.49150 165.48550
zoomBox 98.32750 63.83350 289.11350 156.07150
zoomBox 147.06700 78.84050 264.23450 135.48650
zoomBox 190.21900 92.00900 242.20750 117.14350
zoomBox 201.05800 94.70650 238.62050 112.86650
zoomBox 211.95250 97.41650 235.02100 108.56950
zoomBox 174.87800 88.33100 246.83950 123.12200
zoomBox 84.76000 66.24800 275.56800 158.49650
zoomBox -221.88100 -8.89300 373.32300 278.86650
zoomBox -51.14500 53.55050 259.55550 203.76300
zoomBox -248.88450 -40.63750 451.35750 297.90400
setPlaceMode -fp true
place_design
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design -noPrePlaceOpt -incremental
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setMultiCpuUsage -localCpu 1 -cpuPerRemoteHost 4 -remoteHost 0 -keepLicense true
setDistributeHost -local
setMultiCpuUsage -localCpu 4 -cpuPerRemoteHost 4 -remoteHost 0 -keepLicense true
setDistributeHost -local
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design -noPrePlaceOpt
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
