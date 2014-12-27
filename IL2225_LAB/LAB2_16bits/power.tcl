read_file -format ddc {./db/main.ddc}
current_design FIR_Toplevel
elaborate FIR_Toplevel -lib WORK -update -param "width =16" -param "filter_taps=5"
set_wire_load_mode segmented
set_wire_load_model -name TSMC8K_Lowk_Conservative

read_saif -input ./saiffile5 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile5.rpt

read_saif -input ./saiffile500 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile500.rpt

read_saif -input ./saiffile5000 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile5000.rpt

read_saif -input ./saiffile50000 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile50000.rpt

set_wire_load_mode top
set_wire_load_model -name TSMC8K_Lowk_Conservative

read_saif -input ./saiffile500 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile500_WLM_Top.rpt

set_wire_load_mode enclosed
set_wire_load_model -name TSMC8K_Lowk_Conservative

read_saif -input ./saiffile500 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile500_WLM_enclosed.rpt
