LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY Dflipflop IS
  generic ( size : integer );
  PORT(
    d: IN std_logic_vector(size-1 downto 0);
    clk: IN std_logic;
    en : IN std_logic;
    q: OUT std_logic_vector(size-1 downto 0));
END Dflipflop;

ARCHITECTURE behavioural OF Dflipflop IS
  component tristate_buf is
  generic ( size : integer:=8 );
  port ( D_in    : in    std_logic_vector (size -1 downto 0);
         Enable  : in    std_logic;
         D_out   : out   std_logic_vector (size -1 downto 0)
        );
end component;
    
  signal q_int : std_logic_vector(size-1 downto 0) := (others => '0');
BEGIN
  PROCESS(clk,d)
  BEGIN
    IF (clk='1' and clk'event) THEN
      q_int<=d;
    END IF;
  END PROCESS;
  
  U1: tristate_buf port map (q_int,en,q);
END behavioural;
