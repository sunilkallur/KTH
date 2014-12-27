USE WORK.ALL;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY test IS END test;

ARCHITECTURE tb_addSub OF test IS

   CONSTANT width : integer:=8;  	-- Determines the width of the add/sub unit.

   COMPONENT addSub
     GENERIC (
	size: INTEGER :=4
	);
     PORT (
	a: IN std_logic_vector(size-1 downto 0);
	b: IN std_logic_vector(size-1 downto 0);
	cin:IN std_logic;
	sub: IN std_logic; -- sub = 0 => addition; sub = 1 => subtraktion 
	sum:OUT std_logic_vector(size-1 downto 0);
	cout:OUT std_logic
	);
  END component;  
  
  FUNCTION to_bitvector(a:INTEGER;length:NATURAL) RETURN std_logic_vector IS
     -- This function converts an integer to a bitvecor of length.
     -- To do this conversion are conversiob functions from 
     -- IEEE library used. 
   BEGIN
     RETURN std_logic_vector (to_signed(a,length));
   END;

   SIGNAL a,b,are:std_logic_vector(width-1 downto 0);
   SIGNAL sub,cout:std_logic;

   
BEGIN

  T1:addSub GENERIC MAP (width) PORT MAP (a=>a,b=>b,cin=>'0',sub=>sub,sum=>are,cout=>cout);
  
  a <=  to_bitvector(0,width),
        to_bitvector(-1,width) AFTER 10 ns,
        to_bitvector(5,width) AFTER 20 ns;
       
  b <= to_bitvector(0,width),
       to_bitvector(-1,width) AFTER 5 ns,
       to_bitvector(5,width) AFTER 15 ns;
       
   sub <= '0',
          '1' AFTER 2 ns,
          '0' AFTER 7 ns,
          '1' AFTER 12 ns,
          '0' AFTER 17 ns;


END tb_addSub;







