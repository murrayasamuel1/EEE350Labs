SetActiveLib -work
comp -include "$dsn\src\fa_dataflow_1.vhd" 
comp -include "$dsn\src\TestBench\fa_TB.vhd" 
asim +access +r TESTBENCH_FOR_fa 
wave 
wave -noreg Cin
wave -noreg X
wave -noreg Y
wave -noreg Sum
wave -noreg Cout  
wave -noreg vectors
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\fa_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_fa 
