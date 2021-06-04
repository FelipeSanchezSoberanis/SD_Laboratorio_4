library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY TB_top_module IS
END TB_top_module;

ARCHITECTURE behavior OF TB_top_module IS
    COMPONENT top_module
        PORT(
            in_top_module : IN  std_logic_vector(7 downto 0);
            disp : OUT  std_logic_vector(6 downto 0);
            an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

    signal in_top_module : std_logic_vector(7 downto 0) := (others => '0');
    signal disp : std_logic_vector(6 downto 0);
    signal an : std_logic_vector(3 downto 0);
BEGIN
    uut: top_module PORT MAP(
        in_top_module => in_top_module,
        disp => disp,
        an => an
    );

    in_top_module <=  "00000000",
        "00000101" after 100 ns,
        "00001010" after 200 ns,
        "00001111" after 300 ns,
        "00010100" after 400 ns,
        "00011001" after 500 ns,
        "00011110" after 600 ns,
        "00100011" after 700 ns,
        "00101000" after 800 ns,
        "00101101" after 900 ns,
        "00110010" after 1000 ns,
        "00110111" after 1100 ns,
        "00111100" after 1200 ns,
        "01000001" after 1300 ns,
        "01000110" after 1400 ns,
        "01001011" after 1500 ns,
        "01010000" after 1600 ns,
        "01010101" after 1700 ns,
        "01011010" after 1800 ns,
        "01011111" after 1900 ns,
        "01100100" after 2000 ns,
        "01101001" after 2100 ns,
        "01101110" after 2200 ns,
        "01110011" after 2300 ns,
        "01111000" after 2400 ns,
        "01111101" after 2500 ns,
        "10000010" after 2600 ns,
        "10000111" after 2700 ns,
        "10001100" after 2800 ns,
        "10010001" after 2900 ns,
        "10010110" after 3000 ns,
        "10011011" after 3100 ns,
        "10100000" after 3200 ns,
        "10100101" after 3300 ns,
        "10101010" after 3400 ns,
        "10101111" after 3500 ns,
        "10110100" after 3600 ns,
        "10111001" after 3700 ns,
        "10111110" after 3800 ns,
        "11000011" after 3900 ns,
        "11001000" after 4000 ns,
        "11001101" after 4100 ns,
        "11010010" after 4200 ns,
        "11010111" after 4300 ns,
        "11011100" after 4400 ns,
        "11100001" after 4500 ns,
        "11100110" after 4600 ns,
        "11101011" after 4700 ns,
        "11110000" after 4800 ns,
        "11110101" after 4900 ns,
        "11111010" after 5000 ns,
        "11111111" after 5100 ns;

END;