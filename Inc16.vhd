library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity INC16 is
    Port (
        A   : in  STD_LOGIC_VECTOR(15 downto 0);
        OUTP : out STD_LOGIC_VECTOR(15 downto 0)
    );
end INC16;

architecture STRUCTURAL of INC16 is

component HALF_ADDER
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        SUM   : out STD_LOGIC;
        CARRY : out STD_LOGIC
    );
end component;

signal C : STD_LOGIC_VECTOR(16 downto 0);

begin

C(0) <= '1';   -- adiciona +1

HA0  : HALF_ADDER port map(A(0),  C(0), OUTP(0),  C(1));
HA1  : HALF_ADDER port map(A(1),  C(1), OUTP(1),  C(2));
HA2  : HALF_ADDER port map(A(2),  C(2), OUTP(2),  C(3));
HA3  : HALF_ADDER port map(A(3),  C(3), OUTP(3),  C(4));
HA4  : HALF_ADDER port map(A(4),  C(4), OUTP(4),  C(5));
HA5  : HALF_ADDER port map(A(5),  C(5), OUTP(5),  C(6));
HA6  : HALF_ADDER port map(A(6),  C(6), OUTP(6),  C(7));
HA7  : HALF_ADDER port map(A(7),  C(7), OUTP(7),  C(8));
HA8  : HALF_ADDER port map(A(8),  C(8), OUTP(8),  C(9));
HA9  : HALF_ADDER port map(A(9),  C(9), OUTP(9),  C(10));
HA10 : HALF_ADDER port map(A(10), C(10), OUTP(10), C(11));
HA11 : HALF_ADDER port map(A(11), C(11), OUTP(11), C(12));
HA12 : HALF_ADDER port map(A(12), C(12), OUTP(12), C(13));
HA13 : HALF_ADDER port map(A(13), C(13), OUTP(13), C(14));
HA14 : HALF_ADDER port map(A(14), C(14), OUTP(14), C(15));
HA15 : HALF_ADDER port map(A(15), C(15), OUTP(15), C(16));

end STRUCTURAL;