library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitCell is
    port(
        clk  : in  STD_LOGIC;
        inp  : in  STD_LOGIC;
        load : in  STD_LOGIC;
        outp : out STD_LOGIC
    );
end BitCell;

architecture STRUCTURAL of BitCell is

signal q      : STD_LOGIC;
signal muxout : STD_LOGIC;

begin

-- Multiplexador
muxout <= (inp and load) or (q and (not load));

-- Flip-Flop
process(clk)
begin
    if rising_edge(clk) then
        q <= muxout;
    end if;
end process;

outp <= q;

end STRUCTURAL;