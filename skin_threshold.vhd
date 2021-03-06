-- File: skin_threshold.vhd
-- Generated by MyHDL 0.9.0
-- Date: Wed Mar 29 19:40:30 2017


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_090.all;

entity skin_threshold is
    port (
        i_y: in unsigned(7 downto 0);
        i_cb: in unsigned(7 downto 0);
        i_cr: in unsigned(7 downto 0);
        i_clk: in unsigned(7 downto 0);
        o_s: out unsigned(0 downto 0)
    );
end entity skin_threshold;


architecture MyHDL of skin_threshold is





signal skin_pixel: unsigned(0 downto 0);

begin





SKIN_THRESHOLD_RUN: process (i_clk) is
    variable L: line;
begin
    if rising_edge(i_clk) then
        6 * 1 ns
        if ((72 <= i_cb) and (i_cb <= 122) and (127 <= i_cr) and (i_cr <= 168)) then
            skin_pixel <= to_unsigned(1, 1);
        else
            skin_pixel <= to_unsigned(0, 1);
        end if;
        write(L, skin_pixel);
        writeline(output, L);
    end if;
end process SKIN_THRESHOLD_RUN;



o_s <= skin_pixel;

end architecture MyHDL;
