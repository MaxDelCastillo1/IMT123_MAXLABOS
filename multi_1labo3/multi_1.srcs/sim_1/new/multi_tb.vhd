----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2022 12:07:49 AM
-- Design Name: 
-- Module Name: multi_tb - Behavioral
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

entity multi_tb is
--  Port ( );
end multi_tb;

architecture Behavioral of multi_tb is

component multi is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           Q : out STD_LOGIC);
end component multi;

signal D0: std_logic:='0';
signal D1: std_logic:='0';
signal D2: std_logic:='0';
signal D3: std_logic:='0';
signal S1: std_logic:='L';
signal S0: std_logic:='0';
signal Q: std_logic:='0';

begin

uut: multi port map (D0=>D0, D1=>D1, D2=>D2, D3=>D3, S1=>S1, S0=>S0, Q=>Q);

stimulus_process:process

    begin
    
    D3<='1';
    D2<='0';
    D1<='1';
    D0<='0';
    S1<='0';
    S0<='0';
    wait for 20ns;
    D3<='0';
    D2<='0';
    D1<='1';
    D0<='0';
    S1<='0';
    S0<='1';
    wait for 20ns;
    D3<='0';
    D2<='1';
    D1<='1';
    D0<='0';
    S1<='1';
    S0<='0';
    wait for 20ns;
    D3<='1';
    D2<='0';
    D1<='1';
    D0<='1';
    S1<='1';
    S0<='1';
    wait for 20ns;
    D3<='1';
    D2<='1';
    D1<='0';
    D0<='1';
    S1<='0';
    S0<='0';
    wait for 20ns;
    D3<='1';
    D2<='0';
    D1<='0';
    D0<='1';
    S1<='0';
    S0<='1';
    wait for 20ns;
    D3<='0';
    D2<='1';
    D1<='1';
    D0<='1';
    S1<='1';
    S0<='0';
    wait for 20ns;
    D3<='1';
    D2<='0';
    D1<='0';
    D0<='0';
    S1<='1';
    S0<='1';
    wait for 20ns;
    D3<='0';
    D2<='0';
    D1<='1';
    D0<='1';
    S1<='0';
    S0<='0';
    wait for 20ns;
    D3<='1';
    D2<='1';
    D1<='0';
    D0<='0';
    S1<='0';
    S0<='1';
    wait for 20ns;
    D3<='0';
    D2<='1';
    D1<='0';
    D0<='1';
    S1<='1';
    S0<='0';
    wait for 20ns;
    D3<='1';
    D2<='0';
    D1<='1';
    D0<='1';
    S1<='1'; 
    S0<='1';
    wait for 20ns;
    D3<='1';
    D2<='1';
    D1<='1';
    D0<='0';
    S1<='0';
    S0<='0';
    wait for 20ns;
    D3<='1';
    D2<='1';
    D1<='1';
    D0<='1';
    S1<='0';
    S0<='1';
    wait for 20ns;
    wait;

    
    end process stimulus_process ;

end Behavioral;
