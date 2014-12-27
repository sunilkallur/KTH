---------------------------------------------------------
---
-- Test Bench for Four Bit Up-Down Counter
-- File name : counter_sig_tb.vhd
---------------------------------------------------------
---
Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_signed.ALL;
architecture tb_alarm of test is
  component alarm 
  port(clk,up,rst:IN std_logic;
        led1,led2 : OUT std_logic_vector(3 downto 0)
     );
  end component;
  
  signal UP : std_logic := '1';
  signal RESET : std_logic := '0';
  signal CLK : std_logic := '0';
  signal led1 : std_logic_vector(3 downto 0):=(others=>'0');
  signal led2 : std_logic_vector(3 downto 0):=(others=>'0');
  --for U1:counter_sig use entity work.counter_sig(Arch_counter_sig2);
begin
  U1: alarm port map ( CLK,UP,RESET, led1, led2);
  RESET <= '1' after 30 ns;
  CLK <= not(CLK) after 15625 ps;
-----------------------------------------------------
  tb: process
      begin
        UP <= transport '0' after 100 ms;
        UP <= transport '1' after 130 ms;
        UP <= transport '0' after 175 ms;
        wait;
      end process; --tb
-----------------------------------------------------
end; -- tb_counter_sig2
