----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 12:16:52 PM
-- Design Name: 
-- Module Name: P7_Case - Behavioral
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

entity P7_Case is
port ( sel :  in std_logic_vector(2 downto 0);
	   output : out std_logic_vector(7 downto 0));
end P7_Case;

architecture Behavioral of P7_Case is

begin



process(sel)
begin
case sel is
  when "000" => output <= "00000001";
  when "001" => output <= "00000010";
  when "010" => output <= "00000100";
  when "011" => output <= "00001000";
  when "100" => output <= "00010000";
  when "101" => output <= "00100000";
  when "110" => output <= "01000000";
  when "111" => output <= "10000000";
  when others => output <= "00000001";
end case;
end process;

end Behavioral;
