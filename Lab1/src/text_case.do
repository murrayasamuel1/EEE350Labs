restart

comp combo_circuit.vhd

asim +access +r combo_logic

#show the desired signals
wave D Y S1 S2

#apply appropriate forces to stimuli
force D "0000" 40ns, "0001" 60ns, "0010" 80ns,"0011" 100ns, "0100" 120ns, "0101" 140ns, "0110" 160ns, "0111" 180ns, "1000" 200ns, "1001" 220ns, "1010" 240ns, "1011" 260ns, "1100" 280ns, "1101" 300ns, "1110" 320ns, "1111" 340ns    

run 400ns

endsim