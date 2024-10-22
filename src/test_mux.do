restart

comp mux41.vhd

asim +access +r mux

#show the desired signals
wave I0 I1 I2 I3 SourceSel Dout

#apply appropriate forces to stimuli
--testing the counter after loading - ends test at 1050
force I0 "00" 0ns
force I1 "01" 0ns
force I2 "10" 0ns
force I3 "11" 0ns
force SourceSel 00 0ns,01 100ns,10 200ns, 11 300ns
  
   
   
  

run 1150ns

endsim