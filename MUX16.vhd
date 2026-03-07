library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX16 is
    port(
        A   : in  STD_LOGIC_VECTOR(15 downto 0);
        B   : in  STD_LOGIC_VECTOR(15 downto 0);
        SEL : in  STD_LOGIC;
        Y   : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MUX16;

architecture GATE_LEVEL of MUX16 is

signal NSEL : STD_LOGIC;

begin

-- inversão do seletor
NSEL <= not SEL;

-- bit 0
Y(0) <= (A(0) and NSEL) or (B(0) and SEL);

-- bit 1
Y(1) <= (A(1) and NSEL) or (B(1) and SEL);

-- bit 2
Y(2) <= (A(2) and NSEL) or (B(2) and SEL);

-- bit 3
Y(3) <= (A(3) and NSEL) or (B(3) and SEL);

-- bit 4
Y(4) <= (A(4) and NSEL) or (B(4) and SEL);

-- bit 5
Y(5) <= (A(5) and NSEL) or (B(5) and SEL);

-- bit 6
Y(6) <= (A(6) and NSEL) or (B(6) and SEL);

-- bit 7
Y(7) <= (A(7) and NSEL) or (B(7) and SEL);

-- bit 8
Y(8) <= (A(8) and NSEL) or (B(8) and SEL);

-- bit 9
Y(9) <= (A(9) and NSEL) or (B(9) and SEL);

-- bit 10
Y(10) <= (A(10) and NSEL) or (B(10) and SEL);

-- bit 11
Y(11) <= (A(11) and NSEL) or (B(11) and SEL);

-- bit 12
Y(12) <= (A(12) and NSEL) or (B(12) and SEL);

-- bit 13
Y(13) <= (A(13) and NSEL) or (B(13) and SEL);

-- bit 14
Y(14) <= (A(14) and NSEL) or (B(14) and SEL);

-- bit 15
Y(15) <= (A(15) and NSEL) or (B(15) and SEL);

end GATE_LEVEL;