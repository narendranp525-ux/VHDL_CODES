library ieee;
use ieee.std_logic_1164.all;

entity and_gate_using_when is 
port (
A : in std_logic ;
B : in std_logic ;
y : out std_logic
);
end entity;

architecture dataflow of and_gate_using_when is
begin 

Y <= '1' when A ='1' and B = '1'else
     '0' when A /= B or A = '0' or B = '0' else
     'Z' ;

end architecture; 
