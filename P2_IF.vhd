----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 11:55:58 AM
-- Design Name: 
-- Module Name: P2_IF - Behavioral
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
entity P2_IF is
Port ( A, B : in std_logic_vector(1 downto 0);
       D : in std_logic;
       E : out std_logic);
end P2_IF;

architecture Behavioral of P2_IF is

signal Asig, Bsig, Csig, Dsig : std_logic;

begin
process(A, B, D)
begin

if ((A(0) and A(1)) = '1') then
  Asig <= '1';
else
  Asig <= '0';
end if;

if ((B(0) or B(1)) = '1') then
  Bsig <= '1';
else
  Bsig <= '0';
end if;

Dsig <= not D;

--if (D = '1') then
--  Dsig <= '0';
--else
--  Dsig <= '1';
--end if;

if ((Dsig and B(1)) = '1') then
  Csig <= '1';
else
  Csig <= '0';
end if;

if ((Asig or Bsig or Csig) = '1') then
  E <= '1';
else
  E <= '0';
end if;

end process;

end Behavioral;


