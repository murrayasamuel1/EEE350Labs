restart

comp ALU.vhd

asim +access +r ALU

#show the desired signals
wave F A B OPsel

#apply appropriate forces to stimuli
--testing the counter after loading - ends test at 1050
force A "001" 0ns
force B "011" 0ns
force OPsel 0 0ns, 1 50ns, 2 100ns, 3 150ns, 4 200ns, 5 250ns, 6 300ns, 7 350ns
   

run 1150ns

endsim