----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:41 12/20/2020 
-- Design Name: 
-- Module Name:    REG_FILE - Behavioral 
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
use ieee.numeric_std.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG_FILE is
    Port ( READ_ADD1 : in  STD_LOGIC_VECTOR (4 downto 0);
           READ_ADD2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WRITE_ADD : in  STD_LOGIC_VECTOR (4 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           REG_WRITE_S : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DATA1 : out  STD_LOGIC_VECTOR (31 downto 0);
           DATA2 : out  STD_LOGIC_VECTOR (31 downto 0));
end REG_FILE;

architecture Behavioral of REG_FILE is

type REG_ARRAY is array (0 to 31) of std_logic_vector(31 downto 0);
signal REGFILE : REG_ARRAY := (others => (others => '0')) ;

signal D1,D2 : std_logic_vector(31 downto 0) := x"00000000";

begin

process(CLK,READ_ADD1,READ_ADD2, WRITE_ADD,WRITE_DATA,REG_WRITE_S)
begin


	if(REG_WRITE_S='1' and WRITE_ADD/="00000")then
		REGFILE(to_integer(unsigned(WRITE_ADD))) <= WRITE_DATA;
	end if;
	
end process;
process(CLK)
begin
if(rising_edge(CLK))then
	D1 <= REGFILE( to_integer(unsigned(READ_ADD1)) );
	D2 <= REGFILE( to_integer(unsigned(READ_ADD2)) );
end if;

end process;

DATA1<= D1;
DATA2<= D2;

end Behavioral;