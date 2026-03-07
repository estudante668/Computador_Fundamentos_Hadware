library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_NAND is
    port(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end XOR_NAND;

architecture STRUCTURAL of XOR_NAND is

signal X  : STD_LOGIC;
signal Y1 : STD_LOGIC;
signal Y2 : STD_LOGIC;

begin

    X  <= not (A and B);     -- NAND1
    Y1 <= not (A and X);     -- NAND2
    Y2 <= not (B and X);     -- NAND3
    Y  <= not (Y1 and Y2);   -- NAND4

end STRUCTURAL;