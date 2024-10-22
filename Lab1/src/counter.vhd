library IEEE;
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.numeric_std.all;

entity counter is 
	port(
	D: in STD_logic_vector(2 downto 0);
	clk : in std_logic;
	rst : in std_logic;
	load : in std_logic;
	count : in std_logic;		 
	Q : inout STD_logic_vector(2 downto 0)
	);
end counter;

architecture arch1 of counter is  
signal oneorsmt : 	STD_logic_vector(2 downto 0) := "001"; 
begin  	 
	
	process(D, rst, load, count) 
	begin 
		if (rst = '0') then
			Q <= "000";
		elsif falling_edge(clk) then
			
			if (count = '1')	then
				Q <= STD_logic_vector(unsigned(Q) + unsigned(oneorsmt));
			elsif (load = '1') then
				Q <= D;
			elsif (count = '0') then
				
			else
				Q <= "XXX";
			end if;
		end if;
	end process;  
end arch1;	