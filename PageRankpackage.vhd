--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package PageRankPackage is

-------------------------------------------------------------------------------
-- Type for array
-------------------------------------------------------------------------------

  SUBTYPE item_array8 IS std_logic_vector (7 downto 0);
  TYPE array8 IS array (integer range <>) of item_array8;
  
--  type <new_type> is
--    record
--        <type_name>        : std_logic_vector( 7 downto 0);
--        <type_name>        : std_logic;
--    end record;

-- Declare constants

   CONSTANT num_workers : natural := 2;
	CONSTANT num_vertices : natural := 16;
	VARIABLE superstep : natural := 0;
	VARIABLE terminated : natural := 0;
	signal PR: array8(num_vertices downto 0);
	signal adjacent: array8(num_vertices+1 downto 2*num_vertices);
	signal sum: array8(2*num_vertices+1 downto 3*num_vertices);
-- Declare functions and procedure

--  function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
--  procedure <procedure_name>	(<type_declaration> <constant_name>	: in <type_declaration>);

end PageRankPackage;


package body PageRankPackage is

-- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;
--
--
---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;
--
---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end PageRankPackage;
