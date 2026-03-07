library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT16 is
    Port(
        A : in  STD_LOGIC_VECTOR(15 downto 0);
        Y : out STD_LOGIC_VECTOR(15 downto 0)
    );
end NOT16;

architecture STRUCTURAL of NOT16 is
begin

Y(0)  <= not A(0);
Y(1)  <= not A(1);
Y(2)  <= not A(2);
Y(3)  <= not A(3);
Y(4)  <= not A(4);
Y(5)  <= not A(5);
Y(6)  <= not A(6);
Y(7)  <= not A(7);
Y(8)  <= not A(8);
Y(9)  <= not A(9);
Y(10) <= not A(10);
Y(11) <= not A(11);
Y(12) <= not A(12);
Y(13) <= not A(13);
Y(14) <= not A(14);
Y(15) <= not A(15);

end STRUCTURAL;