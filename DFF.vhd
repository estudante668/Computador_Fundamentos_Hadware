library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
    port(
        CLK : in  STD_LOGIC;
        INP : in  STD_LOGIC;
        OUTP : out STD_LOGIC
    );
end DFF;

architecture GATE_LEVEL of DFF is

signal S1, R1 : STD_LOGIC;
signal S2, R2 : STD_LOGIC;

signal QM, QMN : STD_LOGIC;   -- saída do master
signal QS, QSN : STD_LOGIC;   -- saída do slave
signal CLK_N : STD_LOGIC;

begin

-- inversão do clock
CLK_N <= not CLK;

-- lógica para gerar S e R do latch master
S1 <= not (INP and CLK);
R1 <= not ((not INP) and CLK);

-- Latch SR (MASTER)
QM  <= not (S1 and QMN);
QMN <= not (R1 and QM);

-- lógica para gerar S e R do latch slave
S2 <= not (QM and CLK_N);
R2 <= not ((not QM) and CLK_N);

-- Latch SR (SLAVE)
QS  <= not (S2 and QSN);
QSN <= not (R2 and QS);

-- saída final
OUTP <= QS;

end GATE_LEVEL;