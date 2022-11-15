----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2022 12:44:09 PM
-- Design Name: 
-- Module Name: Top_Module_Gray2_tb - Behavioral
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

entity Top_Module_Gray2_tb is
--  Port ( );
end Top_Module_Gray2_tb;

architecture Behavioral of Top_Module_Gray2_tb is

component Top_Module_Gray2 is
    Port ( Q0,Q1,Q2 : inout STD_LOGIC;
           X, Y, Z : in STD_LOGIC;
           A : out STD_LOGIC;
           CK11, reset11 : in STD_LOGIC;
           QN0,QN1,QN2 : inout STD_LOGIC);
end component Top_Module_Gray2;

signal X: std_logic:= '0';
signal Y: std_logic:= '0'; 
signal Z: std_logic:= '0';
signal CK11: std_logic:= '0';
signal reset11: std_logic:= '0';
signal Q0: std_logic:= '0';
signal Q1: std_logic:= '0';
signal Q2: std_logic:= '0';
signal Q3: std_logic:= '0';
signal QN0: std_logic:= '1';
signal QN1: std_logic:= '1';
signal QN2: std_logic:= '1';
signal A: std_logic:= '1';


begin
utt: Top_Module_Gray2 port map (X=>X, Y=>Y, Z=>Z, CK11=>CK11, reset11=>reset11, Q0=>Q0, Q1=>Q1, Q2=>Q2, QN0=>QN0, QN1=>QN1, QN2=>QN2, A=>A);
Estimulus_process: process
begin


X <= '0';
Y <= '0';
Z <= '0';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '0';
Z <= '0';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '0';
Z <= '1';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '0';
Z <= '1';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '1';
Z <= '1';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '1';
Z <= '1';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '1';
Z <= '0';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '0';
Y <= '1';
Z <= '0';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;

X <= '1';
Y <= '1';
Z <= '0';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '1';
Y <= '1';
Z <= '0';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;

X <= '1';
Y <= '1';
Z <= '1';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '1';
Y <= '1';
Z <= '1';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;

X <= '1';
Y <= '0';
Z <= '0';
CK11 <= '0';
reset11 <= '0';
wait for 20 ns;

X <= '1';
Y <= '0';
Z <= '0';
CK11 <= '1';
reset11 <= '0';
wait for 20 ns;


end process;

end Behavioral;
