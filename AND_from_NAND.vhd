library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_from_NAND is
    port(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end AND_from_NAND;

architecture Structural of AND_from_NAND is

signal X : STD_LOGIC;

begin

    X <= not (A and B);
    Y <= not (X and X);

end Structural;