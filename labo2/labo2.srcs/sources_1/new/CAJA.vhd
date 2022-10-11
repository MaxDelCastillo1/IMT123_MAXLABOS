----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/16/2022 09:25:40 AM
-- Design Name: 
-- Module Name: CAJA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CAJA is
    Port ( AA1 : in STD_LOGIC;
           BB1 : in STD_LOGIC;
           AA2 : in STD_LOGIC;
           BB2 : in STD_LOGIC;
           CC : in STD_LOGIC;
           SUM_1 : out STD_LOGIC;
           SUM_2 : out STD_LOGIC;
           SUM_3 : out STD_LOGIC);
end CAJA;

architecture Behavioral of CAJA is

component Laboratory2 is
    Port ( A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           SUM : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component Laboratory2;

component Laboratory22 is
    Port ( A2 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           C2 : in STD_LOGIC;
           SUM2 : out STD_LOGIC;
           SUM3 : out STD_LOGIC);
end component Laboratory22;

signal temp1: std_logic:='0';

begin

uut: Laboratory2 port map (A1=>AA1, B1=>BB1, C1=>CC, SUM=>SUM_1, Cout=>temp1);
uut1: Laboratory22 port map (A2=>AA2, B2=>BB2, C2=>temp1, SUM2=>SUM_2, SUM3=>SUM_3);



end Behavioral;
