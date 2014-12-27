use work.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
end test;

architecture alu_test of test is
  constant width : integer :=8;
  signal a,b,q : std_logic_vector(width-1 downto 0);
  signal ctrl :std_logic_vector(1 downto 0);
  signal cout,cin:std_logic :='0';
  
  component alu
  GENERIC (size: INTEGER := 4);
    PORT (
      a:IN std_logic_vector (size-1 downto 0);
      b:IN std_logic_vector (size-1 downto 0);
      ctrl:IN std_logic_vector (1 downto 0);
      q:OUT std_logic_vector (size-1 downto 0);
      cout:OUT std_logic);
  END component;
    
    FUNCTION to_bitvector(a:INTEGER;length:natural) RETURN std_logic_vector IS
         -- This function converts an integer to a bitvecor of length.
         -- To do this conversion are conversiob functions from 
         -- IEEE library used. 
       BEGIN
         RETURN std_logic_vector (to_signed(a,length));
       END;
       
    procedure behave_alu(a:integer;b:integer;ctrl:integer;q:out std_logic_vector(width-1 downto 0);cout:out std_logic) is
    --this is the behavioural model of ALU
    variable ret:std_logic_vector(width downto 0);
    begin 
      case ctrl is
      when 0 => ret := to_bitvector(a+b,width+1);
      when 1 => ret := to_bitvector(a-b,width+1);ret(width) := not ret(width);
      when 2 => ret := '0' & (to_bitvector(a,width) nand to_bitvector(b,width));
      when 3 => ret := '0' & (to_bitvector(a,width) nor to_bitvector(b,width));
      when others => ASSERT false
                     REPORT "ctrl out of range, testbench error"
                      severity error;
    end case;
    
    q := ret(width-1 downto 0);
    cout := ret(width);
    END;
    
    
    begin
      
      process
        
      VARIABLE res:std_logic_vector ( width-1 downto 0);
    --  VARIABLE int_CTRL: std_logic_vector ( 2 downto 0);
      VARIABLE c:std_logic;
      
      BEGIN
      FOR i IN 0 TO width-1 LOOP
          a<= to_bitvector(i,width);
          
          FOR j IN 0 TO width LOOP
            b<= to_bitvector(j,width);
            FOR k IN 0 TO 3 LOOP
              ctrl<= to_bitvector(k,3)(1 downto 0);
              
              wait for 10 ns;
              behave_alu(i,j,k,res,c);
              
              ASSERT q = res
      
              REPORT "wrong result from ALU"
              SEVERITY warning;
              ASSERT cout = c
              REPORT "wrong carry from ALU"
              SEVERITY warning;
            END LOOP;
        END LOOP;
      END LOOP;
      
      wait;
      
      END PROCESS;
      
      T1:alu GENERIC MAP(width)PORT MAP (a,b,ctrl,q,cout);
        
END alu_test;
    
  