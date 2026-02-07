library ieee ;
use ieee.std_logic_1164.all ;

entity clocked_AND is port 
(
I1 : in std_logic ;
I2 : in std_logic ;
Out_and : out std_logic;
clock : in std_logic
);
end entity ;


architecture dataflow of clocked_AND is 
begin 

process(clock)
begin 
if (rising_edge(clock))
then 

Out_and<= I1 and I2 ;

end if;
end process;

end architecture;
