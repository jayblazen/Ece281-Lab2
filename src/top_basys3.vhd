----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 01:51:34 PM
-- Design Name: 
-- Module Name: top_basys3 - Behavioral
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


entity top_basys3 is
    Port (
        sw   : in  STD_LOGIC_VECTOR (3 downto 0);
        btnC : in  STD_LOGIC;
        seg  : out STD_LOGIC_VECTOR (6 downto 0);
        an   : out STD_LOGIC_VECTOR (3 downto 0)
    );
end top_basys3;

architecture Behavioral of top_basys3 is

    signal w_seg : STD_LOGIC_VECTOR (6 downto 0);

begin

    sevenseg_inst : entity work.sevenseg_decoder
        port map (
            i_Hex   => sw,
            o_seg_n => w_seg
        );

    -- Active-LOW button assumption
    an  <= "1110" when btnC = '0' else "1111";
    seg <= w_seg  when btnC = '0' else "1111111";

end Behavioral;
