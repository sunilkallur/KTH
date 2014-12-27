library ieee;
use ieee.std_logic_1164.all;

entity tb_Dbit is
end entity;

ARCHITECTURE tb_Dbit OF test IS
  
  CONSTANT size : integer:=8; 
  
  COMPONENT DLatch
    PORT (
      d:IN std_logic;
      clk:IN std_logic;
      q:OUT std_logic);
  END COMPONENT;
  COMPONENT Dflipflop
    generic ( size : integer := 8 );
    PORT (
      d:IN std_logic_vector(size-1 downto 0);
      clk:IN std_logic;
      en :IN std_logic;
      q:OUT std_logic_vector(size-1 downto 0));
  END COMPONENT;
  SIGNAL test,en,clk,qLatch,qFlipFlop:std_logic:='0';
  signal d,reg : std_logic_vector(size-1 downto 0);
  
BEGIN
  test<= '0',
         '1' AFTER 15 ns,
         '0' AFTER 65 ns,
         '1' AFTER 70 ns,
         '0' AFTER 75 ns,
         '1' AFTER 125 ns;
         
  d <= "00000000",
       "00000001" AFTER 15 ns,
       "00000000" AFTER 65 ns,
       "00000001" AFTER 70 ns,
       "00000000" AFTER 75 ns,
       "00000001" AFTER 125 ns;
       
U1:DLatch PORT MAP(test, clk, qLatch);
--U2:DFlipFlop PORT MAP(test, clk, qFlipFlop);
U2:DFlipFlop PORT MAP(d, clk,en,reg);
  
  en <= '1',
        '0' AFTER 100 ns;
  
  clk<='0',
       '1' AFTER 20 NS,
       '0' AFTER 40 NS,
       '1' AFTER 60 ns,
       '0' AFTER 80 ns,
       '1' AFTER 100 ns,
       '0' AFTER 120 ns;
  -- This assignment can also be used but then you cannot type
  -- run -all in the simulation
  -- clk <= not(clk) after 20 ns;
END tb_Dbit;
