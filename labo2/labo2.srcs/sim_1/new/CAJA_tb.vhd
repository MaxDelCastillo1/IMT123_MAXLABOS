----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/16/2022 09:55:59 AM
-- Design Name: 
-- Module Name: CAJA_tb - Behavioral
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

entity CAJA_tb is
--  Port ( );
end CAJA_tb;

architecture Behavioral of CAJA_tb is

component CAJA is
    Port ( AA1 : in STD_LOGIC;
           BB1 : in STD_LOGIC;
           AA2 : in STD_LOGIC;
           BB2 : in STD_LOGIC;
           CC : in STD_LOGIC;
           SUM_1 : out STD_LOGIC;
           SUM_2 : out STD_LOGIC;
           SUM_3 : out STD_LOGIC);
end component CAJA;

signal AA1: std_logic:='0';
signal AA2: std_logic:='0';
signal BB1: std_logic:='0';
signal BB2: std_logic:='0';
signal CC: std_logic:='L';
signal SUM_1: std_logic:='0';
signal SUM_2: std_logic:='0';
signal SUM_3: std_logic:='0';


begin

uut: CAJA port map (AA1=>AA1, AA2=>AA2, BB1=>BB1, BB2=>BB2, CC=>CC, SUM_1=>SUM_1, SUM_2=>SUM_2, SUM_3=>SUM_3);

stimulus_process:process

    begin
    
    AA1<='0';
    BB1<='0';
    AA2<='0';
    BB2<='0';
    CC<='L';
    wait for 20ns;
    AA1<='0';
    BB1<='0';
    AA2<='0';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='0';
    BB1<='0';
    AA2<='1';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='0';
    BB1<='0';
    AA2<='1';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='0';
    BB1<='1';
    AA2<='0';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='0';
    BB1<='1';
    AA2<='0';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='0';
    BB1<='1';
    AA2<='1';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='0';
    BB1<='1';
    AA2<='1';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='0';
    AA2<='0';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='0';
    AA2<='0';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='0';
    AA2<='1';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='0';
    AA2<='1';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='1';
    AA2<='0';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='1';
    AA2<='0';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='1';
    AA2<='1';
    BB2<='0';
    CC<='0';
    wait for 20ns;
    AA1<='1';
    BB1<='1';
    AA2<='1';
    BB2<='1';
    CC<='0';
    wait for 20ns;
    wait;
    
    end process stimulus_process ;


end Behavioral;
