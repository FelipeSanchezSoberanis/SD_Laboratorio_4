library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_module is
    Port(
        in_top_module: in std_logic_vector(7 downto 0);
        disp: out std_logic_vector(6 downto 0);
        an: out std_logic_vector(3 downto 0)
    );
end top_module;

architecture top_module_arch of top_module is
    component decoder_nivel is
        Port(
            in_decoder_nivel: in std_logic_vector(7 downto 0);
            out_decoder_nivel_1: out std_logic_vector(3 downto 0);
            out_decoder_nivel_2: out std_logic_vector(1 downto 0)
        );
    end component;

    component decoder_2_4 is
        Port(
            in_decoder_2_4: in std_logic_vector(1 downto 0);
            out_decoder_2_4: out std_logic_vector(3 downto 0)
        );
    end component;

    component decoder_bcd7s is
        Port(
            in_decoder_bcd7s: in std_logic_vector(3 downto 0);
            a, b, c, d, e, f, g: out std_logic
        );
    end component;

    signal cable1: std_logic_vector(3 downto 0);
    signal cable2: std_logic_vector(1 downto 0);
begin
    U0: decoder_nivel port map(
        in_decoder_nivel => in_top_module,
        out_decoder_nivel_1 => cable1,
        out_decoder_nivel_2 => cable2
    );

    U1: decoder_2_4 port map(
        in_decoder_2_4 => cable2,
        out_decoder_2_4 => an
    );

    U2: decoder_bcd7s port map(
        in_decoder_bcd7s => cable1,
        a => disp(6),
        b => disp(5),
        c => disp(4),
        d => disp(3),
        e => disp(2),
        f => disp(1),
        g => disp(0)
    );
end top_module_arch;