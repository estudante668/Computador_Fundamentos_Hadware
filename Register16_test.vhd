library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register16_test is
end Register16_test;

architecture test of Register16_test is

signal clk  : STD_LOGIC := '0';
signal load : STD_LOGIC := '0';
signal inp  : STD_LOGIC_VECTOR(15 downto 0);
signal outp : STD_LOGIC_VECTOR(15 downto 0);

component Register16
port(
    clk  : in  STD_LOGIC;
    inp  : in  STD_LOGIC_VECTOR(15 downto 0);
    load : in  STD_LOGIC;
    outp : out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

begin

UUT: Register16
port map(
    clk => clk,
    inp => inp,
    load => load,
    outp => outp
);

-- clock de 10 ns
clk_process : process
begin
    while true loop
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end loop;
end process;

-- estímulos
stimulus : process
begin

-- estado inicial
inp  <= "0000000000000000";
load <= '0';
wait for 20 ns;

-- grava valor
inp  <= "1010101010101010";
load <= '1';
wait for 10 ns;

load <= '0';
wait for 20 ns;

-- tenta mudar sem load
inp <= "1111111111111111";
wait for 20 ns;

-- grava novo valor
load <= '1';
wait for 10 ns;

load <= '0';
wait;

end process;

end test;