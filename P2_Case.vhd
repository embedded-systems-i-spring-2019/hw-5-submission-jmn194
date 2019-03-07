----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 11:56:55 AM
-- Design Name: 
-- Module Name: P2_Case - Behavioral
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

entity P2_Case is
Port ( A, B : in std_logic_vector(1 downto 0);
       D : in std_logic;
       E : out std_logic);
end P2_Case;

architecture Behavioral of P2_Case is

signal Asig, Bsig, Csig, Dsig : std_logic;
signal Cin : std_logic_vector(1 downto 0);
signal Ein : std_logic_vector(2 downto 0);

begin

process(A)
begin
case (A) is
  when "11" => Asig <= '1';
  when others => Asig <= '0';
end case;
end process;

process(B)
begin 
case (B) is
  when "00" => Bsig <= '0';
  when others => Bsig <= '1';
end case;
end process;
Dsig <= not D;

Cin <= B(1) & Dsig;

process(Cin)
begin
case (Cin) is
  when "11" => Csig <= '1';
  when others => Csig <= '0';
end case;
end process;

Ein <= (Asig & Bsig & Csig);

process(Ein)
begin
case (Ein) is
  when "000" => E <= '0';
  when others => E <= '1';
end case;
end process;

end Behavioral;

