----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:07 12/20/2020 
-- Design Name: 
-- Module Name:    MUX_32_M - Behavioral 
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

entity MUX_32_M is
    Port ( MUX_IN1 : in  STD_LOGIC_VECTOR (31 downto 0);
           IN2 : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT : out  STD_LOGIC;
           X : in  STD_LOGIC_VECTOR (31 downto 0));
end MUX_32_M;

architecture Behavioral of MUX_32_M is

begin
OUTPUT <= MUX_IN1 WHEN X ='0' else
          IN2 ;


end Behavioral;

