library work;
use work.misc.all;


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;  


ENTITY ROM_Process IS
    generic( filter_taps: integer :=5;
           width      : integer :=16); 
PORT ( 

address : in std_logic_vector(log2_ceil(filter_taps) downto 0);
coeficient_out: out std_logic_vector(width-1 downto 0)
);
end ROM_Process;

architecture ROM_Process_behavioural of ROM_Process is
    type fixed_type is array (0 to filter_taps-1) of std_logic_vector(width-1 downto 0);
--    type fixed_type is array (0 to 8-1) of std_logic_vector(width-1 downto 0);

constant coeff_array : fixed_type :=
(
         ("0000000000000001"),-- 0
         ("0000000000000010"),-- 1
         ("0000000000000011"),-- 2
         ("0000000000000100"),-- 3
         ("0000000000001000")-- 8
 );
begin
    

      coeficient_out <= coeff_array (conv_integer(unsigned(address)));
                    
end ROM_Process_behavioural;
