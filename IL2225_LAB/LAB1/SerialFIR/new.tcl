####### Set Global Libraries ######### 
source /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/synopsys_dc.setup
####### Set Directary ######### 
set LIB typical 

set SYNDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR
set SRCDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE 
set SCRDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SCRIPTS 
set RPTDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/REPORTS 
set SYNDB  /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/db 
######Enviroment############ 
define_design_lib WORK -path $SYNDIR/WORK 
######Read Design########### 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/misc.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/myPackage.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/FSM.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/DelayLine.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/coefRom.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/MAC.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/ArithUnit.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB1/SerialFIR/SOURCE/TopFIR.vhd} 

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
report_constraints > $RPTDIR/constraint_SerialFIR.rep
##Cells ##
report_cell >> $RPTDIR/cell_SerialFIR.rep
##Area##
report_area >> $RPTDIR/area_SerialFIR.rpt 
##Timing##
report_timing >> $RPTDIR/timing_SearialFIR.rpt 
##Power##
report_power -analysis_effort low >> $RPTDIR/power_SerialFIR.rep

#######Save Design#################### 
write -hierarchy ‐format -output $SYNDB/main.ddc 
write -format verilog -hier -o $SYNDB/main.v 
write_sdf -version 2.1 $SYNDB/main.sdf 
