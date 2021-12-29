----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:29 12/20/2020 
-- Design Name: 
-- Module Name:    MAIN_CONTROL_UNIT - Behavioral 
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

entity MAIN_CONTROL_UNIT is
    Port ( Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           BRANCH : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           RegDest : out  STD_LOGIC;
           JUMP : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (1 downto 0));
end MAIN_CONTROL_UNIT;

architecture Behavioral of MAIN_CONTROL_UNIT is

begin
process(Opcode)
begin

if Opcode="000000" then       --R/type INSTRUCT OPCODE=0
           JUMP    <='0' ;
            BRANCH   <='0' ;
          MemRead  <='0' ;
           MemtoReg <='0' ;
            MemWrite <='0' ;
           AluSrc  <='0' ;
           RegWrite <='1' ;
           RegDest  <='1' ;
           AluOp   <="10";
			 

elsif Opcode="100011" then     --Load  23 HEX
           JUMP     <='0'  ;
           BRANCH   <='0'  ;
           MemRead <='1'  ;
           MemtoReg <='1'  ; 
            MemWrite <='0'  ;
           AluSrc   <='1'  ;
           RegWrite <='1'  ;
           RegDest  <='0'  ;
           AluOp    <="00" ;
			  
			


elsif Opcode="101011" then     --Store  2b HEX
           JUMP     <='0'  ;
          BRANCH   <='0'  ; 
          MemRead <='0'  ;
           MemWrite <='1'  ;
            AluSrc   <='1'  ;
           RegWrite <='0'  ;
          AluOp   <="00" ;
			  
			 

elsif Opcode="000100" then    --beq 4 HEX
           JUMP	<='0'  ;
          BRANCH   <='1'  ;
          MemRead <='0'  ;
            MemWrite <='0'  ;
           AluSrc   <='0'  ;
           RegWrite <='0'  ;
           AluOp    <="01" ;
			  
			 
   
elsif Opcode="000010" then    --Jump  2 HEX
           JUMP    <='1'  ;
           BRANCH   <='0'  ;
           MemRead  <='0'  ;
           MemWrite <='0'  ;
           RegWrite <='0'  ;
           AluOp    <="11" ;
			 


else
			  JUMP     <='0'  ;
          BRANCH   <='0'  ;
          MemRead  <='0'  ;
          MemtoReg<='0'  ; 
            MemWrite <='0'  ;
            AluSrc  <='0'  ;
          RegWrite <='0'  ;
           RegDest  <='0'  ;
          AluOp  <="00" ;
			 
end if ;
end process ;
end Behavioral;




