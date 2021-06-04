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

    in_top_module <= "00100110", "01110001" after 250 ms, "10110000" after 500 ms, "11100010" after 750 ms;
END;