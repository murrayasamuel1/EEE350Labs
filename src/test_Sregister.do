restart

comp status_register.vhd

asim +access +r statusregister

#show the desired signals
wave clk reset loadSR F N Z

#apply appropriate forces to stimuli
--testing the counter after loading - ends test at 1050
force F "000" 0ns, "001" 200ns, "101" 400ns
force loadSR '0' 0 ns, '1' 49ns
force reset '0' 0ns, '1' 20ns, '0' 100ns

   
   
   
force clk 0 0ns,1 50ns,0 100ns,1 150ns,0 200ns,1 250ns,0 300ns,1 350ns,0 400ns,1 450ns,0 500ns,1 550ns,0 600ns,1 650ns,0 700ns,1 750ns,0 800ns,1 850ns,0 900ns,1 950ns,0 1000ns,1 1050ns,0 1100ns
--force -noreg -freeze CLK
--"\counter\TYPE\1\DIR\1\RADIX\10\START\0\INC\1\PERIOD\100 ns \ REV\0"

run 1150ns

endsim