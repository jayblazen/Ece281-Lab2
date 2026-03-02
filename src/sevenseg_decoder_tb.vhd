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

entity sevenSegDecoder_tb is
--  Port ( )

end sevenSegDecoder_tb;


architecture Behavioral of sevenSegDecoder_tb is
    -- intermediate signals with initial value
    component sevenSegDecoder is
          port(
                 i_D : in std_logic_vector(3 downto 0);
                 o_S : out std_logic_vector(6 downto 0)
          );    
     end component sevenSegDecoder;
        
    signal w_seg: std_logic_vector(7 downto 0) := x"00";
    
    signal w_sw : std_logic_vector(3 downto 0) := x"0";
begin
SevenSegmentDisplayDecoder_uut: sevenSegDecoder
	port map(
            i_D => w_sw(3 downto 0),
            o_S => w_seg(6 downto 0)
             );

 test_process : process 
 begin
	
		w_sw <= x"0"; wait for 10 ns;
		  assert w_seg = x"1000000" report  "bad assert 1" severity error;
		w_sw <= x"1"; wait for 10 ns;
          assert w_seg = x"1111001" report  "bad assert 2" severity error;
        w_sw <= x"2"; wait for 10 ns;
          assert w_seg= x"0100100" report  "bad assert 3" severity error;
         w_sw <= x"3"; wait for 10 ns;
            assert w_seg= x"0110000" report  "bad assert 4" severity error;
        w_sw <= x"4"; wait for 10 ns;
          assert w_seg= x"0011001" report  "bad assert 5" severity error;
      w_sw <= x"5"; wait for 10 ns;
        assert w_seg = x"0010010" report  "bad assert 6" severity error;
        w_sw <= x"6"; wait for 10 ns;
          assert w_seg = x"0000010" report  "bad assert 7" severity error;
      w_sw <= x"7"; wait for 10 ns;
            assert w_seg = x"1111000" report  "bad assert 8" severity error;
        w_sw <= x"8"; wait for 10 ns;
            assert w_seg = x"0000000" report  "bad assert 9" severity error;
        w_sw <= x"9"; wait for 10 ns;
          assert w_seg = x"0011000" report  "bad assert 10" severity error;
      w_sw <= x"A"; wait for 10 ns;
            assert w_seg = x"0001000" report  "bad assert 11" severity error;
        w_sw <= x"B"; wait for 10 ns;
          assert w_seg= x"0000011" report  "bad assert 12" severity error;
		w_sw <= x"C"; wait for 10 ns;
            assert w_seg = x"0100111" report  "bad assert 13" severity error;
        w_sw <= x"D"; wait for 10 ns;
          assert w_seg = x"0100001" report  "bad assert 14" severity error;
          w_sw <= x"E"; wait for 10 ns;
            assert w_seg= x"0000110" report  "bad assert 15" severity error;
        w_sw <= x"F"; wait for 10 ns;
          assert w_seg = x"0001110" report  "bad assert 16" severity error;
		   
		wait; -- wait forever
		
	    end process;
   
end Behavioral;
