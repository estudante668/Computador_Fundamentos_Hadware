library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4WAY16 is
    port(
        A   : in  STD_LOGIC_VECTOR(15 downto 0);
        B   : in  STD_LOGIC_VECTOR(15 downto 0);
        C   : in  STD_LOGIC_VECTOR(15 downto 0);
        D   : in  STD_LOGIC_VECTOR(15 downto 0);
        SEL : in  STD_LOGIC_VECTOR(1 downto 0);
        Y   : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MUX4WAY16;

architecture STRUCTURAL of MUX4WAY16 is

signal M1 : STD_LOGIC_VECTOR(15 downto 0);
signal M2 : STD_LOGIC_VECTOR(15 downto 0);

begin

M1 <= A when SEL(0)='0' else B;
M2 <= C when SEL(0)='0' else D;

Y  <= M1 when SEL(1)='0' else M2;

end STRUCTURAL;