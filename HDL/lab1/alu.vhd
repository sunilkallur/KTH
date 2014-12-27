USE WORK.all; -- all compiled components end up in the
              -- library work.
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY alu IS
GENERIC (size: INTEGER);
  PORT (
    a:IN std_logic_vector (size-1 downto 0);
    b:IN std_logic_vector (size-1 downto 0);
    ctrl:IN std_logic_vector (1 downto 0);
    q:OUT std_logic_vector (size-1 downto 0);
    cout:OUT std_logic);
END alu;

architecture structural of alu is
  
  signal q_inter : std_logic_vector(size-1 downto 0);
  signal cout_inter: std_logic;
  
  COMPONENT addSub
       GENERIC (
    size: INTEGER :=8
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
    
    begin
      
      u1:addsub port map(a,b,'0',ctrl(0),q_inter,cout_inter);
      
        
      process(a,b,ctrl)
        begin
      
      case ctrl is
        when "00" => q<= q_inter;cout <= cout_inter;
        when "01" => q<= q_inter;cout <= cout_inter;
        when "10" => q<= a NAND b;
        when others => q<= a NOR b;
      end case;
    end process;
    end structural;
      
