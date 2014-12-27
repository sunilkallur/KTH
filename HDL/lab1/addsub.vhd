LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY addsub IS
  GENERIC (size: INTEGER:=8);
  PORT (
    a: IN std_logic_vector(size-1 downto 0);
    b: IN std_logic_vector(size-1 downto 0);
    cin:IN std_logic;
    sub: IN std_logic; -- sub = 0 => addition;
                       -- sub = 1 => subtraction
    sum:OUT std_logic_vector(size-1 downto 0);
    cout:OUT std_logic);
END addsub;

architecture structural of addsub is
  
  component FullAdder 
  Port ( a : in std_logic;
  b : in std_logic;
  c : in std_logic;
  s : out std_logic;
  co : out std_logic);
  end component;
  
  signal c_inter : std_logic_vector(size downto 0) := (others => '0');
  signal b_in    : std_logic_vector (size-1 downto 0) := (others => '0');
  
  begin
    
    c_inter(0) <= cin;
    
    G:For i in 0 to (size-1) generate
      U1:FullAdder port map(a(i),b_in(i),c_inter(i),sum(i),c_inter(i+1));
        
      b_in(i) <= b(i) XOR sub;
      
  end generate G;

  cout <= c_inter(size);
    
end structural;
