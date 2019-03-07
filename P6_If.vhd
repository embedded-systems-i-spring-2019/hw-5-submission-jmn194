----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 12:03:45 PM
-- Design Name: 
-- Module Name: P6_If - Behavioral
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

entity P6_If is
Port( input1, input2, input3, input4, input5, input6, input7, input8 : in std_logic;
      Sel : in std_logic_vector(2 downto 0);
      Output : out std_logic);
end P6_If;

architecture Behavioral of P6_If is

begin

process
Begin
if sel = "000" then
  output <= input1;
Elsif sel = "001" then
  Output <= input2;
Elsif sel = "010" then
  Output <= input3;
Elsif sel = "011" then
  Output <= input4;
Elsif sel = "100" then
  Output <= input5;
Elsif sel = "101" then
  Output <= input6;
Elsif sel = "110" then
  Output <= input7;
Elsif sel = "111" then
  Output <= input8;
Else
  Output <= input1;
End if;
End process;

end Behavioral;
