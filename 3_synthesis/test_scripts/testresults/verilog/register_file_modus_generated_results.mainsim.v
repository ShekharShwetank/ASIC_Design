//***************************************************************************//
//                           VERILOG MAINSIM FILE                            //
//Cadence(R) Modus(TM) DFT Software Solution, Version 20.12-s002_1, built Feb//
//***************************************************************************//
//                                                                           //
//  FILE CREATED..............November 05, 2025 at 17:31:56                  //
//                                                                           //
//  PROJECT NAME..............test_scripts                                   //
//                                                                           //
//  TESTMODE..................FULLSCAN                                       //
//                                                                           //
//  INEXPERIMENT..............logic                                          //
//                                                                           //
//  TDR.......................dummy.tdr                                      //
//                                                                           //
//  TEST PERIOD...............80.000   TEST TIME UNITS...........ns          //
//  TEST PULSE WIDTH..........8.000                                          //
//  TEST STROBE OFFSET........72.000   TEST STROBE TYPE..........edge        //
//  TEST BIDI OFFSET..........0.000                                          //
//  TEST PI OFFSET............0.000    X VALUE...................X           //
//                                                                           //
//  SCAN FORMAT...............serial   SCAN OVERLAP..............yes         //
//  SCAN PERIOD...............80.000   SCAN TIME UNITS...........ns          //
//  SCAN PULSE WIDTH..........8.000                                          //
//  SCAN STROBE OFFSET........8.000    SCAN STROBE TYPE..........edge        //
//  SCAN BIDI OFFSET..........0.000                                          //
//  SCAN PI OFFSET............0.000    X VALUE...................X           //
//                                                                           //
//                                                                           //
//   Individually set PIs                                                    //
//  "clk" (PI # 11)                                                          //
//  TEST OFFSET...............8.000    PULSE WIDTH...............8.000       //
//  SCAN OFFSET...............16.000   PULSE WIDTH...............8.000       //
//                                                                           //
//  "rst_n" (PI # 44)                                                        //
//  TEST OFFSET...............8.000    PULSE WIDTH...............8.000       //
//  SCAN OFFSET...............0.000                                          //
//                                                                           //
//  Active TESTMODEs TM = 1 ..FULLSCAN                                       //
//                                                                           //
//***************************************************************************//

  `timescale 1 ns / 1 ps

  module test_scripts_FULLSCAN_logic ;

//***************************************************************************//
//                DEFINE VARIABLES FOR ALL PRIMARY I/O PORTS                 //
//***************************************************************************//

  reg [1:46] stim_PIs;   
  reg [1:46] part_PIs;   

  reg [1:46] stim_CIs;   

  reg [1:65] meas_POs;   
  wire [1:65] part_POs;   

//***************************************************************************//
//                   DEFINE VARIABLES FOR ALL SHIFT CHAINS                   //
//***************************************************************************//

  reg [1:256] stim_CR_1;   

  reg [1:256] meas_OR_1;   


//***************************************************************************//
//                             OTHER DEFINITIONS                             //
//***************************************************************************//

  integer  CYCLE, SCANCYCLE, SERIALCYCLE, PInum, POnum, ORnum, MODENUM, EXPNUM, SCANOPNUM, SEQNUM, TASKNUM, START, NUM_SHIFTS, MultiShift, maxMultiShifts, MultiShiftsLeft, forcePointStart, forcePoint, SCANNUM ; 
  integer  CMD, DATAID, SAVEID, TID, num_files, rc_read, repeat_depth, repeat_heart, repeat_num, MAX, FAILSETID, DIAG_DATAID; 
  integer  test_num, test_num_prev, failed_test_num, num_tests, num_failed_tests, total_num_tests, total_num_failed_tests, total_cycles, scan_num, overlap; 
  integer  num_repeats [1:15]; 
  reg      [1:8185] name_POs [1:65]; 
  reg      [130:0] good_compares, miscompares, miscompare_limit, total_good_compares, total_miscompares, measure_current; 
  reg      [63:0] start_of_repeat [1:15]; 
  reg      [63:0] start_of_current_line, fseek_offset; 
  reg      [130:0] line_number, save_line_number; 
  reg      sim_trace, sim_heart, sim_range, failset, global_term, sim_debug, sim_more_debug, diag_debug; 
  reg      [1:800] PATTERN, pattern, TESTFILE, INITFILE, SOD, EOD, eventID, DIAG_DEBUG_FILE; 
  reg      [1:8184] DATAFILE, SAVEFILE, COMMENT, FAILSET; 
  reg      [1:4096] PROCESSNAME; 

//***************************************************************************//
//        INSTANTIATE THE STRUCTURE AND CONNECT TO VERILOG VARIABLES         //
//***************************************************************************//

  register_file
    register_file_inst (
      .clk      ( part_PIs[011] ),      // pinName = clk;  tf = -ES  ; testOffset = 8.000000;  scanOffset = 16.000000;  
      .rst_n    ( part_PIs[044] ),      // pinName = rst_n;  tf = +SC  ; testOffset = 8.000000;  scanOffset = 0.000000;  
      .addr_a   ({part_PIs[004]  ,      // pinName = addr_a[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[003]  ,      // pinName = addr_a[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[002]}),      // pinName = addr_a[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      .data_a   ({part_POs[025]  ,      // pinName = data_a[31]; 
                  part_POs[024]  ,      // pinName = data_a[30]; 
                  part_POs[022]  ,      // pinName = data_a[29]; 
                  part_POs[021]  ,      // pinName = data_a[28]; 
                  part_POs[020]  ,      // pinName = data_a[27]; 
                  part_POs[019]  ,      // pinName = data_a[26]; 
                  part_POs[018]  ,      // pinName = data_a[25]; 
                  part_POs[017]  ,      // pinName = data_a[24]; 
                  part_POs[016]  ,      // pinName = data_a[23]; 
                  part_POs[015]  ,      // pinName = data_a[22]; 
                  part_POs[014]  ,      // pinName = data_a[21]; 
                  part_POs[013]  ,      // pinName = data_a[20]; 
                  part_POs[011]  ,      // pinName = data_a[19]; 
                  part_POs[010]  ,      // pinName = data_a[18]; 
                  part_POs[009]  ,      // pinName = data_a[17]; 
                  part_POs[008]  ,      // pinName = data_a[16]; 
                  part_POs[007]  ,      // pinName = data_a[15]; 
                  part_POs[006]  ,      // pinName = data_a[14]; 
                  part_POs[005]  ,      // pinName = data_a[13]; 
                  part_POs[004]  ,      // pinName = data_a[12]; 
                  part_POs[003]  ,      // pinName = data_a[11]; 
                  part_POs[002]  ,      // pinName = data_a[10]; 
                  part_POs[032]  ,      // pinName = data_a[9]; 
                  part_POs[031]  ,      // pinName = data_a[8]; 
                  part_POs[030]  ,      // pinName = data_a[7]; 
                  part_POs[029]  ,      // pinName = data_a[6]; 
                  part_POs[028]  ,      // pinName = data_a[5]; 
                  part_POs[027]  ,      // pinName = data_a[4]; 
                  part_POs[026]  ,      // pinName = data_a[3]; 
                  part_POs[023]  ,      // pinName = data_a[2]; 
                  part_POs[012]  ,      // pinName = data_a[1]; 
                  part_POs[001]}),      // pinName = data_a[0]; 
      .addr_b   ({part_PIs[007]  ,      // pinName = addr_b[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[006]  ,      // pinName = addr_b[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[005]}),      // pinName = addr_b[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      .data_b   ({part_POs[057]  ,      // pinName = data_b[31]; 
                  part_POs[056]  ,      // pinName = data_b[30]; 
                  part_POs[054]  ,      // pinName = data_b[29]; 
                  part_POs[053]  ,      // pinName = data_b[28]; 
                  part_POs[052]  ,      // pinName = data_b[27]; 
                  part_POs[051]  ,      // pinName = data_b[26]; 
                  part_POs[050]  ,      // pinName = data_b[25]; 
                  part_POs[049]  ,      // pinName = data_b[24]; 
                  part_POs[048]  ,      // pinName = data_b[23]; 
                  part_POs[047]  ,      // pinName = data_b[22]; 
                  part_POs[046]  ,      // pinName = data_b[21]; 
                  part_POs[045]  ,      // pinName = data_b[20]; 
                  part_POs[043]  ,      // pinName = data_b[19]; 
                  part_POs[042]  ,      // pinName = data_b[18]; 
                  part_POs[041]  ,      // pinName = data_b[17]; 
                  part_POs[040]  ,      // pinName = data_b[16]; 
                  part_POs[039]  ,      // pinName = data_b[15]; 
                  part_POs[038]  ,      // pinName = data_b[14]; 
                  part_POs[037]  ,      // pinName = data_b[13]; 
                  part_POs[036]  ,      // pinName = data_b[12]; 
                  part_POs[035]  ,      // pinName = data_b[11]; 
                  part_POs[034]  ,      // pinName = data_b[10]; 
                  part_POs[064]  ,      // pinName = data_b[9]; 
                  part_POs[063]  ,      // pinName = data_b[8]; 
                  part_POs[062]  ,      // pinName = data_b[7]; 
                  part_POs[061]  ,      // pinName = data_b[6]; 
                  part_POs[060]  ,      // pinName = data_b[5]; 
                  part_POs[059]  ,      // pinName = data_b[4]; 
                  part_POs[058]  ,      // pinName = data_b[3]; 
                  part_POs[055]  ,      // pinName = data_b[2]; 
                  part_POs[044]  ,      // pinName = data_b[1]; 
                  part_POs[033]}),      // pinName = data_b[0]; 
      .we_w     ( part_PIs[046] ),      // pinName = we_w; testOffset = 0.000000;  scanOffset = 0.000000;  
      .addr_w   ({part_PIs[010]  ,      // pinName = addr_w[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[009]  ,      // pinName = addr_w[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[008]}),      // pinName = addr_w[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      .data_w   ({part_PIs[036]  ,      // pinName = data_w[31]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[035]  ,      // pinName = data_w[30]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[033]  ,      // pinName = data_w[29]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[032]  ,      // pinName = data_w[28]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[031]  ,      // pinName = data_w[27]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[030]  ,      // pinName = data_w[26]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[029]  ,      // pinName = data_w[25]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[028]  ,      // pinName = data_w[24]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[027]  ,      // pinName = data_w[23]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[026]  ,      // pinName = data_w[22]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[025]  ,      // pinName = data_w[21]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[024]  ,      // pinName = data_w[20]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[022]  ,      // pinName = data_w[19]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[021]  ,      // pinName = data_w[18]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[020]  ,      // pinName = data_w[17]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[019]  ,      // pinName = data_w[16]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[018]  ,      // pinName = data_w[15]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[017]  ,      // pinName = data_w[14]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[016]  ,      // pinName = data_w[13]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[015]  ,      // pinName = data_w[12]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[014]  ,      // pinName = data_w[11]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[013]  ,      // pinName = data_w[10]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[043]  ,      // pinName = data_w[9]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[042]  ,      // pinName = data_w[8]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[041]  ,      // pinName = data_w[7]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[040]  ,      // pinName = data_w[6]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[039]  ,      // pinName = data_w[5]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[038]  ,      // pinName = data_w[4]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[037]  ,      // pinName = data_w[3]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[034]  ,      // pinName = data_w[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[023]  ,      // pinName = data_w[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
                  part_PIs[012]}),      // pinName = data_w[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      .SE       ( part_PIs[001] ),      // pinName = SE;  tf = +SE  ; testOffset = 0.000000;  scanOffset = 0.000000;  
      .scan_in  ( part_PIs[045] ),      // pinName = scan_in;  tf =  SI  ; testOffset = 0.000000;  scanOffset = 0.000000;  
      .scan_out ( part_POs[065] )     // pinName = scan_out;  tf =  SO  ; 
      );

//***************************************************************************//
//                        MAKE SOME OTHER CONNECTIONS                        //
//***************************************************************************//

  assign ( weak0, weak1 ) // Termination 
    part_POs [1] = global_term,     // pinName = data_a[0]; 
    part_POs [2] = global_term,     // pinName = data_a[10]; 
    part_POs [3] = global_term,     // pinName = data_a[11]; 
    part_POs [4] = global_term,     // pinName = data_a[12]; 
    part_POs [5] = global_term,     // pinName = data_a[13]; 
    part_POs [6] = global_term,     // pinName = data_a[14]; 
    part_POs [7] = global_term,     // pinName = data_a[15]; 
    part_POs [8] = global_term,     // pinName = data_a[16]; 
    part_POs [9] = global_term,     // pinName = data_a[17]; 
    part_POs [10] = global_term,     // pinName = data_a[18]; 
    part_POs [11] = global_term,     // pinName = data_a[19]; 
    part_POs [12] = global_term,     // pinName = data_a[1]; 
    part_POs [13] = global_term,     // pinName = data_a[20]; 
    part_POs [14] = global_term,     // pinName = data_a[21]; 
    part_POs [15] = global_term,     // pinName = data_a[22]; 
    part_POs [16] = global_term,     // pinName = data_a[23]; 
    part_POs [17] = global_term,     // pinName = data_a[24]; 
    part_POs [18] = global_term,     // pinName = data_a[25]; 
    part_POs [19] = global_term,     // pinName = data_a[26]; 
    part_POs [20] = global_term,     // pinName = data_a[27]; 
    part_POs [21] = global_term,     // pinName = data_a[28]; 
    part_POs [22] = global_term,     // pinName = data_a[29]; 
    part_POs [23] = global_term,     // pinName = data_a[2]; 
    part_POs [24] = global_term,     // pinName = data_a[30]; 
    part_POs [25] = global_term,     // pinName = data_a[31]; 
    part_POs [26] = global_term,     // pinName = data_a[3]; 
    part_POs [27] = global_term,     // pinName = data_a[4]; 
    part_POs [28] = global_term,     // pinName = data_a[5]; 
    part_POs [29] = global_term,     // pinName = data_a[6]; 
    part_POs [30] = global_term,     // pinName = data_a[7]; 
    part_POs [31] = global_term,     // pinName = data_a[8]; 
    part_POs [32] = global_term,     // pinName = data_a[9]; 
    part_POs [33] = global_term,     // pinName = data_b[0]; 
    part_POs [34] = global_term,     // pinName = data_b[10]; 
    part_POs [35] = global_term,     // pinName = data_b[11]; 
    part_POs [36] = global_term,     // pinName = data_b[12]; 
    part_POs [37] = global_term,     // pinName = data_b[13]; 
    part_POs [38] = global_term,     // pinName = data_b[14]; 
    part_POs [39] = global_term,     // pinName = data_b[15]; 
    part_POs [40] = global_term,     // pinName = data_b[16]; 
    part_POs [41] = global_term,     // pinName = data_b[17]; 
    part_POs [42] = global_term,     // pinName = data_b[18]; 
    part_POs [43] = global_term,     // pinName = data_b[19]; 
    part_POs [44] = global_term,     // pinName = data_b[1]; 
    part_POs [45] = global_term,     // pinName = data_b[20]; 
    part_POs [46] = global_term,     // pinName = data_b[21]; 
    part_POs [47] = global_term,     // pinName = data_b[22]; 
    part_POs [48] = global_term,     // pinName = data_b[23]; 
    part_POs [49] = global_term,     // pinName = data_b[24]; 
    part_POs [50] = global_term,     // pinName = data_b[25]; 
    part_POs [51] = global_term,     // pinName = data_b[26]; 
    part_POs [52] = global_term,     // pinName = data_b[27]; 
    part_POs [53] = global_term,     // pinName = data_b[28]; 
    part_POs [54] = global_term,     // pinName = data_b[29]; 
    part_POs [55] = global_term,     // pinName = data_b[2]; 
    part_POs [56] = global_term,     // pinName = data_b[30]; 
    part_POs [57] = global_term,     // pinName = data_b[31]; 
    part_POs [58] = global_term,     // pinName = data_b[3]; 
    part_POs [59] = global_term,     // pinName = data_b[4]; 
    part_POs [60] = global_term,     // pinName = data_b[5]; 
    part_POs [61] = global_term,     // pinName = data_b[6]; 
    part_POs [62] = global_term,     // pinName = data_b[7]; 
    part_POs [63] = global_term,     // pinName = data_b[8]; 
    part_POs [64] = global_term,     // pinName = data_b[9]; 
    part_POs [65] = global_term;      // pinName = scan_out;  tf =  SO  ; 

//***************************************************************************//
//                     OPEN THE FILE AND RUN SIMULATION                      //
//***************************************************************************//

  initial 
    begin 

      $timeformat ( -12, 2, " ps", 10 ); 

      `ifdef sdf_annotate 
        `ifdef SDF_Minimum 
          $sdf_annotate ("default.sdf",register_file_inst,,"sdf_Min.log","MINIMUM");
        `endif 
        `ifdef SDF_Maximum 
          $sdf_annotate ("default.sdf",register_file_inst,,"sdf_Max.log","MAXIMUM");
        `endif 
        `ifdef SDF_Typical
          $sdf_annotate ("default.sdf",register_file_inst,,"sdf_Typ.log","TYPICAL");
        `endif 
      `endif 

      `ifndef NOT_NC 
        if ( $test$plusargs ( "simvision" ) )  begin 
          $shm_open("simvision.shm"); 
          $shm_probe("AC"); 
        end  
      `endif 

      if ( $test$plusargs ( "vcd" ) )  begin 
        $dumpfile("out.vcd"); 
        $dumpvars(0,test_scripts_FULLSCAN_logic ); 
      end  

      DATAFILE = 0; 
      sim_setup; 

      `ifdef MISCOMPAREDEBUG 
        diag_debug = 1'b0; 
        if ( $value$plusargs ( "MISCOMPAREDEBUGFILE=%s", DIAG_DEBUG_FILE )) begin 
          DIAG_DATAID = $fopen ( DIAG_DEBUG_FILE, "r" ); 
          if ( DIAG_DATAID ) begin 
            diag_debug = 1'b1; 
            $fclose ( DIAG_DATAID ); 
          end  
          else $display ( "\nERROR (TVE-951): Failed to open the file: Diagnostic 'MISCOMPAREDEBUGFILE' %0s. \n", DIAG_DEBUG_FILE ); 
        end  
      `endif  

      num_files = 0; 
      for ( TID = 1; TID <= 99; TID = TID + 1 ) begin 
        $sformat ( TESTFILE, "TESTFILE%0d=%s", TID, "%s" ); 
        if ( $value$plusargs ( TESTFILE, DATAFILE )) begin 
          DATAID = $fopen ( DATAFILE, "r" ); 
          if ( DATAID )  begin 
            sim_vector_file; 
            num_files = num_files + 1; 
          end  
          else $display ( "\nERROR (TVE-951): Failed to open the file: %0s. \n", DATAFILE ); 
        end  
      end  

      if ( FAILSETID )  $fclose ( FAILSETID ); 

      if ( DATAFILE )  begin
        $display ( "\nINFO (TVE-209): Cumulative Results: " ); 
        $display ( "                      Number of Files Simulated:  %0d ", num_files ); 
        $display ( "                      Total Number of Cycles:     %0d ", total_cycles ); 
        $display ( "                      Total Number of Tests:      %0d ", total_num_tests ); 
        $display ( "                        - Total Passed Tests:     %0d ", total_num_tests - total_num_failed_tests ); 
        $display ( "                        - Total Failed Tests:     %0d ", total_num_failed_tests ); 
        $display ( "                      Total Number of Compares:   %0.0f ", total_good_compares + total_miscompares ); 
        $display ( "                        - Total Good Compares:    %0.0f ", total_good_compares ); 
        $display ( "                        - Total Miscompares:      %0.0f \n", total_miscompares ); 
      end  
      else $display ( "\nWARNING (TVE-661): No input data files found. The data file must be specified using +TESTFILE1=<string>, +TESTFILE2=<string>, ... The +TESTFILEn=<string> keyword is an NC-Sim command. \n" ); 

      $finish; 

    end  

//***************************************************************************//
//                     DEFINE SIMULATION SETUP PROCEDURE                     //
//***************************************************************************//

  task sim_setup; 
    begin 

      total_good_compares = 0; 
      total_miscompares = 0; 
      miscompare_limit = 0; 
      total_num_tests = 0; 
      total_num_failed_tests = 0; 
      total_cycles = 0; 
      SOD = ""; 
      EOD = ""; 
      START = 0; 
      NUM_SHIFTS = 0; 
      MAX = 1; 

      sim_heart = 1'b0; 
      sim_range = 1'b1; 
      sim_trace = 1'b0; 
      sim_debug = 1'b0; 
      sim_more_debug = 1'b0; 

      global_term = 1'bZ; 

      failset = 1'b0; 
      FAILSETID = 0; 

      CYCLE = 0; 
      SCANCYCLE = 0; 
      SERIALCYCLE = 0; 
      SEQNUM = 0; 
      name_POs [1] = "data_a[0]";      // pinName = data_a[0]; 
      name_POs [2] = "data_a[10]";      // pinName = data_a[10]; 
      name_POs [3] = "data_a[11]";      // pinName = data_a[11]; 
      name_POs [4] = "data_a[12]";      // pinName = data_a[12]; 
      name_POs [5] = "data_a[13]";      // pinName = data_a[13]; 
      name_POs [6] = "data_a[14]";      // pinName = data_a[14]; 
      name_POs [7] = "data_a[15]";      // pinName = data_a[15]; 
      name_POs [8] = "data_a[16]";      // pinName = data_a[16]; 
      name_POs [9] = "data_a[17]";      // pinName = data_a[17]; 
      name_POs [10] = "data_a[18]";      // pinName = data_a[18]; 
      name_POs [11] = "data_a[19]";      // pinName = data_a[19]; 
      name_POs [12] = "data_a[1]";      // pinName = data_a[1]; 
      name_POs [13] = "data_a[20]";      // pinName = data_a[20]; 
      name_POs [14] = "data_a[21]";      // pinName = data_a[21]; 
      name_POs [15] = "data_a[22]";      // pinName = data_a[22]; 
      name_POs [16] = "data_a[23]";      // pinName = data_a[23]; 
      name_POs [17] = "data_a[24]";      // pinName = data_a[24]; 
      name_POs [18] = "data_a[25]";      // pinName = data_a[25]; 
      name_POs [19] = "data_a[26]";      // pinName = data_a[26]; 
      name_POs [20] = "data_a[27]";      // pinName = data_a[27]; 
      name_POs [21] = "data_a[28]";      // pinName = data_a[28]; 
      name_POs [22] = "data_a[29]";      // pinName = data_a[29]; 
      name_POs [23] = "data_a[2]";      // pinName = data_a[2]; 
      name_POs [24] = "data_a[30]";      // pinName = data_a[30]; 
      name_POs [25] = "data_a[31]";      // pinName = data_a[31]; 
      name_POs [26] = "data_a[3]";      // pinName = data_a[3]; 
      name_POs [27] = "data_a[4]";      // pinName = data_a[4]; 
      name_POs [28] = "data_a[5]";      // pinName = data_a[5]; 
      name_POs [29] = "data_a[6]";      // pinName = data_a[6]; 
      name_POs [30] = "data_a[7]";      // pinName = data_a[7]; 
      name_POs [31] = "data_a[8]";      // pinName = data_a[8]; 
      name_POs [32] = "data_a[9]";      // pinName = data_a[9]; 
      name_POs [33] = "data_b[0]";      // pinName = data_b[0]; 
      name_POs [34] = "data_b[10]";      // pinName = data_b[10]; 
      name_POs [35] = "data_b[11]";      // pinName = data_b[11]; 
      name_POs [36] = "data_b[12]";      // pinName = data_b[12]; 
      name_POs [37] = "data_b[13]";      // pinName = data_b[13]; 
      name_POs [38] = "data_b[14]";      // pinName = data_b[14]; 
      name_POs [39] = "data_b[15]";      // pinName = data_b[15]; 
      name_POs [40] = "data_b[16]";      // pinName = data_b[16]; 
      name_POs [41] = "data_b[17]";      // pinName = data_b[17]; 
      name_POs [42] = "data_b[18]";      // pinName = data_b[18]; 
      name_POs [43] = "data_b[19]";      // pinName = data_b[19]; 
      name_POs [44] = "data_b[1]";      // pinName = data_b[1]; 
      name_POs [45] = "data_b[20]";      // pinName = data_b[20]; 
      name_POs [46] = "data_b[21]";      // pinName = data_b[21]; 
      name_POs [47] = "data_b[22]";      // pinName = data_b[22]; 
      name_POs [48] = "data_b[23]";      // pinName = data_b[23]; 
      name_POs [49] = "data_b[24]";      // pinName = data_b[24]; 
      name_POs [50] = "data_b[25]";      // pinName = data_b[25]; 
      name_POs [51] = "data_b[26]";      // pinName = data_b[26]; 
      name_POs [52] = "data_b[27]";      // pinName = data_b[27]; 
      name_POs [53] = "data_b[28]";      // pinName = data_b[28]; 
      name_POs [54] = "data_b[29]";      // pinName = data_b[29]; 
      name_POs [55] = "data_b[2]";      // pinName = data_b[2]; 
      name_POs [56] = "data_b[30]";      // pinName = data_b[30]; 
      name_POs [57] = "data_b[31]";      // pinName = data_b[31]; 
      name_POs [58] = "data_b[3]";      // pinName = data_b[3]; 
      name_POs [59] = "data_b[4]";      // pinName = data_b[4]; 
      name_POs [60] = "data_b[5]";      // pinName = data_b[5]; 
      name_POs [61] = "data_b[6]";      // pinName = data_b[6]; 
      name_POs [62] = "data_b[7]";      // pinName = data_b[7]; 
      name_POs [63] = "data_b[8]";      // pinName = data_b[8]; 
      name_POs [64] = "data_b[9]";      // pinName = data_b[9]; 
      name_POs [65] = "scan_out";      // pinName = scan_out;  tf =  SO  ; 



      if ( $test$plusargs ( "MODUS_DEBUG" ) )  sim_trace = 1'b1; 

      if ( $test$plusargs ( "HEARTBEAT" ) )  sim_heart = 1'b1; 

      if ( $value$plusargs ( "START_RANGE=%s", SOD ) )  sim_range = 1'b0; 

      if ( $value$plusargs ( "END_RANGE=%s", EOD ) ); 

      if ( $value$plusargs ( "miscompare_limit=%0f", miscompare_limit ) ); 

      if ( $test$plusargs ( "FAILSET" ) )  failset = 1'b1; 

      stim_PIs = {46{1'bX}};   
      stim_CIs = 46'bXXXXXXXXXX0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XX; 
      meas_POs = {65{1'bX}};   
      stim_CR_1 = {256{1'b0}};   
      meas_OR_1 = {256{1'bX}};   

    end  
  endtask  

//***************************************************************************//
//                          FAILSET SETUP PROCEDURE                          //
//***************************************************************************//

  task failset_setup; 
    begin 

      $sformat ( FAILSET, "%0s_FAILSET", DATAFILE ); 
      FAILSETID = $fopen ( FAILSET, "w" ); 
      if ( ! FAILSETID ) 
        $display ( "\nERROR (TVE-951): Failed to open the file: %0s. \n", FAILSET ); 

    end  
  endtask 

//***************************************************************************//
//                           SET UP FOR SIMULATION                           //
//***************************************************************************//

  task sim_vector_file; 
    begin 

      CYCLE = 0; 
      SCANCYCLE = 0; 
      SERIALCYCLE = 0; 
      good_compares = 0; 
      miscompares = 0; 
      measure_current = 0; 
      test_num = 0; 
      test_num_prev = 0; 
      failed_test_num = 0; 
      num_tests = 0; 
      num_failed_tests = 0; 
      scan_num = 0; 
      overlap = 0; 
      repeat_depth = 0; 
      repeat_heart = 1000; 


      $display ( "\nINFO (TVE-200): Simulating vector file: %0s ", DATAFILE ); 

      $display ( "\nINFO (TVE-189): Design:  register_file   Test Mode:  FULLSCAN   InExperiment:  logic " ); 
      start_of_current_line = $ftell ( DATAID ); 
      line_number = 1; 
      rc_read = $fscanf ( DATAID, "%d", CMD ); 
      while ( rc_read > 0 ) begin 

        cmd_code; 

        if ( rc_read > 0 )  begin 
          if ( sim_range )  begin 
            if (( miscompare_limit > 0 ) & ( miscompares > miscompare_limit ))  begin 
              sim_range = 1'b0; 
              if ( overlap )  num_tests = num_tests - 1; 
              $display ( "\nINFO (TVE-207): The miscompare limit (+miscompare_limit) of %0.0f has been reached. ", miscompare_limit ); 
            end  
            if ( EOD == pattern )  begin 
              sim_range = 1'b0; 
            end  
          end  
          start_of_current_line = $ftell ( DATAID ); 
          rc_read = $fscanf ( DATAID, "%d", CMD ); 
          if ( rc_read <= 0 )  begin 
            rc_read = $fgets ( COMMENT, DATAID ); 
            if ( rc_read > 0 )  bad_cmd_code; 
            else  line_number = 0; 
          end  
        end  
      end  

      if ( line_number == 0 )  begin
        $display ( "\nINFO (TVE-201): Simulation complete on vector file: %0s ", DATAFILE ); 
        $display ( "\nINFO (TVE-210): Results for vector file: %0s ", DATAFILE ); 
        $display ( "                      Number of Cycles:           %0d ", CYCLE ); 
        $display ( "                      Number of Tests:            %0d ", num_tests ); 
        $display ( "                        - Passed Tests:           %0d ", num_tests - num_failed_tests ); 
        $display ( "                        - Failed Tests:           %0d ", num_failed_tests ); 
        $display ( "                      Number of Compares:         %0.0f ", good_compares + miscompares ); 
        $display ( "                        - Good Compares:          %0.0f ", good_compares ); 
        $display ( "                        - Miscompares:            %0.0f ", miscompares ); 
        $display ( "                      Time:                       %t \n", $time ); 
      end  

      $fclose ( DATAID ); 

      total_good_compares = total_good_compares + good_compares; 

      total_miscompares = total_miscompares + miscompares; 

      total_num_tests = total_num_tests + num_tests; 

      total_num_failed_tests = total_num_failed_tests + num_failed_tests; 

      total_cycles = total_cycles + CYCLE; 

    end  
  endtask  

//***************************************************************************//
//                           DEFINE TEST PROCEDURE                           //
//***************************************************************************//

  task test_cycle; 
    begin 

      CYCLE = CYCLE + 1; 
      SERIALCYCLE = SERIALCYCLE + 1; 
     #0.000000;        // 0.000000 ns;  From the start of the cycle.
      part_PIs [1] = stim_PIs [1];      // pinName = SE;  tf = +SE  ; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [2] = stim_PIs [2];      // pinName = addr_a[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [3] = stim_PIs [3];      // pinName = addr_a[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [4] = stim_PIs [4];      // pinName = addr_a[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [5] = stim_PIs [5];      // pinName = addr_b[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [6] = stim_PIs [6];      // pinName = addr_b[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [7] = stim_PIs [7];      // pinName = addr_b[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [8] = stim_PIs [8];      // pinName = addr_w[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [9] = stim_PIs [9];      // pinName = addr_w[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [10] = stim_PIs [10];      // pinName = addr_w[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [12] = stim_PIs [12];      // pinName = data_w[0]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [13] = stim_PIs [13];      // pinName = data_w[10]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [14] = stim_PIs [14];      // pinName = data_w[11]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [15] = stim_PIs [15];      // pinName = data_w[12]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [16] = stim_PIs [16];      // pinName = data_w[13]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [17] = stim_PIs [17];      // pinName = data_w[14]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [18] = stim_PIs [18];      // pinName = data_w[15]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [19] = stim_PIs [19];      // pinName = data_w[16]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [20] = stim_PIs [20];      // pinName = data_w[17]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [21] = stim_PIs [21];      // pinName = data_w[18]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [22] = stim_PIs [22];      // pinName = data_w[19]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [23] = stim_PIs [23];      // pinName = data_w[1]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [24] = stim_PIs [24];      // pinName = data_w[20]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [25] = stim_PIs [25];      // pinName = data_w[21]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [26] = stim_PIs [26];      // pinName = data_w[22]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [27] = stim_PIs [27];      // pinName = data_w[23]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [28] = stim_PIs [28];      // pinName = data_w[24]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [29] = stim_PIs [29];      // pinName = data_w[25]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [30] = stim_PIs [30];      // pinName = data_w[26]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [31] = stim_PIs [31];      // pinName = data_w[27]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [32] = stim_PIs [32];      // pinName = data_w[28]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [33] = stim_PIs [33];      // pinName = data_w[29]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [34] = stim_PIs [34];      // pinName = data_w[2]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [35] = stim_PIs [35];      // pinName = data_w[30]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [36] = stim_PIs [36];      // pinName = data_w[31]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [37] = stim_PIs [37];      // pinName = data_w[3]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [38] = stim_PIs [38];      // pinName = data_w[4]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [39] = stim_PIs [39];      // pinName = data_w[5]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [40] = stim_PIs [40];      // pinName = data_w[6]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [41] = stim_PIs [41];      // pinName = data_w[7]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [42] = stim_PIs [42];      // pinName = data_w[8]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [43] = stim_PIs [43];      // pinName = data_w[9]; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [45] = stim_PIs [45];      // pinName = scan_in;  tf =  SI  ; testOffset = 0.000000;  scanOffset = 0.000000;  
      part_PIs [46] = stim_PIs [46];      // pinName = we_w; testOffset = 0.000000;  scanOffset = 0.000000;  
     #8.000000;        // 8.000000 ns;  From the start of the cycle.
      part_PIs [11] = stim_PIs [11];      // pinName = clk;  tf = -ES  ; testOffset = 8.000000;  scanOffset = 16.000000;  
      part_PIs [44] = stim_PIs [44];      // pinName = rst_n;  tf = +SC  ; testOffset = 8.000000;  scanOffset = 0.000000;  
     #8.000000;        // 16.000000 ns;  From the start of the cycle.
      part_PIs [11] = stim_CIs [11];      // pinName = clk;  tf = -ES  ; testOffset = 8.000000;  scanOffset = 16.000000;  
      part_PIs [44] = stim_CIs [44];      // pinName = rst_n;  tf = +SC  ; testOffset = 8.000000;  scanOffset = 0.000000;  
     #56.000000;        // 72.000000 ns;  From the start of the cycle.

      for ( POnum = 1; POnum <= 65; POnum = POnum + 1 ) begin 
        if (( part_POs [ POnum ] !== meas_POs [ POnum ] ) & ( meas_POs [ POnum ] !== 1'bX )) begin 
          if ( test_num != failed_test_num )  begin 
            num_failed_tests = num_failed_tests + 1; 
            failed_test_num = test_num; 
          end  
          miscompares = miscompares + 1; 
          $display ( "\nWARNING (TVE-650): PO miscompare at Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t ", test_num, PATTERN, CYCLE, $time ); 
          $display ( "           Expected: %0b   Simulated: %0b   On PO: %0s   ", meas_POs [ POnum ], part_POs [ POnum ], name_POs [ POnum ] ); 

          if (( failset ) & ( FAILSETID == 0 ))  failset_setup; 
          if ( FAILSETID ) begin 
            $fdisplay ( FAILSETID, " Chip %0s pad %0s pattern %0s position %0d value %0b ", "register_file", name_POs [ POnum ], PATTERN, -1, part_POs [ POnum ] ); 
          end  
        end  
        else if ( meas_POs [ POnum ] !== 1'bX )  good_compares = good_compares + 1; 
      end  
     #8.000000;        // 80.000000 ns;  From the start of the cycle.
      meas_POs = {65{1'bX}}; 

    end  
  endtask  

//***************************************************************************//
//                       DEFINE SCAN PRECOND PROCEDURE                       //
//***************************************************************************//

  task Scan_Preconditioning_Sequence_TM_1_SEQ_1_SOP_1; 
    begin 

      PROCESSNAME = "SCAN PRECONDITIONING (Scan_Preconditioning_Sequence)";
      stim_PIs [1] = 1'b1;      // pinName = SE;  tf = +SE  ; testOffset = 0.000000;  scanOffset = 0.000000;  

      test_cycle; 
      PROCESSNAME = "";
      PROCESSNAME = "";

    end  
  endtask  

//***************************************************************************//
//                      DEFINE SCAN SEQUENCE PROCEDURE                       //
//***************************************************************************//

  task Scan_Sequence_TM_1_SEQ_2_SOP_1; 
    begin 

      PROCESSNAME = "SCAN SEQUENCE (Scan_Sequence)";
      if ( overlap )  test_num = test_num - 1; 
      START = 0; 
      for ( SCANCYCLE = 1; SCANCYCLE <= MAX; SCANCYCLE = SCANCYCLE + 1 ) begin 
        CYCLE = CYCLE + 1; 
        SERIALCYCLE = SERIALCYCLE + 1; 
     #0.000000;        // 0.000000 ns;  From the start of the cycle.
        part_PIs [45] = stim_CR_1 [ 0 + SCANCYCLE ];      // pinName = scan_in;  tf =  SI  ; testOffset = 0.000000;  scanOffset = 0.000000;  
     #8.000000;        // 8.000000 ns;  From the start of the cycle.

        if (( part_POs [65] !== meas_OR_1 [ 0 + SCANCYCLE ] ) & ( meas_OR_1 [ 0 + SCANCYCLE ] !== 1'bX )) begin      // pinName = scan_out;  tf =  SO  ; 
          if ( test_num != failed_test_num )  begin 
            num_failed_tests = num_failed_tests + 1; 
            failed_test_num = test_num; 
          end  
          miscompares = miscompares + 1; 
          $display ( "\nWARNING (TVE-660): Serial scan miscompare at Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t ", test_num, PATTERN, CYCLE, $time ); 
          $display ( "           Expected: %0b   Simulated: %0b   Observe Register (OR) = 1;   Measured on Scan Cycle: %0d   Measured at SO: %0s   ", meas_OR_1 [ 0 + SCANCYCLE ], part_POs [65], SCANCYCLE, name_POs [65] ); 

          if (( failset ) & ( FAILSETID == 0 ))  failset_setup; 
          if ( FAILSETID ) begin 
            $fdisplay ( FAILSETID, " Chip %0s pad %0s pattern %0s position %0d value %0b ", "register_file", name_POs [65], PATTERN, SCANCYCLE, part_POs [65] ); 
          end  
        end  
        else  begin 
          if ( meas_OR_1 [ 0 + SCANCYCLE ] !== 1'bX )  begin 
            good_compares = good_compares + 1;
          end 
        end 
     #8.000000;        // 16.000000 ns;  From the start of the cycle.
        part_PIs [11] = 1'b1;      // pinName = clk;  tf = -ES  ; testOffset = 8.000000;  scanOffset = 16.000000;  
     #8.000000;        // 24.000000 ns;  From the start of the cycle.
        part_PIs [11] = 1'b0;      // pinName = clk;  tf = -ES  ; testOffset = 8.000000;  scanOffset = 16.000000;  
     #56.000000;        // 80.000000 ns;  From the start of the cycle.
      end  
      meas_OR_1 = {256{1'bX}};   
      stim_CR_1 = {256{1'b0}};   
      stim_PIs = part_PIs; 
      SCANCYCLE = 0; 
      NUM_SHIFTS = 0; 
      if ( overlap )  test_num = test_num + 1; 
      PROCESSNAME = "";

    end  
  endtask  

//***************************************************************************//
//                 READ COMMANDS AND DATA AND RUN SIMULATION                 //
//***************************************************************************//

  task cmd_code; 
    begin 

      if ( sim_trace )  $display ( "\nCommand code:  %0d ", CMD ); 

      case ( CMD ) 

        000: begin 
          rc_read = 0;  // This will stop execution 
          line_number = line_number + 1; 
        end  

        100: begin 
          rc_read = $fgets ( COMMENT, DATAID ); 
          if ( rc_read > 0 )  begin 
          end  
          else  begin 
            $display ( "\nERROR (TVE-998): Unrecognizable data at line %0.0f in file: %0s \n", line_number, DATAFILE ); 
            $display ( "  Command code = %0d, Unrecognized data = %0s \n", CMD, COMMENT ); 
          end  
          line_number = line_number + 1; 
        end  

        104: begin 
          rc_read = $fgets ( PROCESSNAME, DATAID ); 
          if ( rc_read > 0 )  begin 
          end  
          else  begin 
            $display ( "\nERROR (TVE-998): Unrecognizable data at line %0.0f in file: %0s \n", line_number, DATAFILE ); 
            $display ( "  Command code = %0d, Unrecognized data = %0s \n", CMD, PROCESSNAME ); 
          end  
          line_number = line_number + 1; 
        end  

        110: begin 
          rc_read = $fgets ( COMMENT, DATAID ); 
          if ( rc_read > 0 )  begin 
            $display ( "\n %0s ", COMMENT ); 
          end  
          else  begin 
            $display ( "\nERROR (TVE-998): Unrecognizable data at line %0.0f in file: %0s \n", line_number, DATAFILE ); 
            $display ( "  Command code = %0d, Unrecognized data = %0s \n", CMD, COMMENT ); 
          end  
          line_number = line_number + 1; 
        end  

        151: begin 
          test_num_prev = test_num; 
          rc_read = $fscanf ( DATAID, "%d", test_num ); 
          if ( rc_read > 0 )  begin 
            if (( test_num != test_num_prev ) && ( sim_range ))  num_tests = num_tests + 1; 
          end  
          else  bad_cmd_code; 

          rc_read = $fscanf ( DATAID, "%d", scan_num ); 
          if ( rc_read > 0 )  begin 
          end  
          else  bad_cmd_code; 

          rc_read = $fscanf ( DATAID, "%d", overlap ); 
          if ( rc_read > 0 )  begin 
          end  
          else  bad_cmd_code; 

          line_number = line_number + 1; 
        end  

        200: begin 
          if ( rc_read > 0 )  begin 
            rc_read = $fscanf ( DATAID, "%b", stim_PIs [1:46] ); 
            if ( rc_read <= 0 )  bad_cmd_code; 
            line_number = line_number + 1; 
          end  
        end  

        201: begin 
          if ( rc_read > 0 )  begin 
            rc_read = $fscanf ( DATAID, "%b", stim_CIs [1:46] ); 
            if ( rc_read <= 0 )  bad_cmd_code; 
            line_number = line_number + 1; 
          end  
        end  

        202: begin 
          if ( rc_read > 0 )  begin 
            rc_read = $fscanf ( DATAID, "%b", meas_POs [1:65] ); 
            if ( rc_read <= 0 )  bad_cmd_code; 
            line_number = line_number + 1; 
          end  
        end  

        203: begin 
          rc_read = $fscanf ( DATAID, "%b", global_term ); 
          if ( rc_read > 0 )  begin 
          end  
          else  bad_cmd_code; 
          line_number = line_number + 1; 
        end  

        300: begin 
          rc_read = $fscanf ( DATAID, "%d", MODENUM ); 
          if ( rc_read <= 0 )  bad_cmd_code; 
          else  begin 

            case ( MODENUM ) 

              1: begin 
                rc_read = $fscanf ( DATAID, "%d", SCANNUM ); 
                if ( rc_read <= 0 )  bad_cmd_code; 
                else  begin 

                  case ( SCANNUM ) 

                    1: begin 

                      if ( rc_read > 0 )  begin 
                        rc_read = $fscanf ( DATAID, "%b", stim_CR_1 [1:256] ); 
                        if ( rc_read <= 0 )  bad_cmd_code; 
                        line_number = line_number + 1; 
                      end  
                    end  

                  endcase  
                end  
              end  

            endcase  
          end  
        end  

        301: begin 
          rc_read = $fscanf ( DATAID, "%d", MODENUM ); 
          if ( rc_read <= 0 )  bad_cmd_code; 
          else  begin 

            case ( MODENUM ) 

              1: begin 
                rc_read = $fscanf ( DATAID, "%d", SCANNUM ); 
                if ( rc_read <= 0 )  bad_cmd_code; 
                else  begin 

                  case ( SCANNUM ) 

                    1: begin 

                      if ( rc_read > 0 )  begin 
                        rc_read = $fscanf ( DATAID, "%b", meas_OR_1 [1:256] ); 
                        if ( rc_read <= 0 )  bad_cmd_code; 
                        line_number = line_number + 1; 
                      end  
                    end  

                  endcase  
                end  
              end  

            endcase  
          end  
        end  

        400: begin 
          if ( sim_range )  test_cycle; 
          line_number = line_number + 1; 
        end  

        500: begin 
          repeat_depth = repeat_depth + 1; 
          rc_read = $fscanf ( DATAID, "%d", num_repeats [repeat_depth] ); 
          if ( rc_read > 0 )  begin 
            start_of_repeat[repeat_depth] = $ftell ( DATAID ); 
          end  
          else  bad_cmd_code; 
          if ((sim_range & sim_heart) && repeat_heart) 
            $display ( "\nINFO (TVE-202): Simulating Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t  Tests Passed %0d of %0d, Failed %0d.  Start of %0d cycles of a repeat loop.", test_num, pattern, CYCLE + 1, $time, num_tests - num_failed_tests, num_tests, num_failed_tests, num_repeats [repeat_depth] ); 
          line_number = line_number + 1; 
        end  

        501: begin 
          num_repeats [repeat_depth] = num_repeats [repeat_depth] - 1; 
          if ( num_repeats [repeat_depth] )  begin 
            if ((sim_range & sim_heart) && repeat_heart && (num_repeats [repeat_depth] % repeat_heart == 0 )) 
              $display ( "\nINFO (TVE-202): Simulating Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t  Tests Passed %0d of %0d, Failed %0d.  Number of cycles remaining in this repeat loop is %0d.", test_num, pattern, CYCLE + 1, $time, num_tests - num_failed_tests, num_tests, num_failed_tests, num_repeats [repeat_depth] ); 
            rc_read = $fseek ( DATAID, start_of_repeat [repeat_depth], 0 ); 
            rc_read = 1; 
            fseek_offset = $ftell ( DATAID ); 
            if ( fseek_offset != start_of_repeat [repeat_depth] )  begin 
              $display ( "\nERROR (TVE-956): A Verilog simulator limitation in the fseek routine has been reached.  The size of the Verilog Data file is so big that it can not support branching using fseek in the Verilog simulator.  Any branching after 9,223,372,036,854,775,807 (0x7fffffffffffffff) bytes of data will not run correctly under the Verilog simulator.  It is recommended that you break up the Verilog Data file using the keyword maxvectorsperfile.  The Verilog Data file:  %0s  \n", DATAFILE ); 
              rc_read = 0;  // This will stop execution 
            end  
          end  
          else  repeat_depth = repeat_depth - 1; 
          line_number = line_number + 1; 
        end  

        600: begin 
          rc_read = $fscanf ( DATAID, "%d", MODENUM ); 
          if ( rc_read <= 0 )  bad_cmd_code; 
          else  begin 

            case ( MODENUM ) 

              1: begin 
                rc_read = $fscanf ( DATAID, "%d", SEQNUM ); 
                if ( rc_read <= 0 )  bad_cmd_code; 
                else  begin 

                  case ( SEQNUM ) 

                    1: begin 
                      rc_read = $fscanf ( DATAID, "%d", MAX ); 
                      if ( rc_read > 0 )  begin 
                        if ( sim_range )  Scan_Preconditioning_Sequence_TM_1_SEQ_1_SOP_1; 
                      end  
                      else  bad_cmd_code; 
                      line_number = line_number + 1; 
                    end  

                    2: begin 
                      rc_read = $fscanf ( DATAID, "%d", MAX ); 
                      if ( rc_read > 0 )  begin 
                        if ( sim_range )  Scan_Sequence_TM_1_SEQ_2_SOP_1; 
                      end  
                      else  bad_cmd_code; 
                      line_number = line_number + 1; 
                    end  

                  endcase  
                end  
              end 

            endcase  
          end  
        end  

        900: begin 
          rc_read = $fscanf ( DATAID, "%s", pattern ); 
          if ( rc_read > 0 )  begin 
            if ( SOD == pattern )  begin 
              sim_range = 1'b1; 
            end  
            if (( sim_range ) & ( scan_num > 0 ))  begin 
              if ( overlap )  $display ( "\nINFO (TVE-211): Simulating Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t  Relative Scan: %0d  Overlap Tests %0d and %0d.  Tests Passed %0d of %0d, Failed %0d. ", test_num - 1, pattern, CYCLE + 1, $time, scan_num, test_num - 1, test_num, num_tests - num_failed_tests - 1, num_tests - 1, num_failed_tests ); 
              else  $display ( "\nINFO (TVE-211): Simulating Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t  Relative Scan: %0d  Tests Passed %0d of %0d, Failed %0d. ", test_num, pattern, CYCLE + 1, $time, scan_num, num_tests - num_failed_tests, num_tests, num_failed_tests ); 
              scan_num = 0; 
            end  
            else if ( sim_range & sim_heart )  begin 
              $display ( "\nINFO (TVE-202): Simulating Test: %0d  Odometer: %0s  Relative Cycle: %0d  Time: %0t  Tests Passed %0d of %0d, Failed %0d. ", test_num, pattern, CYCLE + 1, $time, num_tests - num_failed_tests, num_tests, num_failed_tests ); 
            end  
          end  
          else  bad_cmd_code; 
          line_number = line_number + 1; 
        end  

        901: begin 
          rc_read = $fscanf ( DATAID, "%s", PATTERN ); 
          if ( rc_read > 0 )  begin 
          end  
          else  bad_cmd_code; 
          line_number = line_number + 1; 
        end  

        903: begin 
          measure_current = measure_current + 1; 
          line_number = line_number + 1; 
        end  

        904: begin 
          rc_read = $fscanf ( DATAID, "%s", eventID ); 
          if ( rc_read > 0 )  begin 
            `ifdef MISCOMPAREDEBUG 
              if ( diag_debug ) begin 
                $processSimulationDebugFile ( DIAG_DEBUG_FILE, "register_file_inst", eventID ); 
              end 
            `endif 
          end  
          else  bad_cmd_code; 
          line_number = line_number + 1; 
        end  

        905: begin 
          rc_read = $fscanf ( DATAID, "%s", eventID ); 
          if ( rc_read > 0 )  begin 
            `ifdef MISCOMPAREDEBUG 
              if ( diag_debug ) begin 
                $processSimulationDebugFile ( DIAG_DEBUG_FILE, "register_file_inst", eventID ); 
              end 
            `endif 
          end  
          else  bad_cmd_code; 
          line_number = line_number + 1; 
        end  


        default: begin 
          bad_cmd_code; 
          rc_read = 0;  // This will stop execution 
          line_number = line_number + 1; 
        end  

      endcase  

    end  
  endtask  

//***************************************************************************//
//                          PRINT BAD CMD CODE DATA                          //
//***************************************************************************//

  task bad_cmd_code; 
    begin 

      $display ( "\nERROR (TVE-998): Unrecognizable data at line %0.0f in file: %0s \n", line_number, DATAFILE ); 
      start_of_current_line = $ftell ( DATAID ); 
      rc_read = $fgets ( COMMENT, DATAID ); 
      $display ( "  Command code = %0d, Unrecognized data = %0s \n", CMD, COMMENT ); 
      rc_read = 0;  // This will stop execution 

    end  
  endtask  

  endmodule 
