----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:04 12/20/2020 
-- Design Name: 
-- Module Name:    HAZZARD_UNIT - Behavioral 
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

entity HAZZARD_UNIT is
    Port ( MEM_READ : in  STD_LOGIC;
           id_ex_rt : in  STD_LOGIC_VECTOR (4 downto 0);
           if_id_rs : in  STD_LOGIC_VECTOR (4 downto 0);
           if_id_rt : in  STD_LOGIC_VECTOR (4 downto 0);
           PC_FLUSH : out  STD_LOGIC;
           if_id_flush : out  STD_LOGIC;
           mux_flush : out  STD_LOGIC);
end HAZZARD_UNIT;

architecture Behavioral of HAZZARD_UNIT is




Signal PC_TEMP : std_logic:='0';
signal FID_TEMP : std_logic:='0';
signal MUX_TEMP : std_logic:='0';
begin

PC_FLUSH<=PC_TEMP;     ---PC_WRITE=0
if_id_flush<=FID_TEMP; ---IF/ID_WRITE=0
mux_flush<=MUX_TEMP;    ---MUX SEL=0

process ( MEM_READ, id_ex_rt ,  if_id_rs , if_id_rt)
begin 
-- ID/EX.MemRead and  ((ID/EX.RegisterRt = IF/ID.RegisterRs) or  (ID/EX.RegisterRt = IF/ID.RegisterRt))

if( (MEM_READ='1' )and( (id_ex_rt = if_id_rs) or (id_ex_rt =  if_id_rt) ) )then 
PC_TEMP<='0';
FID_TEMP<='0';
MUX_TEMP<='0';
else

PC_TEMP<='1';
FID_TEMP<='1';
MUX_TEMP<='1';
end if;


end process;

end Behavioral;


