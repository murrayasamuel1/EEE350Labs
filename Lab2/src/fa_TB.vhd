library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

	-- Add your library and packages declaration here ...

entity fa_tb is
end fa_tb;

architecture TB_ARCHITECTURE of fa_tb is
	-- Component declaration of the tested unit
	component fa
	port(
		Cin : in STD_LOGIC;
		X : in STD_LOGIC;
		Y : in STD_LOGIC;
		Sum : out STD_LOGIC;
		Cout : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Cin : STD_LOGIC;
	signal X : STD_LOGIC;
	signal Y : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Sum : STD_LOGIC;
	signal Cout : STD_LOGIC;

	-- Add your code here ...
type vectorset is array (natural range 1 to 5) of std_logic_vector(2 downto 0);
constant vectors : vectorset:=("000", "001", "011", "101", "111");

begin
	-- Unit Under Test port map
	UUT : fa
		port map (
			Cin => Cin,
			X => X,
			Y => Y,
			Sum => Sum,
			Cout => Cout
		);

	-- Add your stimulus here ...
	process
	begin	
		for k in 1 to 5 loop
			(Cin, X, Y) <= vectors(k);
			if (Cin, X, Y) = "000" then
				assert Sum = '0' and Cout = '0'
				report "error - 000"; 
			end if;
			if (Cin, X, Y) = "001" then
				assert Sum = '1' and Cout = '0'
				report "error - 001"; 
			end if;
			if (Cin, X, Y) = "011" then
				assert Sum = '0' and Cout = '1'
				report "error - 011"; 
			end if;
			if (Cin, X, Y) = "101" then
				assert Sum = '0' and Cout = '1'
				report "error - 101"; 
			end if;
			if (Cin, X, Y) = "111" then
				assert Sum = '1' and Cout = '1'
				report "error - 111"; 
			end if;
			wait for 10 ns;
		end loop;
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_fa of fa_tb is
	for TB_ARCHITECTURE
		for UUT : fa
			use entity work.fa(dataflow_1);
		end for;
	end for;
end TESTBENCH_FOR_fa;

