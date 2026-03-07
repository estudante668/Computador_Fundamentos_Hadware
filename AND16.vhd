library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND16 is
    Port(
        A : in  STD_LOGIC_VECTOR(15 downto 0);
        B : in  STD_LOGIC_VECTOR(15 downto 0);
        Y : out STD_LOGIC_VECTOR(15 downto 0)
    );
end AND16;

architecture STRUCTURAL of AND16 is
begin

Y(0)  <= A(0)  and B(0);
Y(1)  <= A(1)  and B(1);
Y(2)  <= A(2)  and B(2);
Y(3)  <= A(3)  and B(3);
Y(4)  <= A(4)  and B(4);
Y(5)  <= A(5)  and B(5);
Y(6)  <= A(6)  and B(6);
Y(7)  <= A(7)  and B(7);
Y(8)  <= A(8)  and B(8);
Y(9)  <= A(9)  and B(9);
Y(10) <= A(10) and B(10);
Y(11) <= A(11) and B(11);
Y(12) <= A(12) and B(12);
Y(13) <= A(13) and B(13);
Y(14) <= A(14) and B(14);
Y(15) <= A(15) and B(15);

end STRUCTURAL;