restart	

wave A B Cin Sum Cout
force A 0 0ns, 1 200ns -r 400ns
force B 0 0ns, 1 100ns -r 200ns
force Cin 0 0ns, 1 50ns -r 100ns
run 400ns