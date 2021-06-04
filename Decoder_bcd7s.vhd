library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_bcd7s is
    Port(
        in_decoder_bcd7s: in std_logic_vector(3 downto 0);
        a, b, c, d, e, f, g: out std_logic
    );
end decoder_bcd7s;

architecture decoder_bcd7s_arch of decoder_bcd7s is
    signal temp: std_logic_vector(6 downto 0);
begin
    with in_decoder_bcd7s select temp <=
        "0001110" when "0001",
        "0010101" when "0010",
        "0110111" when "0100",
        "0111110" when "1000",
        "0000000" when others;

    a <= temp(6);
    b <= temp(5);
    c <= temp(4);
    d <= temp(3);
    e <= temp(2);
    f <= temp(1);
    g <= temp(0);
end decoder_bcd7s_arch;