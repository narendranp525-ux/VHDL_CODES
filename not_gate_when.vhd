library ieee ;
use ieee.std_logic_1164.all;

entity not_gate is 
port(
A : in std_logic;
Y : out std_logic
);

end entity ;

architecture dataflow of not_gate is
begin 

Y <= '1' when A = '0' else
     '0' when A = '1' else
	 'Z' ;
	 
	 end architecture;