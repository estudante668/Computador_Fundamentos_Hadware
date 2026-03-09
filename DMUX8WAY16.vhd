library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMUX8WAY16 is
    port(
        INP : in  STD_LOGIC_VECTOR(15 downto 0); -- Agora a entrada tem 16 bits
        SEL : in  STD_LOGIC_VECTOR(2 downto 0);  -- O seletor continua com 3 bits para escolher 1 entre 8

        -- Todas as saídas agora são barramentos de 16 bits
        A : out STD_LOGIC_VECTOR(15 downto 0);
        B : out STD_LOGIC_VECTOR(15 downto 0);
        C : out STD_LOGIC_VECTOR(15 downto 0);
        D : out STD_LOGIC_VECTOR(15 downto 0);
        E : out STD_LOGIC_VECTOR(15 downto 0);
        F : out STD_LOGIC_VECTOR(15 downto 0);
        G : out STD_LOGIC_VECTOR(15 downto 0);
        H : out STD_LOGIC_VECTOR(15 downto 0)
    );
end DMUX8WAY16;

architecture GATE_LEVEL of DMUX8WAY16 is
begin

-- Se selecionado, passa o vetor INP. Se não, preenche com 16 zeros.
A <= INP when SEL="000" else (others => '0');
B <= INP when SEL="001" else (others => '0');
C <= INP when SEL="010" else (others => '0');
D <= INP when SEL="011" else (others => '0');

E <= INP when SEL="100" else (others => '0');
F <= INP when SEL="101" else (others => '0');
G <= INP when SEL="110" else (others => '0');
H <= INP when SEL="111" else (others => '0');

end GATE_LEVEL;