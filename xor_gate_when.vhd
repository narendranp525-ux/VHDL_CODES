library IEEE ;
use IEEE.std_logic_1164.all ;


entity xor_gate_when is 
port (
A : in std_logic ;
B : in std_logic;
y : out std_logic

);

end entity;

architecture dataflow of xor_gate_when is 
begin 

y <= '0' when A = B else
     '1' when a /= b else 
     'Z';
end architecture;