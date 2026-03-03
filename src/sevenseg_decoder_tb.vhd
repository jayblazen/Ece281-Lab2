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

    uut: sevenseg_decoder
        port map(
            i_Hex    => i_Hex,
            o_seg_n => o_seg_n
        );

    test_process : process
    begin
        i_Hex <= "0000"; wait for 10 ns;
            assert o_seg_n = "1000000" report "Error on input 0" severity failure;

        i_Hex <= "0001"; wait for 10 ns;
            assert o_seg_n = "1111001" report "Error on input 1" severity failure;

        i_Hex <= "0010"; wait for 10 ns;
            assert o_seg_n = "0100100" report "Error on input 2" severity failure;

        i_Hex <= "0011"; wait for 10 ns;
            assert o_seg_n = "0110000" report "Error on input 3" severity failure;

        i_Hex <= "0100"; wait for 10 ns;
            assert o_seg_n = "0011001" report "Error on input 4" severity failure;

        i_Hex <= "0101"; wait for 10 ns;
            assert o_seg_n = "0010010" report "Error on input 5" severity failure;

        i_Hex <= "0110"; wait for 10 ns;
            assert o_seg_n = "0000010" report "Error on input 6" severity failure;

        i_Hex <= "0111"; wait for 10 ns;
            assert o_seg_n = "1111000" report "Error on input 7" severity failure;

        i_Hex <= "1000"; wait for 10 ns;
            assert o_seg_n = "0000000" report "Error on input 8" severity failure;

        i_Hex <= "1001"; wait for 10 ns;
            assert o_seg_n = "0011000" report "Error on input 9" severity failure;

        i_Hex <= "1010"; wait for 10 ns;
            assert o_seg_n = "0001000" report "Error on input A" severity failure;

        i_Hex <= "1011"; wait for 10 ns;
            assert o_seg_n = "0000011" report "Error on input b" severity failure;

        i_Hex <= "1100"; wait for 10 ns;
            assert o_seg_n = "0100111" report "Error on input c" severity failure;

        i_Hex <= "1101"; wait for 10 ns;
            assert o_seg_n = "0100001" report "Error on input d" severity failure;

        i_Hex <= "1110"; wait for 10 ns;
            assert o_seg_n = "0000110" report "Error on input E" severity failure;

        i_Hex <= "1111"; wait for 10 ns;
            assert o_seg_n = "0001110" report "Error on input F" severity failure;

        report "All tests passed!" severity note;
        wait;
    end process;

end Behavioral;