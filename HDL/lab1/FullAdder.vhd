----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:48 11/06/2013 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder is
Port ( a : in std_logic;
b : in std_logic;
c : in std_logic;
s : out std_logic;
co : out std_logic);
end FullAdder;

architecture dataflow of FullAdder is
begin
s <= a xor b xor c;
co <= (a and b) or ((a xor b) and c);
end dataflow;

