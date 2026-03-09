library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM8 is
    port (
        clk     : in  std_logic;
        in_v    : in  std_logic_vector(15 downto 0); -- Dado de entrada
        load    : in  std_logic;                    -- Comando de escrita
        address : in  std_logic_vector(2 downto 0);  -- Seletor de 3 bits
        out_v   : out std_logic_vector(15 downto 0)  -- Dado de saída
    );
end RAM8;

architecture Structural of RAM8 is

    -- 1. Sinais para os 'loads' individuais (saídos do DMux)
    signal l0, l1, l2, l3, l4, l5, l6, l7 : std_logic;
    
    -- 2. Sinais para as saídas de cada registrador (entram no Mux)
    type ram_outputs is array (0 to 7) of std_logic_vector(15 downto 0);
    signal r : ram_outputs;

    -- Declaração dos componentes que devem estar na sua pasta de projeto
    component Register16 is
        port (
            in_v : in std_logic_vector(15 downto 0); 
            load, clk : in std_logic; 
            out_v : out std_logic_vector(15 downto 0)
        );
    end component;

    component DMUX8WAY is
        port (
            INP : in std_logic; -- Use o nome exato da porta do seu DMUX8WAY
            SEL : in std_logic_vector(2 downto 0); 
            A, B, C, D, E, F, G, H : out std_logic
        );
    end component;

    component MUX8WAY16 is
        port (
            a, b, c, d, e, f, g, h : in std_logic_vector(15 downto 0); 
            sel : in std_logic_vector(2 downto 0); 
            out_v : out std_logic_vector(15 downto 0)
        );
    end component;

begin

    -- PASSO 1: Lógica de Escrita (DMUX)
    -- O sinal 'load' vai apenas para o registrador indicado pelo 'address'
    distribuidor_load: DMUX8WAY port map (
        INP => load, 
        SEL => address, 
        A => l0, B => l1, C => l2, D => l3, E => l4, F => l5, G => l6, H => l7
    );

    -- PASSO 2: Armazenamento (8 Registradores)
    reg0: Register16 port map (in_v, l0, clk, r(0));
    reg1: Register16 port map (in_v, l1, clk, r(1));
    reg2: Register16 port map (in_v, l2, clk, r(2));
    reg3: Register16 port map (in_v, l3, clk, r(3));
    reg4: Register16 port map (in_v, l4, clk, r(4));
    reg5: Register16 port map (in_v, l5, clk, r(5));
    reg6: Register16 port map (in_v, l6, clk, r(6));
    reg7: Register16 port map (in_v, l7, clk, r(7));

    -- PASSO 3: Lógica de Leitura (MUX)
    -- Seleciona qual saída dos registradores (r0-r7) vai aparecer no 'out_v'
    seletor_saida: MUX8WAY16 port map (
        a => r(0), b => r(1), c => r(2), d => r(3), 
        e => r(4), f => r(5), g => r(6), h => r(7), 
        sel => address, 
        out_v => out_v
    );

end Structural;