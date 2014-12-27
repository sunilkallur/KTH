####### Set Global Libraries ######### 
source /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/synopsys_dc.setup
####### Set Directary ######### 
set LIB typical 

set SYNDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR 
set SRCDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE 
set SCRDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SCRIPTS 
set RPTDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/REPORTS 
set SYNDB  /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/db 
######Enviroment############ 
define_design_lib WORK -path $SYNDIR/WORK 
######Read Design########### 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/misc.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/myPackage.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/FSM.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/ShiftRegister.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/coefRom.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/MAC.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/ArithUnit.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/ParallelFIR/SOURCE/TopFIR.vhd} 

#analyze -library WORK -format vhdl { $SRCDIR/misc.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/myPackage.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/FSM.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/ShiftRegister.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/coefRom.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/MAC.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/ArithUnit.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/TopFIR.vhd} 
######Elaborate Design########### 
elaborate Top_Parallel_FIR -lib WORK 
########Set Constraints############# 
set_wire_load_mode top 
set_wire_load_selection_group WireAreaLowkCon 
set_operating_conditions -library tcbn90gtc NCCOM 
create_clock -name "clk" -period 2.5 -waveform {0 1.25}  {clk} 
set_false_path -setup -reset_path  -from { rst_n } 
set_false_path -hold -reset_path  -from { rst_n } 
#######Compile Option############ 
compile -map_effort medium 
#######Report#################### 
##Constaints ##
report_constraints > $RPTDIR/constraint_Parallel_FIR_rep
##Cells ##
report_cell >> $RPTDIR/cell_Parallel_FIR.rep
##Area##
report_area >> $RPTDIR/area_Parallel_FIR.rpt 
##Timing##
report_timing >> $RPTDIR/timing_Parallel_FIR.rpt 
##Power##
report_power -analysis_effort low >> $RPTDIR/power_Parallel_FIR.rep

#######Save Design#################### 
write -hierarchy ‐format -output $SYNDB/main.ddc 
write -format verilog -hier -o $SYNDB/main.v 
write_sdf -version 2.1 $SYNDB/main.sdf 
