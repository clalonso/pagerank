----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:52:48 02/16/2015 
-- Design Name: 
-- Module Name:    Worker - Behavioral 
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

USE work.PageRankPackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Worker is
   Port (compute : in STD_LOGIC);
	
end Worker;

architecture Behavioral of Worker is
   CONSTANT worker_id : natural:= 0;
	variable I :integer:=id_worker;
	
begin

	process(superstep,compute)
		begin
			if(superstep<30 and compute=1) then
				while (I <= num_vertices) loop
					if (I<k)then
						if (superstep=0) then
							PR(I)<=1/num_vertices;
						elsif (superstep>0) then
							PR(I)<=0.15/num_vertices +0.85*sum(I);
						end if;
						I := I + num_workers;
					end if;
				end loop;
				teminated <= teminated+1;
			end if;
   end process;
	
	
end Behavioral;

