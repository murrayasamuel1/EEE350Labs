restart

comp counter.vhd

asim +access +r counter

#show the desired signals
wave D clk rst load count Q

#apply appropriate forces to stimuli
--testing the counter after loading - ends test at 1050
force D "000" 0ns
force rst 1 0ns
force load 0 0ns,1 100ns,0 101ns
force count 0 0ns,1 200ns, 0 250ns,1 300ns, 0 350ns,1 400ns, 0 450ns,1 500ns,0 550ns,1 600ns, 0 650ns,1 700ns, 0 750ns,1 800ns, 0 850ns,1 900ns, 0 950ns,1 1000ns
   
--reset test - ends test at 1100   
force rst 0 1060ns, 1 1080   
   
   
   
   
force clk 0 0ns,1 50ns,0 100ns,1 150ns,0 200ns,1 250ns,0 300ns,1 350ns,0 400ns,1 450ns,0 500ns,1 550ns,0 600ns,1 650ns,0 700ns,1 750ns,0 800ns,1 850ns,0 900ns,1 950ns,0 1000ns,1 1050ns,0 1100ns
--force -noreg -freeze CLK
--"\counter\TYPE\1\DIR\1\RADIX\10\START\0\INC\1\PERIOD\100 ns \ REV\0"

run 1150ns

endsim