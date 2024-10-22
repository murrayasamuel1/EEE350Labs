library IEEE;																								   
use IEEE.STD_LOGIC_1164.ALL;

entity combo_logic is
	port (
	D: in std_logic_vector(3 downto 0);
	Y : out std_logic
	);
end combo_logic;									 


architecture arch1 of combo_logic is
	signal S1: std_logic;  --internal signal
	signal S2: std_logic;  -- internal signal
begin		
	process(D) 
		variable signal_one: std_logic;
		variable signal_two: std_logic;
		variable wheye: std_logic;
	begin
		signal_one := S1;
		signal_two := S2;
		signal_one:=not ( D(3) and D(2) );
		S1 <= signal_one after 4ns;
		signal_two:=not ( D(0) or D(1) );
		S2 <= signal_two after 3ns;
		wheye := (signal_one and not(signal_two)) or (not(signal_one) and signal_two);
		Y <= wheye after 10ns; 
	end process;
end	arch1;



