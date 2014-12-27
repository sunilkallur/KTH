read_file -format ddc {./db/main.ddc}
current_design FIR_Toplevel
elaborate FIR_Toplevel -lib WORK -update -param "width =4" -param "filter_taps=5"
set_wire_load_mode segmented
set_wire_load_model -name TSMC8K_Lowk_Conservative

read_saif -input ./saiffile1 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile1.rpt

read_saif -input ./saiffile10 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile10.rpt

read_saif -input ./saiffile20 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile20.rpt

read_saif -input ./saiffile50 -instance_name tb_fir/u1
report_power > ./REPORTS/saiffile50.rpt
