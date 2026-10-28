
library ieee;
use ieee.std_logic_1164.all;

entity led_letters is
    port(
        en      : in std_logic;
        dat     : in std_logic_vector(3 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity led_letters;

architecture bhv of led_letters is
begin
    process(en, dat)
    begin
        if en = '0' then
            display <= "ZZZZZZZZ";
        else
            case dat is
                when "0000" => display <= "11101110";
                when "0001" => display <= "00111110";
                when "0010" => display <= "00011010";
                when "0011" => display <= "01111010";
                when "0100" => display <= "10001110";
                when "0101" => display <= "10111110";
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;
