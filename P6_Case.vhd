----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 12:07:01 PM
-- Design Name: 
-- Module Name: P6_Case - Behavioral
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

entity P6_Case is
Port( input1, input2, input3, input4, input5, input6, input7, input8 : in std_logic;
      Sel : in std_logic_vector(2 downto 0);
      Output : out std_logic);
end P6_Case;

architecture Behavioral of P6_Case is

begin

Process(sel)
Begin
case sel is
  when "000" => output <= input1;
  when "001" => output <= input2;
  when "010" => output <= input3;
  when "011" => output <= input4;
  when "100" => output <= input5;
  when "101" => output <= input6;
  when "110" => output <= input7;
  when "111" => output <= input8;
  when others => output <= input1;
End case;
End process;


end Behavioral;
