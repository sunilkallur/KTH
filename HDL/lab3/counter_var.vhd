------------------------------------------------------
-- File Name : counter_var.vhd
------------------------------------------------------
architecture Arch_counter_var of counter_sig is
begin
-----------------------------------------------------
  process (clk,RESET)
    variable COUNT : std_logic_vector(3 downto 0);
  begin
    if RESET = '0' then
      COUNT := (others=>'0');
      OUT1 <= '0';
      OUT2 <= (others=>'0');
    elsif clk'event AND clk='1' then
 
     case UP is
        when '1' => 
                --  if COUNT > 11 then
                      COUNT:=COUNT+1;
                --  else
                 --     COUNT := "0000"; 
                 --end if;
        when others=> 
                --  if COUNT > 0 then
                      COUNT:=COUNT-1;
                --  else
                 --     COUNT := "1001";
               -- end if; 
      end case;
      
      if (UP='1' and COUNT=10) or (UP='0' and COUNT=15) then
                    OUT1 <= '1';
                    --COUNT := "0000";
      else
                    OUT1 <= '0';
                  --  COUNT := "1001";
      end if;
      
      if (COUNT = "1010") then
         COUNT := "0000";
      elsif (COUNT = "1111") then
         COUNT := "1001";
    end if;
      
      OUT2 <= COUNT;
  end if;
end process;
-----------------------------------------------------
end; -- Arch_counter_var
