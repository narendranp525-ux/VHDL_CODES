library ieee ;
use ieee.std_logic_1164.all;

entity xnor_gate is 
port (
A : in std_logic ;
B : in std_logic;
Y : out std_logic
);

end entity;

architecture dataflow of xnor_gate is
begin 

Y <= '0' when A /= B else 
     '1' when A = B else
	 'Z' ;
	 
	 end architecture;