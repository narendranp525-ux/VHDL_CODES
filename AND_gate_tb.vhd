library ieee ;
use ieee.std_logic_1164.all;

entity and_tb is 
end entity;

architecture structural of and_tb is
component and_gate_when is
port (
		A : in std_logic ;
		B : in std_logic ;
		y : out std_logic
		);
end component;


signal a_in ,b_in,y_out : std_logic ; 
begin

DUT : and_gate_when port map 
(
A => a_in,
B => b_in,
Y => y_out
); 

stim_process : process 
begin 

a_in <= '0';b_in <= '0';wait for 5 ns ;

a_in  <= '1';b_in <= '0';wait for 5 ns ;

a_in  <= '0';b_in <= '1';wait for 5 ns ;

a_in <= '1';b_in <= '1';wait for 5 ns ;

wait;

end process;

end architecture;

