----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:07:05 02/16/2015 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
	port (
    Reset     : in  std_logic);   -- Low_level-active asynchronous reset
end top;

architecture Behavioral of top is

	component Master is
		Port ( Reset: in  STD_LOGIC;
				Compute : out  STD_LOGIC);
	end component;
	
	component Worker is
   Port (compute : in STD_LOGIC);
	end component;
	
------------------------------------------------------------------------
-- Internal Signals
------------------------------------------------------------------------

	signal terminate    : std_logic;  -- End of the superstep
	
begin

	Master: Master 
		port map ( Reset => Reset,
				Compute =>terminate);
	Worker0: Worker 
		port map (compute => terminate);


end Behavioral;

