library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_FA is
end tb_FA;

architecture dataflow_FA of tb_FA is

component FullAdder 
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
c : in STD_LOGIC;
s : out STD_LOGIC;
co : out STD_LOGIC);
end component;

signal tv:std_logic_vector(2 downto 0) := "000";
signal s,co :std_logic := '0';

begin

U1:FullAdder port map (tv(0),tv(1),tv(2),s,co);
tv <= "000", 
      "100" AFTER 10 ns,
      "110" AFTER 15 ns,
      "111" AFTER 20 ns,
      "110" AFTER 25 ns,
      "010" AFTER 27 ns,
      "101" AFTER 30 ns;
END dataflow_FA;