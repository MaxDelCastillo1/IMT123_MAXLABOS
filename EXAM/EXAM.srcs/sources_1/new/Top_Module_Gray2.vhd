----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2022 12:14:54 PM
-- Design Name: 
-- Module Name: Top_Module_Gray2 - Behavioral
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

entity Top_Module_Gray2 is
    Port ( Q0,Q1,Q2 : inout STD_LOGIC;
           X, Y, Z : in STD_LOGIC;
           A : out STD_LOGIC;
           CK11, reset11 : in STD_LOGIC;
           QN0,QN1,QN2 : inout STD_LOGIC);
end Top_Module_Gray2;

architecture Behavioral of Top_Module_Gray2 is

component flipjk is
    Port ( J, K : in STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           Q1, QN1 : inout STD_LOGIC);
end component flipjk;

component flipd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q, QN : inout STD_LOGIC);
end component flipd;

signal clk0: std_logic:='0';
signal temp1: std_logic:='0';

signal J0: std_logic:='0';
signal K0: std_logic:='0';
signal J1: std_logic:='0';
signal K1: std_logic:='0';
signal J2: std_logic:='0';
signal K2: std_logic:='0';

signal XN: std_logic:='0';
signal YN: std_logic:='0';
signal ZN: std_logic:='0';

begin

XN<= not X;
YN<= not Y;
ZN<= not Z;

J0<=((Z and Y) or (ZN and YN));
K0<=((ZN and Y) or (Z and YN));
J1<=(ZN and X);
K1<=(Z and X);
J2<=(Y and XN);
K2<=(YN and XN);


QN0<= not Q0;
QN1<= not Q1;
QN2<= not Q2;

FFJK0: flipjk port map (J=>J0, K=>K0, CK1=>CK11,reset1=>reset11,Q1=>Q0,QN1=>QN0);

FFJK1: flipjk port map (J=>J1, K=>K1, CK1=>CK11,reset1=>reset11,Q1=>Q1,QN1=>QN1);

FFJK2: flipjk port map (J=>J2, K=>K2, CK1=>CK11,reset1=>reset11,Q1=>Q2,QN1=>QN2);



end Behavioral;
