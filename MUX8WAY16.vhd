library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8WAY16 is
    port (
        a, b, c, d, e, f, g, h : in  std_logic_vector(15 downto 0); -- 8 entradas de 16 bits
        sel                    : in  std_logic_vector(2 downto 0);  -- Seletor de 3 bits
        out_v                  : out std_logic_vector(15 downto 0)  -- Saída única de 16 bits
    );
end MUX8WAY16;

architecture Behavioral of MUX8WAY16 is
begin
    -- Lógica de seleção combinacional
    out_v <= a when sel = "000" else
             b when sel = "001" else
             c when sel = "010" else
             d when sel = "011" else
             e when sel = "100" else
             f when sel = "101" else
             g when sel = "110" else
             h when sel = "111" else
             (others => '0'); -- Caso de segurança
end Behavioral;