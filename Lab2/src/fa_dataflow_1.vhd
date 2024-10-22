library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
	port (
    Cin : in std_logic;
      X : in std_logic;
      Y : in std_logic;
    Sum : out std_logic;
   Cout : out std_logic
	);
end FA;

architecture dataflow_1 of FA is
begin
	 Sum <= (x xor y) xor Cin; 
	Cout <= (X and Y) or (X and Cin) or (Y and Cin);
end dataflow_1;		

 