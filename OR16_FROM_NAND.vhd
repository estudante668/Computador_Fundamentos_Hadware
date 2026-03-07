library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR16_FROM_NAND is
    port(
        A : in  STD_LOGIC_VECTOR(15 downto 0);
        B : in  STD_LOGIC_VECTOR(15 downto 0);
        Y : out STD_LOGIC_VECTOR(15 downto 0)
    );
end OR16_FROM_NAND;

architecture GATE_LEVEL of OR16_FROM_NAND is

signal NA : STD_LOGIC_VECTOR(15 downto 0);
signal NB : STD_LOGIC_VECTOR(15 downto 0);

begin

-- inversões usando NAND

NA(0) <= A(0) nand A(0);
NB(0) <= B(0) nand B(0);

NA(1) <= A(1) nand A(1);
NB(1) <= B(1) nand B(1);

NA(2) <= A(2) nand A(2);
NB(2) <= B(2) nand B(2);

NA(3) <= A(3) nand A(3);
NB(3) <= B(3) nand B(3);

NA(4) <= A(4) nand A(4);
NB(4) <= B(4) nand B(4);

NA(5) <= A(5) nand A(5);
NB(5) <= B(5) nand B(5);

NA(6) <= A(6) nand A(6);
NB(6) <= B(6) nand B(6);

NA(7) <= A(7) nand A(7);
NB(7) <= B(7) nand B(7);

NA(8) <= A(8) nand A(8);
NB(8) <= B(8) nand B(8);

NA(9) <= A(9) nand A(9);
NB(9) <= B(9) nand B(9);

NA(10) <= A(10) nand A(10);
NB(10) <= B(10) nand B(10);

NA(11) <= A(11) nand A(11);
NB(11) <= B(11) nand B(11);

NA(12) <= A(12) nand A(12);
NB(12) <= B(12) nand B(12);

NA(13) <= A(13) nand A(13);
NB(13) <= B(13) nand B(13);

NA(14) <= A(14) nand A(14);
NB(14) <= B(14) nand B(14);

NA(15) <= A(15) nand A(15);
NB(15) <= B(15) nand B(15);

-- OR final

Y(0) <= NA(0) nand NB(0);
Y(1) <= NA(1) nand NB(1);
Y(2) <= NA(2) nand NB(2);
Y(3) <= NA(3) nand NB(3);
Y(4) <= NA(4) nand NB(4);
Y(5) <= NA(5) nand NB(5);
Y(6) <= NA(6) nand NB(6);
Y(7) <= NA(7) nand NB(7);
Y(8) <= NA(8) nand NB(8);
Y(9) <= NA(9) nand NB(9);
Y(10) <= NA(10) nand NB(10);
Y(11) <= NA(11) nand NB(11);
Y(12) <= NA(12) nand NB(12);
Y(13) <= NA(13) nand NB(13);
Y(14) <= NA(14) nand NB(14);
Y(15) <= NA(15) nand NB(15);

end GATE_LEVEL;