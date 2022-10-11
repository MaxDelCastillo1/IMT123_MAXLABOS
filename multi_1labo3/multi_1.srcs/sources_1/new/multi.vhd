----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2022 11:54:37 PM
-- Design Name: 
-- Module Name: multi - Behavioral
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

entity multi is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           Q : out STD_LOGIC);
end multi;

architecture Behavioral of multi is

component OR_GATE4to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component OR_GATE4to1;

component AND_GATE3to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component AND_GATE3to1;

component NOT_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE_2to1;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';
signal temp8: std_logic:='0';

begin

uutn: NOT_GATE_2to1 port map (A=>S1, B=>temp1);
uutn1: NOT_GATE_2to1 port map (A=>S0, B=>temp2);
uut: AND_GATE3to1 port map (A=>D0, B=>temp1, C=>temp2, D=>temp3);
uut1: AND_GATE3to1 port map (A=>D1, B=>temp1, C=>S0, D=>temp4);
uut2: AND_GATE3to1 port map (A=>D2, B=>S1, C=>temp2, D=>temp5);
uut3: AND_GATE3to1 port map (A=>D3, B=>S1, C=>S0, D=>temp6);
uut4: OR_GATE4to1 port map (A=>temp3, B=>temp4, C=>temp5, D=>temp6, E=>Q);

end Behavioral;
