----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sachith Nalaka Muhandiram
-- 
-- Create Date:    12:07:54 07/31/2016 
-- Design Name: 
-- Module Name:    nor_clk - Behavioral 
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

entity nor_clk is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           clk : in  STD_LOGIC;
           F : out  STD_LOGIC);
end nor_clk;

architecture Behavioral of nor_clk is

begin
process(D,E,clk,reset)
begin

if (reset = '1') then
F <= '0';
elsif clk'event and clk='1' then
 F <= D nor E;
end if;
end process;

end Behavioral;



