library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register16_tb is
end Register16_tb;

architecture test of Register16_tb is

signal clk  : STD_LOGIC := '0';
signal load : STD_LOGIC := '0';
signal inp  : STD_LOGIC_VECTOR(15 downto 0);
signal outp : STD_LOGIC_VECTOR(15 downto 0);

begin

-- instancia do registrador
UUT: entity work.Register16
port map(
    clk  => clk,
    inp  => inp,
    load => load,
    outp => outp
);

-- clock
clk_process : process
begin
    clk <= not clk;
    wait for 5 ns;
end process;

-- estimulos
stimulus : process
begin

inp  <= "0000000000000000";
load <= '0';
wait for 20 ns;

inp  <= "1010101010101010";
load <= '1';
wait for 10 ns;

load <= '0';
wait for 20 ns;

inp <= "1111111111111111";
wait for 20 ns;

load <= '1';
wait for 10 ns;

load <= '0';
wait;

end process;

end test;