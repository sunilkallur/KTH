####### Set Global Libraries ######### 
source /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/synopsys_dc.setup
####### Set Directary ######### 
set LIB typical 

set SYNDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits
set SRCDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE 
set SCRDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SCRIPTS 
set RPTDIR /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/REPORTS 
set SYNDB  /afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/db 
######Enviroment############ 
define_design_lib WORK -path $SYNDIR/WORK 
######Read Design########### 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE/mics.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE/DelayLine_CB.vhd}
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE/FIR_Processor.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE/FIR_Toplevel.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE/ROM_Process.vhd} 
analyze -library WORK -format vhdl {/afs/kth.se/home/s/u/sunilkr/IL2225_LAB/LAB2_16bits/SOURCE/SRAM.vhd} 

######Elaborate Design########### 
elaborate FIR_Toplevel -lib WORK 
########Set Constraints############# 
set_wire_load_mode top 
set_wire_load_selection_group WireAreaLowkCon 
set_operating_conditions -library tcbn90gtc NCCOM 
create_clock -name "clk" -period 5 -waveform {0 2.5}  {clk} 
set_false_path -setup -reset_path  -from { rst_n } 
set_false_path -hold -reset_path  -from { rst_n } 
#######Compile Option############ 
compile -map_effort medium 
#######Report#################### 
##Constaints ##
report_constraints > $RPTDIR/constraint_FIR_rep
##Cells ##
report_cell >> $RPTDIR/cell_FIR.rep
##Area##
report_area >> $RPTDIR/area_FIR.rpt 
##Timing##
report_timing >> $RPTDIR/timing_FIR.rpt 
##Power##
report_power -analysis_effort low >> $RPTDIR/power_FIR.rep

#######Save Design#################### 
write -hierarchy -format ddc -output ./db/main.ddc
write -format verilog -hier -o $SYNDB/main.v 
write_sdf -version 2.1 $SYNDB/main.sdf 
