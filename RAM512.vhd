library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM512 is
    port (
        clk     : in  std_logic;
        in_v    : in  std_logic_vector(15 downto 0);
        load    : in  std_logic;
        address : in  std_logic_vector(8 downto 0);
        out_v   : out std_logic_vector(15 downto 0)
    );
end RAM512;

architecture Structural of RAM512 is

    -- Sinais internos
    signal l : std_logic_vector(7 downto 0);
    type ram_outs is array (0 to 7) of std_logic_vector(15 downto 0);
    signal r : ram_outs;

    -- Declaração explícita dos componentes
    component RAM64 is
        port (
            clk     : in  std_logic;
            in_v    : in  std_logic_vector(15 downto 0);
            load    : in  std_logic;
            address : in  std_logic_vector(5 downto 0);
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

    -- Instanciação usando os componentes declarados
    dist: DMUX8WAY port map (
        INP => load,
        SEL => address(8 downto 6), 
        A => l(0), B => l(1), C => l(2), D => l(3), 
        E => l(4), F => l(5), G => l(6), H => l(7)
    );

    -- Gerando as 8 RAM64s
    ram_gen: for i in 0 to 7 generate
        ram_i: RAM64 port map (
            clk     => clk,
            in_v    => in_v,
            load    => l(i),
            address => address(5 downto 0),
            out_v   => r(i)
        );
    end generate;

    -- Mux de saída
    mux_out: MUX8WAY16 port map (
        a => r(0), b => r(1), c => r(2), d => r(3),
        e => r(4), f => r(5), g => r(6), h => r(7),
        sel => address(8 downto 6),
        out_v => out_v
    );

end Structural;