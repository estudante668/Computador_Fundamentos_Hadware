library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register16 is
    port(
        clk  : in  STD_LOGIC;
        inp  : in  STD_LOGIC_VECTOR(15 downto 0);
        load : in  STD_LOGIC;
        outp : out STD_LOGIC_VECTOR(15 downto 0)
    );
end Register16;

architecture STRUCTURAL of Register16 is

signal q      : STD_LOGIC_VECTOR(15 downto 0);
signal muxout : STD_LOGIC_VECTOR(15 downto 0);

begin

-- Multiplexador de 16 bits
muxout <= (inp and (15 downto 0 => load)) or 
          (q and (15 downto 0 => not load));

-- Flip-Flops de 16 bits
process(clk)
begin
    if rising_edge(clk) then
        q <= muxout;
    end if;
end process;

outp <= q;

end STRUCTURAL;