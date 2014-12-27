####### Set Global Libraries ######### 
source /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/synopsys_dc.setup
####### Set Directary ######### 
set LIB typical 

set SYNDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR
set SRCDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE 
set SCRDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SCRIPTS 
set RPTDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/REPORTS 
set SYNDB  /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/db 
######Enviroment############ 
define_design_lib WORK -path $SYNDIR/WORK 
######Read Design########### 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/misc.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/myPackage.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/FSM.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/DelayLine.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/coefRom.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/MAC.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/ArithUnit.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/PartiallyParallelFIR/SOURCE/TopFIR.vhd} 

#analyze -library WORK -format vhdl { $SRCDIR/misc.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/myPackage.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/FSM.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/ShiftRegister.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/coefRom.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/MAC.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/ArithUnit.vhd} 
#analyze ‐library WORK ‐format vhdl {$SRCDIR/TopFIR.vhd} 
######Elaborate Design########### 
elaborate TOP_SERIAL_FIR -lib WORK 
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
report_constraints > $RPTDIR/constraint_PartiallyParallelFIR.rep
##Cells ##
report_cell >> $RPTDIR/cell_PartiallyParallelFIR.rep
##Area##
report_area >> $RPTDIR/area_PartiallyParallelFIR.rpt 
##Timing##
report_timing >> $RPTDIR/timing_PartiallyParallelFIR.rpt 
##Power##
report_power -analysis_effort low >> $RPTDIR/power_PartiallyParallelFIR.rep

#######Save Design#################### 
write -hierarchy ‐format -output $SYNDB/main.ddc 
write -format verilog -hier -o $SYNDB/main.v 
write_sdf -version 2.1 $SYNDB/main.sdf 
