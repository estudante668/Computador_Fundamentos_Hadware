library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Necessário para operações matemáticas

entity PC is
    port (
        clk   : in  std_logic;
        in_v  : in  std_logic_vector(15 downto 0); -- Valor para carga (jump)
        load  : in  std_logic;                    -- Carrega o valor de in_v
        inc   : in  std_logic;                    -- Incrementa o valor atual
        reset : in  std_logic;                    -- Zera o contador
        out_v : out std_logic_vector(15 downto 0)  -- Saída do endereço atual
    );
end PC;

architecture Behavioral of PC is
    -- Sinal interno para manter o estado (registradores precisam disso)
    signal current_val : unsigned(15 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            -- A ordem aqui define a PRIORIDADE (Reset é a mais alta)
            if reset = '1' then
                current_val <= (others => '0');     -- Se reset, vai para 0
            elsif load = '1' then
                current_val <= unsigned(in_v);      -- Se load, pula para o endereço de in_v
            elsif inc = '1' then
                current_val <= current_val + 1;     -- Se inc, soma 1
            else
                current_val <= current_val;         -- Caso contrário, mantém o valor
            end if;
        end if;
    end process;

    -- Converte de 'unsigned' de volta para 'std_logic_vector' para a saída
    out_v <= std_logic_vector(current_val);

end Behavioral;