----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/30/2022 02:02:40 AM
-- Design Name: 
-- Module Name: LABO4 - Behavioral
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

entity LABO4 is
    Port ( A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           BI : in STD_LOGIC;
           A2 : out STD_LOGIC;
           B2 : out STD_LOGIC;
           C2 : out STD_LOGIC;
           D2 : out STD_LOGIC;
           E2 : out STD_LOGIC;
           F2 : out STD_LOGIC;
           G2 : out STD_LOGIC);
end LABO4;

architecture Behavioral of LABO4 is


component AND_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE_2to1;

component NOT_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE_2to1;

component AND_GATE_3to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : out STD_LOGIC);
end component AND_GATE_3to1;

component AND_GATE_4to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component AND_GATE_4to1;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';

signal and1: std_logic:='0';
signal and2: std_logic:='0';
signal and3: std_logic:='0';
signal and4: std_logic:='0';
signal and5: std_logic:='0';

signal nand1: std_logic:='0';
signal nand2: std_logic:='0';
signal nand3: std_logic:='0';
signal nand4: std_logic:='0';
signal nand5: std_logic:='0';

signal bodya1: std_logic:='0';
signal bodya2: std_logic:='0';
signal bodya3: std_logic:='0';

signal bodya11: std_logic:='0';
signal bodya22: std_logic:='0';
signal bodya33: std_logic:='0';

signal bodya111: std_logic:='0';
signal bodya222: std_logic:='0';

signal bodya1111: std_logic:='0';
signal bodya2222: std_logic:='0';
signal bodya3333: std_logic:='0';

signal bodya11111: std_logic:='0';
signal bodya22222: std_logic:='0';

signal bodya111111: std_logic:='0';
signal bodya222222: std_logic:='0';
signal bodya333333: std_logic:='0';

signal bodya1111111: std_logic:='0';
signal bodya2222222: std_logic:='0';



signal Nbodya1: std_logic:='0';
signal Nbodya2: std_logic:='0';
signal Nbodya3: std_logic:='0';

signal Nbodya11: std_logic:='0';
signal Nbodya22: std_logic:='0';
signal Nbodya33: std_logic:='0';

signal Nbodya111: std_logic:='0';
signal Nbodya222: std_logic:='0';

signal Nbodya1111: std_logic:='0';
signal Nbodya2222: std_logic:='0';
signal Nbodya3333: std_logic:='0';

signal Nbodya11111: std_logic:='0';
signal Nbodya22222: std_logic:='0';

signal Nbodya111111: std_logic:='0';
signal Nbodya222222: std_logic:='0';
signal Nbodya333333: std_logic:='0';

signal Nbodya1111111: std_logic:='0';
signal Nbodya2222222: std_logic:='0';

signal FA1: std_logic:='0';
signal FA2: std_logic:='0';
signal FA3: std_logic:='0';
signal FA4: std_logic:='0';
signal FA5: std_logic:='0';
signal FA6: std_logic:='0';
signal FA7: std_logic:='0';

signal temp55: std_logic:='0';
signal temp6: std_logic:='0';
signal temp7: std_logic:='0';
signal temp8: std_logic:='0';
signal temp9: std_logic:='0';
signal temp10: std_logic:='0';
signal temp11: std_logic:='0';
signal temp12: std_logic:='0';
signal temp13: std_logic:='0';
signal temp14: std_logic:='0';
signal temp15: std_logic:='0';

begin

uutn1: NOT_GATE_2to1 port map (A=>A1, B=>temp1);
uutn2: NOT_GATE_2to1 port map (A=>B1, B=>temp2);
uutn3: NOT_GATE_2to1 port map (A=>C1, B=>temp3);
uutn4: NOT_GATE_2to1 port map (A=>D1, B=>temp4);
uutn5: NOT_GATE_2to1 port map (A=>BI, B=>temp5);
uutn55: NOT_GATE_2to1 port map (A=>temp5, B=>temp55);

uuta1: AND_GATE_2to1 port map (A=>temp1, B=>temp55, C=>and1);
uuta2: AND_GATE_2to1 port map (A=>temp2, B=>temp55, C=>and2);
uuta3: AND_GATE_2to1 port map (A=>temp3, B=>temp55, C=>and3);
uuta4: AND_GATE_2to1 port map (A=>temp4, B=>temp55, C=>and4);

uutan1: NOT_GATE_2to1 port map (A=>and1, B=>nand1);
uutan2: NOT_GATE_2to1 port map (A=>and2, B=>nand2);
uutan3: NOT_GATE_2to1 port map (A=>and3, B=>nand3);
uutan4: NOT_GATE_2to1 port map (A=>and4, B=>nand4);

uutbodya1: AND_GATE_2to1 port map (A=>nand2, B=>nand4, C=>bodya1);
uutbodya2: AND_GATE_2to1 port map (A=>temp1, B=>nand3, C=>bodya2);
uutbodya3: AND_GATE_4to1 port map (A=>nand1, B=>temp2, C=>temp3, D=>temp4, E=>bodya3);

