----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:12 02/16/2015 
-- Design Name: 
-- Module Name:    Master - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Master is
   Port ( Reset: in  STD_LOGIC;
			Compute : out  STD_LOGIC);
end Master;

architecture Behavioral of Master is



 variable I :integer:=0;
 variable H :integer:=0;
 signal adjacent: STD_LOGIC_VECTOR (num_vertices DOWNTO 0);
 
begin
 
 process(terminated)
	begin
	
	   if (reset)then
			superstep <= 0;
		end if;
		
		if(terminated=num_workers)then
			compute<='0';
			
			for I in 0 to num_vertices loop
			   sum(I)<="00000000";
				for H in 0 to num_vertices loop
					sum(I)<= sum(I) + PR(H)*adjacent(H);
				end loop;
         end loop;	
         superstep<=superstep+1;			
		end if;
		
		compute<='1';
		
 end process;

end Behavioral;

