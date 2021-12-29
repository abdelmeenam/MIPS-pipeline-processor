----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:42 12/20/2020 
-- Design Name: 
-- Module Name:    DATA_MEM - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--USE ieee.numeric_std.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DATA_MEM IS
	PORT (
		ReadSig   : IN STD_LOGIC;
		WriteSig  : IN STD_LOGIC;
		Clock: in STD_LOGIC;	
		Address   : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		DataInput : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		DataOutput  : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END DATA_MEM;
ARCHITECTURE Behavioral OF DATA_MEM IS
	TYPE RAM_16_x_32 IS ARRAY(0 TO 15) OF std_logic_vector(31 DOWNTO 0);
	SIGNAL DM : RAM_16_x_32 := (
		x"00000000", -- assume starts at 0x1000100000
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000",
		x"00000000"
	);
BEGIN
	PROCESS (Clock,WriteSig, ReadSig) -- pulse on write
	-- Note: 268500992 = 0x10010000
	BEGIN
	if(rising_edge(Clock)) then
		IF (WriteSig = '1') THEN
			DM((conv_integer(Address) - 268500992) / 4) <= DataInput;
		END IF;
		end if;
		IF (ReadSig = '1') THEN
			DataOutput <= DM((conv_integer(Address) - 268500992)/4);
		END IF;
		-- it gives, 0, 1, 2, 3, 4, ...
	END PROCESS;
END Behavioral;

