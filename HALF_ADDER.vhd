library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HALF_ADDER is
    port(
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;

        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end HALF_ADDER;

architecture GATE_LEVEL of HALF_ADDER is
begin

SUM   <= A xor B;
CARRY <= A and B;

end GATE_LEVEL;