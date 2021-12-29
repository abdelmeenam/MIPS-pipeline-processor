----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:49 11/21/2020 
-- Design Name: 
-- Module Name:    InstructionMemory - Behavioral 
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

entity instructionmemory is
    Port ( pc : in  STD_LOGIC_VECTOR (31 downto 0);
           instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end instructionmemory;

architecture Behavioral of instructionmemory is

type Instruction_array is array( 0 to 31 ) of STD_LOGIC_VECTOR (31 downto 0);

begin

InstructionMemory_process: process (pc)
variable data_array : Instruction_array :=
(
("00000000001000100001000000100000"),	--	add r2,r1,r2
("00000000010000110001000000100010"),	-- sub r2,r2,r3	--RAW (alu forwarding)
("00000000010001000010100000100100"),  --	and r5,r2,r4	--double data hazard
("00000000010001010011000000100101"),  -- or  r6,r2,r5	--RAW (memory forwarding, alu forwarding)
("10101100111000100000000000000001"),  -- sw  r2, 1(r7)  --structural hazard
("10001101000000010000000000000000"),  -- lw  r1, 0(r8)  
("00000000001000110000100000100000"),  -- add r1,r1,r3   --RAW (stall)
("00010001001010100000000000000010"),	-- beq r9,r10,2	--taken branch (flush once and jump to lw r3, 1(r7))
("00000000010000110010000000100000"),  -- add r4,r2,r3
("00000000100001000010000000100000"),  -- add r4,r4,r4
("10001100111000110000000000000001"),  -- lw  r3, 1(r7)	
("00010001010010110000000000000001"),  -- beq r10,r11,1	--not taken branch (continue normal program flow)
("00000000001000100001000000100000"),  -- add r2,r1,r2
("00000000010001000010100000100100"),  -- and r5,r2,r4
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),	
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000"),
("00000000000000000000000000000000")
);

variable address: integer;

begin
address := conv_integer (UNSIGNED(pc));
Instruction <= data_array (address);  
end process InstructionMemory_process;
end Behavioral;

