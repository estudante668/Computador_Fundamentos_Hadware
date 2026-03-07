library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR8WAY is
    port(
        A : in  STD_LOGIC_VECTOR(7 downto 0);
        Y : out STD_LOGIC
    );
end OR8WAY;

architecture GATE_LEVEL of OR8WAY is

signal S0 : STD_LOGIC;
signal S1 : STD_LOGIC;
signal S2 : STD_LOGIC;
signal S3 : STD_LOGIC;

signal S4 : STD_LOGIC;
signal S5 : STD_LOGIC;

begin

-- primeiro nível
S0 <= A(0) or A(1);
S1 <= A(2) or A(3);
S2 <= A(4) or A(5);
S3 <= A(6) or A(7);

-- segundo nível
S4 <= S0 or S1;
S5 <= S2 or S3;

-- terceiro nível
Y <= S4 or S5;

end GATE_LEVEL;