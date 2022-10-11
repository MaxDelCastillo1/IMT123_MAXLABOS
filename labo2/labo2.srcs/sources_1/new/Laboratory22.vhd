----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/16/2022 09:20:12 AM
-- Design Name: 
-- Module Name: Laboratory22 - Behavioral
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

entity Laboratory22 is
    Port ( A2 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           C2 : in STD_LOGIC;
           SUM2 : out STD_LOGIC;
           SUM3 : out STD_LOGIC);
end Laboratory22;

architecture Behavioral of Laboratory22 is


component AND_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE2to1;

component OR_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component OR_GATE2to1;

component XOR_GATE2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component XOR_GATE2to1;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';

begin

uut: XOR_GATE2to1 port map (A=>A2, B=>B2, C=>temp1);
uut1: XOR_GATE2to1 port map (A=>temp1, B=>C2, C=>SUM2);
uut2: AND_GATE2to1 port map (A=>temp1, B=>C2, C=>temp2);
uut3: AND_GATE2to1 port map (A=>A2, B=>B2, C=>temp3);
uut4: OR_GATE2to1 port map (A=>temp2, B=>temp3, C=>SUM3);

end Behavioral;
