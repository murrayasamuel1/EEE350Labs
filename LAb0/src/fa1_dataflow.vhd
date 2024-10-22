 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
	port (
		A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		Sum : out std_logic;
		Cout : out std_logic
	);
end FA;

architecture dataflow_1 of FA is
begin
	Sum <= A xor B xor Cin;
	Cout <= (A and B) or (A and Cin) or (B and Cin);
end dataflow_1;