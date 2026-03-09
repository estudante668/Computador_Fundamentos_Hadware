library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Bit_Register is
    port (
        clk   : in  std_logic; -- Relógio do sistema
        in_v  : in  std_logic; -- Dado de entrada
        load  : in  std_logic; -- Seletor: 1 = Carregar, 0 = Manter
        out_v : out std_logic  -- Dado armazenado
    );
end Bit_Register;

architecture Behavioral of Bit_Register is
    -- Sinal interno que representa o estado atual do DFF
    signal q_internal : std_logic := '0'; 
begin

    -- O processo descreve o comportamento do DFF
    process(clk)
    begin
        -- Sincronismo na borda de subida (Rising Edge)
        if rising_edge(clk) then
            if load = '1' then
                -- O Mux "interno" seleciona a entrada externa
                q_internal <= in_v;
            else
                -- O Mux "interno" seleciona a própria saída (realimentação)
                q_internal <= q_internal;
            end if;
        end if;
    end process;

    -- Conecta o sinal interno à saída física do chip
    out_v <= q_internal;

end Behavioral;