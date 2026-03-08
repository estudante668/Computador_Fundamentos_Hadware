library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
    port(
        A   : in  STD_LOGIC;
        B   : in  STD_LOGIC;
        Cin : in  STD_LOGIC;

        SUM  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end FULL_ADDER;

architecture GATE_LEVEL of FULL_ADDER is

signal S1 : STD_LOGIC;
signal C1 : STD_LOGIC;
signal C2 : STD_LOGIC;

begin

S1 <= A xor B;
SUM <= S1 xor Cin;

C1 <= A and B;
C2 <= Cin and S1;

Cout <= C1 or C2;

end GATE_LEVEL;