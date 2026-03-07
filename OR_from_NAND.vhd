library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_from_NAND is
    port(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end OR_from_NAND;

architecture Structural of OR_from_NAND is

signal A_not, B_not : STD_LOGIC;

begin

    A_not <= not (A and A);
    B_not <= not (B and B);

    Y <= not (A_not and B_not);

end Structural;