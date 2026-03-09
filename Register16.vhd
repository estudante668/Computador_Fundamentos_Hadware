library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGISTER16 is
    port (
        in_v  : in  std_logic_vector(15 downto 0); -- Entrada de 16 bits
        load  : in  std_logic;                    -- Sinal de carga comum
        clk   : in  std_logic;                    -- Relógio comum
        out_v : out std_logic_vector(15 downto 0)  -- Saída de 16 bits
    );
end REGISTER16;

architecture Structural of REGISTER16 is

    -- 1. Declaramos que vamos usar o componente "Bit" que você já criou
    component Bit_Register is
        port (
            clk   : in  std_logic;
            in_v  : in  std_logic;
            load  : in  std_logic;
            out_v : out std_logic
        );
    end component;

begin

    -- 2. O Loop FOR GENERATE: Ele cria as 16 instâncias automaticamente
    GEN_REG: for i in 0 to 15 generate
        -- Cada "REG_BIT" será uma cópia física do seu componente Bit
        REG_BIT: Bit_Register port map (
            clk   => clk,
            in_v  => in_v(i),   -- Conecta o bit 'i' da entrada
            load  => load,      -- O load é o mesmo para todos
            out_v => out_v(i)   -- Conecta ao bit 'i' da saída
        );
    end generate GEN_REG;

end Structural;