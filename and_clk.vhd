----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sachith Nalaka Muhandiram
-- 
-- Create Date:    11:55:09 07/31/2016 
-- Design Name: 
-- Module Name:    and_clk - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_clk is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           clk : in  STD_LOGIC;
           C : out  STD_LOGIC);
end and_clk;

architecture Behavioral of and_clk is

begin
process(A,B,reset,clk) 	--changing variables when program executes
begin

if (reset = '1') then
C <= '0';
elsif clk'event and clk='1' then --when clk is high.
 C <= A and B;
end if;
end process;

end Behavioral;

