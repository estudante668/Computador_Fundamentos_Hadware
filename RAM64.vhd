library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM64 is
    port (
        clk     : in  std_logic;
        in_v    : in  std_logic_vector(15 downto 0);
        load    : in  std_logic;
        address : in  std_logic_vector(5 downto 0); -- Endereço de 6 bits
        out_v   : out std_logic_vector(15 downto 0)
    );
end RAM64;

architecture Structural of RAM64 is

    -- Sinais para os loads de cada bloco RAM8
    signal l0, l1, l2, l3, l4, l5, l6, l7 : std_logic;
    
    -- Sinais para as saídas de cada bloco RAM8
    type ram64_outputs is array (0 to 7) of std_logic_vector(15 downto 0);
    signal r : ram64_outputs;

    -- Componentes necessários
    component RAM8 is
        port (
            clk     : in  std_logic;
            in_v    : in  std_logic_vector(15 downto 0);
            load    : in  std_logic;
            address : in  std_logic_vector(2 downto 0);
            out_v   : out std_logic_vector(15 downto 0)
        );
    end component;

    component DMUX8WAY is
        port (
            INP : in  std_logic;
            SEL : in  std_logic_vector(2 downto 0);
            A, B, C, D, E, F, G, H : out std_logic
        );
    end component;

    component MUX8WAY16 is
        port (
            a, b, c, d, e, f, g, h : in  std_logic_vector(15 downto 0);
            sel : in  std_logic_vector(2 downto 0);
            out_v : out std_logic_vector(15 downto 0)
        );
    end component;

begin

    -- 1. SELEÇÃO DE ESCRITA (MSB: bits 5, 4 e 3)
    -- O DMux decide qual das 8 RAM8s recebe o sinal de load
    distribuidor_load: DMUX8WAY port map (
        INP => load,
        SEL => address(5 downto 3), 
        A => l0, B => l1, C => l2, D => l3, E => l4, F => l5, G => l6, H => l7
    );

    -- 2. BLOCOS DE MEMÓRIA (LSB: bits 2, 1 e 0)
    -- Cada RAM8 recebe os mesmos dados e os mesmos 3 bits de endereço interno
    ram0: RAM8 port map (clk, in_v, l0, address(2 downto 0), r(0));
    ram1: RAM8 port map (clk, in_v, l1, address(2 downto 0), r(1));
    ram2: RAM8 port map (clk, in_v, l2, address(2 downto 0), r(2));
    ram3: RAM8 port map (clk, in_v, l3, address(2 downto 0), r(3));
    ram4: RAM8 port map (clk, in_v, l4, address(2 downto 0), r(4));
    ram5: RAM8 port map (clk, in_v, l5, address(2 downto 0), r(5));
    ram6: RAM8 port map (clk, in_v, l6, address(2 downto 0), r(6));
    ram7: RAM8 port map (clk, in_v, l7, address(2 downto 0), r(7));

    -- 3. SELEÇÃO DE LEITURA (MSB: bits 5, 4 e 3)
    -- O Mux escolhe qual das 8 RAM8s enviar para a saída final
    seletor_saida: MUX8WAY16 port map (
        a => r(0), b => r(1), c => r(2), d => r(3),
        e => r(4), f => r(5), g => r(6), h => r(7),
        sel => address(5 downto 3),
        out_v => out_v
    );

end Structural;