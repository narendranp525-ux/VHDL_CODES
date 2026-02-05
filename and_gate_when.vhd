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

Y <= B when A = '1' else
     '0' ;
      

end architecture; 

