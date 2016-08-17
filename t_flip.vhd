----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sachith Nalaka Muhandiram
-- 
-- Create Date:    12:15:16 07/31/2016 
-- Design Name: 
-- Module Name:    t_flip - Behavioral 
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

entity t_flip is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           Q0 : inout  STD_LOGIC;
           Q1 : inout  STD_LOGIC);
end t_flip;

architecture Structural of t_flip is

component and_clk is
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset :in  STD_LOGIC;
           C : out  STD_LOGIC);
end component and_clk;

component nor_clk is
Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           F : out  STD_LOGIC);
end component nor_clk;

Signal S0,S1,S2,S3,S4,S5: STD_LOGIC;

begin

and_gate1 : and_clk
Port map ( A =>T,
           B => S2,
           clk =>clk,
			  reset => reset,
           C =>S0);

and_gate2 : and_clk
Port map ( A =>T,
           B => S3,
           clk =>clk,
			  reset => reset,
           C =>S1);	

nor_gate1 : nor_clk 
Port map( D => S0,
           E => S5,
			clk => clk,
			reset => reset,
           F => Q0);	

nor_gate2 : nor_clk 
Port map( D => S1,
           E => S4,
           clk => clk,
			  reset => reset,
           F => Q1);	
			  
	--feedback signals
S2 <= Q0;
S4 <= Q0;

S3 <= Q1;
S5 <= Q1;

	
end Structural;

