library ieee;
use ieee.std_logic_1164.all;

entity clock_AND_tb is 
end entity;
architecture structural of clock_AND_tb is 
component clocked_AND is 
port(
I1 : in std_logic ;
I2 : in std_logic ;
Out_and: out std_logic;
clock : in std_logic
);

end component;

signal i1_tb,i2_tb,Outtb : std_logic := '0';
signal clocktb : std_logic := '0' ;
constant clock_period :  time := 10 ns ;


begin
DUT : clocked_AND port map 
(
I1 => i1_tb ,
I2 => i2_tb ,
Out_and => Outtb,
clock => clocktb 
);

clock_process : process 
begin 

clocktb <= '1' ;
wait for clock_period/2 ;
clocktb <= '0' ;
wait for clock_period/2;

end process ;

stimulus_process : process 
begin 

i1_tb <= '0' ;
i2_tb <= '0' ;
 wait for 10 ns;

i1_tb <= '0' ;
 i2_tb <= '1' ;
 wait for 10 ns;

i1_tb <= '1' ;
 i2_tb <= '0' ; 
wait for 10 ns;

i1_tb <= '1' ;
 i2_tb <= '1' ;
 wait for 10 ns;

wait;
end process ;


end architecture;
