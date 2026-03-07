library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX4WAY16 is
    port(
        INP : in  STD_LOGIC_VECTOR(15 downto 0);
        SEL : in  STD_LOGIC_VECTOR(1 downto 0);

        A : out STD_LOGIC_VECTOR(15 downto 0);
        B : out STD_LOGIC_VECTOR(15 downto 0);
        C : out STD_LOGIC_VECTOR(15 downto 0);
        D : out STD_LOGIC_VECTOR(15 downto 0)
    );
end DEMUX4WAY16;

architecture STRUCTURAL of DEMUX4WAY16 is
begin

A <= INP when SEL="00" else (others=>'0');
B <= INP when SEL="01" else (others=>'0');
C <= INP when SEL="10" else (others=>'0');
D <= INP when SEL="11" else (others=>'0');

end STRUCTURAL;