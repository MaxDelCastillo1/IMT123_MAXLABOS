library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM_TB is
--  Port ( );
end ROM_TB;

architecture Behavioral of ROM_TB is

component ROM is
    Port ( A1,B1,C1 : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           reset1 : in STD_LOGIC;
           q0 : inout STD_LOGIC_VECTOR (3 downto 0);
           z0 : inout STD_LOGIC_VECTOR (3 downto 0));
end component ROM;

signal A1: std_logic:= '0';
signal B1: std_logic:= '0';
signal C1: std_logic:= '0';
signal clk_in: std_logic:= '0';
signal reset0: std_logic:= '0';
signal reset1: std_logic:= '0';
signal q0: std_logic_vector(3 downto 0);
signal z0: std_logic_vector(3 downto 0);

begin
utt: ROM port map (A1=>A1, B1=>B1, C1=>C1,clk_in=>clk_in, reset0=>reset0,reset1=>reset1, q0=>q0, z0=>z0);
Estimulus_process: process
begin
A1 <= '0';
B1 <= '0';
C1 <= '0';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '0';
B1 <= '0';
C1 <= '0';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '0';
C1 <= '0';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '0';
C1 <= '0';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '0';
B1 <= '1';
C1 <= '0';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '0';
B1 <= '1';
C1 <= '0';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '0';
B1 <= '1';
C1 <= '1';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '0';
B1 <= '1';
C1 <= '1';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '0';
C1 <= '0';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '0';
C1 <= '0';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '0';
C1 <= '1';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '0';
C1 <= '1';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '1';
C1 <= '0';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '1';
C1 <= '0';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '1';
C1 <= '1';
clk_in <= '0';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;

A1 <= '1';
B1 <= '1';
C1 <= '1';
clk_in <= '1';
reset0 <= '0';
reset1 <= '0';
wait for 20 ns;


end process;
end Behavioral;