uutbodya11: AND_GATE_2to1 port map (A=>nand2, B=>nand4, C=>bodya11);
uutbodya22: AND_GATE_3to1 port map (A=>nand1, B=>temp2, C=>nand3, D=>bodya22);
uutbodya33: AND_GATE_3to1 port map (A=>temp1, B=>nand2, C=>nand3, D=>bodya33);

uutbodya111: AND_GATE_2to1 port map (A=>nand3, B=>nand4, C=>bodya111);
uutbodya222: AND_GATE_3to1 port map (A=>temp1, B=>nand2, C=>temp3, D=>bodya222);

uutbodya1111: AND_GATE_3to1 port map (A=>nand1, B=>temp2, C=>temp3, D=>bodya1111);
uutbodya2222: AND_GATE_3to1 port map (A=>temp1, B=>temp2, C=>nand3, D=>bodya2222);
uutbodya3333: AND_GATE_3to1 port map (A=>nand1, B=>nand2, C=>nand3, D=>bodya3333);


uutbodya22222: AND_GATE_2to1 port map (A=>temp2, B=>nand3, C=>bodya22222);

uutbodya111111: AND_GATE_2to1 port map (A=>nand1, B=>nand2, C=>bodya111111);
uutbodya222222: AND_GATE_2to1 port map (A=>nand2, B=>temp3, C=>bodya222222);
uutbodya333333: AND_GATE_3to1 port map (A=>nand1, B=>temp3, C=>temp4, D=>bodya333333);

uutbodya1111111: AND_GATE_3to1 port map (A=>nand1, B=>nand2, C=>nand3, D=>bodya1111111);
uutbodya2222222: AND_GATE_3to1 port map (A=>temp2, B=>temp3, C=>temp4, D=>bodya2222222);


uutNbodya1: NOT_GATE_2to1 port map (A=>bodya1, B=>Nbodya1);
uutNbodya2: NOT_GATE_2to1 port map (A=>bodya2, B=>Nbodya2);
uutNbodya3: NOT_GATE_2to1 port map (A=>bodya3, B=>Nbodya3);

uutNbodya11: NOT_GATE_2to1 port map (A=>bodya11, B=>Nbodya11);
uutNbodya22: NOT_GATE_2to1 port map (A=>bodya22, B=>Nbodya22);
uutNbodya33: NOT_GATE_2to1 port map (A=>bodya33, B=>Nbodya33);

uutNbodya111: NOT_GATE_2to1 port map (A=>bodya111, B=>Nbodya111);
uutNbodya222: NOT_GATE_2to1 port map (A=>bodya222, B=>Nbodya222);

uutNbodya1111: NOT_GATE_2to1 port map (A=>bodya1111, B=>Nbodya1111);
uutNbodya2222: NOT_GATE_2to1 port map (A=>bodya2222, B=>Nbodya2222);
uutNbodya3333: NOT_GATE_2to1 port map (A=>bodya3333, B=>Nbodya3333);

uutNbodya11111: NOT_GATE_2to1 port map (A=>nand1, B=>Nbodya11111);
uutNbodya22222: NOT_GATE_2to1 port map (A=>bodya22222, B=>Nbodya22222);

uutNbodya111111: NOT_GATE_2to1 port map (A=>bodya111111, B=>Nbodya111111);
uutNbodya222222: NOT_GATE_2to1 port map (A=>bodya222222, B=>Nbodya222222);
uutNbodya333333: NOT_GATE_2to1 port map (A=>bodya333333, B=>Nbodya333333);

uutNbodya1111111: NOT_GATE_2to1 port map (A=>bodya1111111, B=>Nbodya1111111);
uutNbodya2222222: NOT_GATE_2to1 port map (A=>bodya2222222, B=>Nbodya2222222);

uutFA1: AND_GATE_3to1 port map (A=>Nbodya1, B=>Nbodya2, C=>Nbodya3, D=>A2);
uutFA2: AND_GATE_3to1 port map (A=>Nbodya11, B=>Nbodya22, C=>Nbodya33, D=>B2);
uutFA3: AND_GATE_2to1 port map (A=>Nbodya111, B=>Nbodya222, C=>C2);
uutFA4: AND_GATE_3to1 port map (A=>Nbodya1111, B=>Nbodya2222, C=>Nbodya3333, D=>D2);
uutFA5: AND_GATE_2to1 port map (A=>Nbodya11111, B=>Nbodya22222, C=>E2);
uutFA6: AND_GATE_3to1 port map (A=>Nbodya111111, B=>Nbodya222222, C=>Nbodya333333, D=>F2);
uutFA7: AND_GATE_2to1 port map (A=>Nbodya1111111, B=>Nbodya2222222, C=>G2);



end Behavioral;

