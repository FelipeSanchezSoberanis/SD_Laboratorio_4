library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_2_4 is
    Port(
        in_decoder_2_4: in std_logic_vector(1 downto 0);
        out_decoder_2_4: out std_logic_vector(3 downto 0)
    );
end decoder_2_4;

architecture decoder_2_4_arch of decoder_2_4 is
begin
    process(in_decoder_2_4)
    begin
        if (in_decoder_2_4 = "00") then
            out_decoder_2_4 <= "0001";
        elsif (in_decoder_2_4 = "01") then
            out_decoder_2_4 <= "0010";
        elsif (in_decoder_2_4 = "10") then
            out_decoder_2_4 <= "0100";
        elsif (in_decoder_2_4 = "11") then
            out_decoder_2_4 <= "1000";
        else
            out_decoder_2_4 <= "0000";
        end if;
    end process;
end decoder_2_4_arch;