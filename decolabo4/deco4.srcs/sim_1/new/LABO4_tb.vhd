----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/30/2022 02:10:34 AM
-- Design Name: 
-- Module Name: LABO4_tb - Behavioral
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

entity LABO4_tb is
--  Port ( );
end LABO4_tb;

architecture Behavioral of LABO4_tb is

component LABO4 is
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
end component LABO4;

signal A1: std_logic:='0';
signal B1: std_logic:='0';
signal C1: std_logic:='0';
signal D1: std_logic:='0';
signal BI: std_logic:='0';
signal A2: std_logic:='0';
signal B2: std_logic:='0';
signal C2: std_logic:='0';
signal D2: std_logic:='0';
signal E2: std_logic:='0';
signal F2: std_logic:='0';
signal G2: std_logic:='0';

begin

uut: LABO4 port map (A1=>A1, B1=>B1, C1=>C1, D1=>D1, BI=>BI, A2=>A2, B2=>B2, C2=>C2, D2=>D2, E2=>E2, F2=>F2, G2=>G2);

stimulus_process:process

    begin
   
    A1<='L';
    B1<='L';
    C1<='L';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='L';
    C1<='L';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='H';
    C1<='L';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='H';
    C1<='L';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='L';
    C1<='H';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='L';
    C1<='H';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='H';
    C1<='H';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='H';
    C1<='H';
    D1<='L';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='L';
    C1<='L';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='L';
    C1<='L';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='H';
    C1<='L';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='H';
    C1<='L';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='L';
    C1<='H';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='L';
    C1<='H';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='L';
    B1<='H';
    C1<='H';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='H';
    B1<='H';
    C1<='H';
    D1<='H';
    BI<='H';
    wait for 20ns;
    A1<='0';
    B1<='0';
    C1<='0';
    D1<='0';
    BI<='L';
    wait for 20ns;    
    wait;
    
    end process stimulus_process ;

end Behavioral;

