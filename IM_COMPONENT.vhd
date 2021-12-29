----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:59 12/20/2020 
-- Design Name: 
-- Module Name:    IM_COMPONENT - Behavioral 
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

entity IM_COMPONENT is
    Port ( PC : in  STD_LOGIC_VECTOR (31 downto 0);
           INSTRUCT : out  STD_LOGIC_VECTOR (31 downto 0));
end IM_COMPONENT;

architecture Behavioral of IM_COMPONENT is

TYPE regArray IS array(0 to 64) OF std_logic_vector(7 DOWNTO 0);
SIGNAL RF: regArray:=(
0=>"00100001",
1=>"10001001",
2=>"00000000",
3=>"00001000",
4=>"10101100",
5=>"00001001",
6=>"00000000",
7=>"00000100",
8=>"00000001",
9=>"10001101",
10=>"01010000",
11=>"00100000",
12=>"00100001",
13=>"01001100",
14=>"00000000",
15=>"00000101",
16=>"10001100",
17=>"00001111",
18=>"00000000",
19=>"00000100",
20=>"00010001",
21=>"00101111",
22=>"00000000",
23=>"00001010",
24=>"00000001",
25=>"01101010",
26=>"01101000",
27=>"00100000",
28=>"00000001",
29=>"10001101",
30=>"10000000",
31=>"00100000",
32=>"00000001",
33=>"10001101",
34=>"10000000",
35=>"00100000",
36=>"00000001",
37=>"10001101",
38=>"10000000",
39=>"00100000",
40=>"00000000",
41=>"00000000",
42=>"01101000",
43=>"00100000",

others =>"11111100"
  );

signal data : std_logic_vector(31 downto 0):= x"00000000";

BEGIN


INSTRUCT <= RF(CONV_INTEGER(PC(5 downto 0)))&RF(CONV_INTEGER(PC(5 downto 0))+1)&RF(CONV_INTEGER(PC(5 downto 0))+2)&RF(CONV_INTEGER(PC(5 downto 0))+3); 


end Behavioral;
