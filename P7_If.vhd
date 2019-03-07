----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 12:13:04 PM
-- Design Name: 
-- Module Name: P7_If - Behavioral
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

entity P7_If is
port ( sel :  in std_logic_vector(2 downto 0);
	   output : out std_logic_vector(7 downto 0));
end P7_If;

architecture Behavioral of P7_If is

begin

Process(sel)
Begin
If sel = "000" then
  output <= "00000001";
elsif sel = "001" then
  output <= "00000010";
elsif sel = "010" then
  output <= "00000100";
elsif sel = "011" then
  output <= "00001000";
elsif sel = "100" then
  output <= "00010000";
elsif sel = "101" then
  output <= "00100000";
elsif sel = "110" then
  output <= "01000000";
elsif sel = "111" then
  output <= "10000000";
else
  output <= "00000001";
end if;
end process;

end Behavioral;
