----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2022 09:59:54 PM
-- Design Name: 
-- Module Name: Top_Module_Gray - Behavioral
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

entity Top_Module_Gray is
    Port ( Q0,Q1,Q2 : inout STD_LOGIC;
           D1,D2,D3 : in STD_LOGIC;
           A : out STD_LOGIC;
           CK1, reset1 : in STD_LOGIC;
           QN0,QN1,QN2 : inout STD_LOGIC);
end Top_Module_Gray;

architecture Behavioral of Top_Module_Gray is


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

L1<=((D2 and (not D3)) or (D1 and D3));

    process (CK1,reset1)
        begin
            if(reset1='1') then
            Q0<='0';
            elsif ( CK1' event and CK1 = '1') then
            Q0<=L1;
        end if;
    end process;

QN0<= not Q0;


L2<=(((not D1) and D3) or (D2 and (not D3)));

    process (CK1,reset1)
        begin
            if(reset1='1') then
            Q1<='0';
            elsif ( CK1' event and CK1 = '1') then
            Q1<=L2;
        end if;
    end process;

QN1<= not Q1;

L3<=(((not D1) and (not D2)) or (D1 and D2));

    process (CK1,reset1)
        begin
            if(reset1='1') then
            Q2<='0';
            elsif ( CK1' event and CK1 = '1') then
            Q2<=L3;
        end if;
    end process;

QN2<= not Q2;

A<= not (D1 xor D3);


end Behavioral;
