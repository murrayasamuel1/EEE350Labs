library ieee;
use ieee.std_logic_1164.all;

entity coding_bugs is
   port (in3 : in std_logic_vector(2 downto 0);
         F: out std_logic_vector(1 downto 0)  );
end coding_bugs;

architecture dataflow of coding_bugs is
begin
   with in3 select F <= 
   		"10" when "000",
        "10" when "001",
        "10" when "011",
        "01" when "100",
        "10" when "101",
        "10" when "110",
        "01" when "111",
		"XX" when others;
end dataflow;

					