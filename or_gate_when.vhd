library ieee;
use ieee.std_logic_1164.all;
 
entity or_gate is 
port (
A : in std_logic;
B : in std_logic;
y :out std_logic 

);

end entity ;

architecture dataflow of or_gate is
begin

y <= '1' when A /= B or A = '1' or B = '1' else
      '0' when A = '0' and B = '0' else
	  'Z';

end architecture;