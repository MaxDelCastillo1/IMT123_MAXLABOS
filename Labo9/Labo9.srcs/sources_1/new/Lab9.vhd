----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 01:36:02 AM
-- Design Name: 
-- Module Name: Lab8 - Behavioral
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

entity Lab9 is
    Port ( Q0,Q1,Q2,Q3 : inout STD_LOGIC;
           D1,D2,D3,D4 : in STD_LOGIC;
           A : out STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           QN0,QN1,QN2,QN3 : inout STD_LOGIC);
end Lab9;

architecture Behavioral of Lab9 is

component OR_GATE_4to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component OR_GATE_4to1;

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

component flipd is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q, QN : inout STD_LOGIC);
end component flipd;

signal clk0: std_logic:='0';
signal temp1: std_logic:='0';

signal L1: std_logic:='0';
signal L2: std_logic:='0';
signal L3: std_logic:='0';
signal L4: std_logic:='0';

begin

    process (CK1,reset1)
        begin
            if(reset1='1') then
            Q0<='0';
            elsif ( CK1' event and CK1 = '1') then
            Q0<=D1;
        end if;
    end process;

QN0<= not Q0;


    process (QN0,reset1)
        begin
            if(reset1='1') then
            Q1<='0';
            elsif ( QN0' event and QN0 = '1') then
            Q1<=D2;
        end if;
    end process;

QN1<= not Q1;

    process (QN1,reset1)
        begin
            if(reset1='1') then
            Q2<='0';
            elsif ( QN1' event and QN1 = '1') then
            Q2<=D3;
        end if;
    end process;

QN2<= not Q2;


    process (QN2,reset1)
        begin
            if(reset1='1') then
            Q3<='0';
            elsif ( QN2' event and QN2 = '1') then
            Q3<=D4;
        end if;
    end process;

QN3<= not Q3;

uutand1: AND_GATE_3to1 port map (A=>QN3, B=>QN2, C=>Q1, D=>L1);

uutand2: AND_GATE_3to1 port map (A=>QN2, B=>Q1, C=>Q0, D=>L2);

uutand3: AND_GATE_3to1 port map (A=>QN3, B=>Q2, C=>Q0, D=>L3);

uutand4: AND_GATE_3to1 port map (A=>Q2, B=>QN1, C=>Q0, D=>L4);

uutOR: OR_GATE_4to1 port map (A=>L1, B=>L2, C=>L3, D=>L4, E=>A);

end Behavioral;