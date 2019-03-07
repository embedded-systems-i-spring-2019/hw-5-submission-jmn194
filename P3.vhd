----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 12:02:17 PM
-- Design Name: 
-- Module Name: P3 - Behavioral
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

entity P3 is
Port ( A, B : in std_logic_vector(1 downto 0);
	D : in std_logic;
	E : out std_logic);
end P3;

architecture Behavioral of P3 is

begin
E <= ((A(1) and A(0)) or (B(1) or B(0)) or (B(1) and not D));


end Behavioral;
