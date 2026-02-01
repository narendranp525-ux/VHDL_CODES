library ieee ;
use ieee.std_logic_1164.all;

entity nand_gate is 
port (
A : in std_logic ;
B : in std_logic ; 
Y : out std_logic 
  );
end entity nand_gate ;


architecture dataflow of nand_gate is 
begin 

y <= '0' when A = '1' and B = '1' else
     '1' when A = '0' or B = '0' else
     'Z';
 end architecture ;