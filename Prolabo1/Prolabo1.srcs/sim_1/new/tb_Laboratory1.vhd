----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/16/2022 01:01:13 AM
-- Design Name: 
-- Module Name: tb_Laboratory1 - Behavioral
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

entity tb_Laboratory1 is
--  Port ( );
end tb_Laboratory1;

architecture Behavioral of tb_Laboratory1 is

component Laboratory1 is
    Port ( A1 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           C1 : in STD_LOGIC;
           SUM : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component Laboratory1;

signal A1: std_logic:='0';
signal B1: std_logic:='0';
signal C1: std_logic:='0';
signal SUM: std_logic:='0';
signal Cout: std_logic:='0';

begin

uut: Laboratory1 port map (A1=>A1, B1=>B1, C1=>C1, SUM=>SUM, Cout=>Cout);

stimulus_process:process

    begin
    
    A1<='0';
    B1<='0';
    C1<='0';
    wait for 20ns;
    A1<='0';
    B1<='0';
    C1<='1';
    wait for 20ns;
    A1<='0';
    B1<='1';
    C1<='0';
    wait for 20ns;
    A1<='0';
    B1<='1';
    C1<='1';
    wait for 20ns;
    A1<='1';
    B1<='0';
    C1<='0';
    wait for 20ns;
    A1<='1';
    B1<='0';
    C1<='1';
    wait for 20ns;
    A1<='1';
    B1<='1';
    C1<='0';
    wait for 20ns;
    A1<='1';
    B1<='1';
    C1<='1';
    wait for 20ns;
    
    end process stimulus_process ;

end Behavioral;
