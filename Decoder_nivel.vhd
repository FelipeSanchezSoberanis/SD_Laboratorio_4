library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder_nivel is
    Port(
        in_decoder_nivel: in std_logic_vector(7 downto 0);
        out_decoder_nivel_1: out std_logic_vector(3 downto 0);
        out_decoder_nivel_2: out std_logic_vector(1 downto 0)
    );
end decoder_nivel;

architecture decoder_nivel_arch of decoder_nivel is
    signal in_integer: integer;
begin
    in_integer <= to_integer(unsigned(in_decoder_nivel));
    process(in_integer)
    begin
        case in_integer is
            when 0 to 75 =>
                out_decoder_nivel_1 <= "0001";
                out_decoder_nivel_2 <= "00";
            when 76 to 150 =>
                out_decoder_nivel_1 <= "0010";
                out_decoder_nivel_2 <= "01";
            when 151 to 200 =>
                out_decoder_nivel_1 <= "0100";
                out_decoder_nivel_2 <= "10";
            when 201 to 250 =>
                out_decoder_nivel_1 <= "1000";
                out_decoder_nivel_2 <= "11";
            when others =>
                out_decoder_nivel_1 <= "0000";
                out_decoder_nivel_2 <= "00";
        end case;
    end process;
end decoder_nivel_arch;