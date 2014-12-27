library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_signed.ALL;

entity alarm is
  port(clk,up,rst:IN std_logic;
        led1,led2 : OUT std_logic_vector(3 downto 0)
     );
end alarm;
  
architecture alarm_arch of alarm is
  signal ref_clock : std_logic := '0';
  signal ctr1_out1,ctr2_out1 : std_logic;
  --signal ref_cntr:integer range 0 to 15 := 0;
  --signal ref_clk : std_logic:='0';
  component counter_sig
    port( UP, CLK, RESET : in std_logic;
          OUT1 : out std_logic;
          OUT2 : out std_logic_vector(3 downto 0)
    );
  end component;
  
  for U1:counter_sig use entity work.counter_sig(Arch_counter_var);
 
  begin
    
    U1 :counter_sig port map(up,ref_clock,rst,ctr1_out1,led1);-- unit place
    U2 :counter_sig port map(up,ctr1_out1,rst,ctr2_out1,led2);--Tenth place
    
    process(clk,up,rst)
      variable ref_cntr:integer range 0 to 15 := 0;
      variable ref_clk : std_logic:='0';
     
      begin
        
        if ref_cntr = 15 then
           ref_clk := not(ref_clk);
           ref_cntr := 0;
        
        elsif clk'event and clk ='1' then
          ref_cntr :=  ref_cntr + 1;
               
        end if;
        
        ref_clock <= ref_clk;
    end process;
      
end alarm_arch;
        
            
           
          
          
        
        
        
        
        