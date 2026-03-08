library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADD16 is
    port(
        A   : in  STD_LOGIC_VECTOR(15 downto 0);
        B   : in  STD_LOGIC_VECTOR(15 downto 0);
        Cin : in  STD_LOGIC;

        SUM  : out STD_LOGIC_VECTOR(15 downto 0);
        Cout : out STD_LOGIC
    );
end ADD16;

architecture STRUCTURAL of ADD16 is

component FULL_ADDER
    port(
        A   : in STD_LOGIC;
        B   : in STD_LOGIC;
        Cin : in STD_LOGIC;
        SUM : out STD_LOGIC;
        Cout: out STD_LOGIC
    );
end component;

signal C : STD_LOGIC_VECTOR(16 downto 0);

begin

C(0) <= Cin;

FA0:  FULL_ADDER port map(A(0),  B(0),  C(0),  SUM(0),  C(1));
FA1:  FULL_ADDER port map(A(1),  B(1),  C(1),  SUM(1),  C(2));
FA2:  FULL_ADDER port map(A(2),  B(2),  C(2),  SUM(2),  C(3));
FA3:  FULL_ADDER port map(A(3),  B(3),  C(3),  SUM(3),  C(4));
FA4:  FULL_ADDER port map(A(4),  B(4),  C(4),  SUM(4),  C(5));
FA5:  FULL_ADDER port map(A(5),  B(5),  C(5),  SUM(5),  C(6));
FA6:  FULL_ADDER port map(A(6),  B(6),  C(6),  SUM(6),  C(7));
FA7:  FULL_ADDER port map(A(7),  B(7),  C(7),  SUM(7),  C(8));
FA8:  FULL_ADDER port map(A(8),  B(8),  C(8),  SUM(8),  C(9));
FA9:  FULL_ADDER port map(A(9),  B(9),  C(9),  SUM(9),  C(10));
FA10: FULL_ADDER port map(A(10), B(10), C(10), SUM(10), C(11));
FA11: FULL_ADDER port map(A(11), B(11), C(11), SUM(11), C(12));
FA12: FULL_ADDER port map(A(12), B(12), C(12), SUM(12), C(13));
FA13: FULL_ADDER port map(A(13), B(13), C(13), SUM(13), C(14));
FA14: FULL_ADDER port map(A(14), B(14), C(14), SUM(14), C(15));
FA15: FULL_ADDER port map(A(15), B(15), C(15), SUM(15), C(16));

Cout <= C(16);

end STRUCTURAL;