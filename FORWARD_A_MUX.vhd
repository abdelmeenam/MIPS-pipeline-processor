----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:05 12/20/2020 
-- Design Name: 
-- Module Name:    FORWARD_A_MUX - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FORWARD_A_MUX is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
           input2 : in  STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
           input3 : in  STD_LOGIC_VECTOR (31 downto 0):=x"00000000";
           output : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end FORWARD_A_MUX;

architecture Behavioral of FORWARD_A_MUX is

signal TEMP : std_logic_vector(31 downto 0):= x"00000000";
begin

process(sel,input1,input2,input3)
begin

if(sel="00")then
	TEMP<=input1;  --	ID/EX 
elsif(sel="01")then
	TEMP<=input2;  --MEM/WB
elsif(sel="10")then
	TEMP<=input3;  --EX/MEM
else
	TEMP<=x"00000000";
end if;
end process;

output<=TEMP;
end Behavioral;

