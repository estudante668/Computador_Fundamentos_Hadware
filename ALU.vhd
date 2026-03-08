library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Necessário para a operação de soma (+)

entity ALU is
    port (
        x, y : in  std_logic_vector(15 downto 0); -- Entradas de dados
        zx, nx, zy, ny, f, no : in  std_logic;    -- Bits de controle
        q_out : out std_logic_vector(15 downto 0); -- Saída de 16 bits
        zr, ng : out std_logic                    -- Flags de status
    );
end ALU;

architecture Behavioral of ALU is
    -- Sinais intermediários para as etapas de processamento
    signal x_zeroed, x_processed : std_logic_vector(15 downto 0);
    signal y_zeroed, y_processed : std_logic_vector(15 downto 0);
    signal f_out, final_out     : std_logic_vector(15 downto 0);
begin

    -- ESTÁGIO 1: Processamento da entrada X
    x_zeroed    <= (others => '0') when zx = '1' else x;
    x_processed <= not(x_zeroed)    when nx = '1' else x_zeroed;

    -- ESTÁGIO 2: Processamento da entrada Y
    y_zeroed    <= (others => '0') when zy = '1' else y;
    y_processed <= not(y_zeroed)    when ny = '1' else y_zeroed;

    -- ESTÁGIO 3: Seleção da Função (f)
    -- f = 1 para Somar (+), f = 0 para And (&)
    f_out <= std_logic_vector(signed(x_processed) + signed(y_processed)) when f = '1' 
             else (x_processed and y_processed);

    -- ESTÁGIO 4: Negar a saída (no)
    final_out <= not(f_out) when no = '1' else f_out;

    -- SAÍDA FINAL
    q_out <= final_out;

    -- ESTÁGIO 5: Geração dos Flags (zr e ng)
    -- zr = 1 se a saída for toda zero
    zr <= '1' when final_out = "0000000000000000" else '0';
    
    -- ng = 1 se o bit mais significativo (MSB) for 1 (número negativo em Complemento de 2)
    ng <= final_out(15);

end Behavioral;