----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 08:06:50 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    -- Component Declaration
    component sevenseg_decoder
        Port ( i_Hex  : in  STD_LOGIC_VECTOR (3 downto 0);
               o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    -- Test signals
    signal i_Hex_tb  : STD_LOGIC_VECTOR(3 downto 0);
    signal o_seg_n_tb : STD_LOGIC_VECTOR(6 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: sevenseg_decoder
        port map (
            i_Hex  => i_Hex_tb,
            o_seg_n => o_seg_n_tb
        );

    -- Stimulus process
    process
    begin

        -- Test all hexadecimal values 0–F

        i_Hex_tb <= "0000"; wait for 10 ns;
        assert o_seg_n_tb = "1000000" report "Error on 0" severity error;

        i_Hex_tb <= "0001"; wait for 10 ns;
        assert o_seg_n_tb = "1111001" report "Error on 1" severity error;

        i_Hex_tb <= "0010"; wait for 10 ns;
        assert o_seg_n_tb = "0100100" report "Error on 2" severity error;

        i_Hex_tb <= "0011"; wait for 10 ns;
        assert o_seg_n_tb = "0110000" report "Error on 3" severity error;

        i_Hex_tb <= "0100"; wait for 10 ns;
        assert o_seg_n_tb = "0011001" report "Error on 4" severity error;

        i_Hex_tb <= "0101"; wait for 10 ns;
        assert o_seg_n_tb = "0010010" report "Error on 5" severity error;

        i_Hex_tb <= "0110"; wait for 10 ns;
        assert o_seg_n_tb = "0000010" report "Error on 6" severity error;

        i_Hex_tb <= "0111"; wait for 10 ns;
        assert o_seg_n_tb = "1111000" report "Error on 7" severity error;

        i_Hex_tb <= "1000"; wait for 10 ns;
        assert o_seg_n_tb = "0000000" report "Error on 8" severity error;

        i_Hex_tb <= "1001"; wait for 10 ns;
        assert o_seg_n_tb = "0010000" report "Error on 9" severity error;

        i_Hex_tb <= "1010"; wait for 10 ns;
        assert o_seg_n_tb = "0001000" report "Error on A" severity error;

        i_Hex_tb <= "1011"; wait for 10 ns;
        assert o_seg_n_tb = "0000011" report "Error on b" severity error;

        i_Hex_tb <= "1100"; wait for 10 ns;
        assert o_seg_n_tb = "1000110" report "Error on C" severity error;

        i_Hex_tb <= "1101"; wait for 10 ns;
        assert o_seg_n_tb = "0100001" report "Error on d" severity error;

        i_Hex_tb <= "1110"; wait for 10 ns;
        assert o_seg_n_tb = "0000110" report "Error on E" severity error;

        i_Hex_tb <= "1111"; wait for 10 ns;
        assert o_seg_n_tb = "0001110" report "Error on F" severity error;

        report "All tests passed!" severity note;

        wait;
    end process;

end Behavioral;