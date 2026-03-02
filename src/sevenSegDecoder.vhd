----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2024 04:39:09 PM
-- Design Name: 
-- Module Name: sevenSegDecoder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.

entity sevenSegDecoder is
--  Port ( );
port(
		i_D : in std_logic_vector(3 downto 0);
		o_S : out std_logic_vector(6 downto 0)

	);
end sevenSegDecoder;

architecture Behavioral of sevenSegDecoder is
    -- intermediate signals with initial value
    signal c_Sa : std_logic:= '1';
    signal c_Sb : std_logic:= '1';
    signal c_Sc : std_logic:= '1';
    signal c_Sd : std_logic:= '1';
    signal c_Se : std_logic:= '1';
    signal c_Sf : std_logic:= '1';
    signal c_Sg : std_logic:= '1';
  
begin

o_S(0) <= c_Sa;
o_S(1) <= c_Sb;
o_S(2) <= c_Sc;
o_S(3) <= c_Sd;
o_S(4) <= c_Se;
o_S(5) <= c_Sf;
o_S(6) <= c_Sg;

    c_Sa <= (i_D(2) and not i_D(1) and not i_D(0) ) or
            (i_D(3) and i_D(2) and not i_D(1) ) or
            (i_D(3) and not i_D(2) and i_D(1) and i_D(0) ) or
            (not i_D(3) and not i_D(2) and not i_D(1) and i_D(0) );
   c_Sb <= (i_D(3) and i_D(2) and not i_D(0) ) or
            (i_D(2) and i_D(1) and not i_D(0) ) or
            (i_D(3) and i_D(1) and i_D(0) ) or
            (not i_D(3) and i_D(2) and not i_D(1) and i_D(0) );
    c_Sc <= (not i_D(3) and not i_D(2) and i_D(1) and not i_D(0)) or
            (i_D(3) and i_D(2) and i_D(1) ) or
            (i_D(3) and i_D(2) and not i_D(0) );
    c_Sd <= (not i_D(3) and i_D(2) and not i_D(1) and not i_D(0)) or
            (not i_D(2) and not i_D(1) and i_D(0) ) or
            (i_D(2) and i_D(1) and i_D(0) ) or
            (i_D(3) and not i_D(2) and i_D(1) and not i_D(0) );
    c_Se <= (not i_D(3) and i_D(0)) or
            (not i_D(2) and not i_D(1) and i_D(0) ) or
            (not i_D(3) and i_D(2)and not i_D(1) );
    c_Sf <= (i_D(3) and i_D(2) and not i_D(1)) or
            (not i_D(3) and not i_D(2) and i_D(0) ) or
            (not i_D(3) and not i_D(2) and i_D(1) ) or
            (not i_D(3) and i_D(1) and i_D(0) );
    c_Sg <= '1' when (i_D = x"0") or (i_D = x"1") or (i_D = x"7") else '0';
   
end Behavioral;
