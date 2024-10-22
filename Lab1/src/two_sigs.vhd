library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity two_sigs is
  port (A : in std_logic; F : out std_logic);
end two_sigs;

architecture arch1 of two_sigs is
begin 
  F <= A;	
  F <= not(A);
end arch1;

architecture arch2 of two_sigs is
begin
  process(A)
  begin
    F <= not(A);
    F <= A;
  end process;
end arch2;
