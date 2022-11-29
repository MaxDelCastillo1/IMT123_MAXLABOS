library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Lab13 is
--  Port ( );
end TB_Lab13;

architecture Behavioral of TB_Lab13 is

component Module_register is
     Port ( L_R : in STD_LOGIC;
           Vin : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           en : in STD_LOGIC;
           s0 : out STD_LOGIC_VECTOR (6 downto 0);
           q0 : inout STD_LOGIC_VECTOR (6 downto 0));
end component Module_register;

signal L_R: std_logic:= '0';
signal Vin: std_logic:= '0';
signal clk_in: std_logic:= '0';
signal reset0: std_logic:= '0';
signal en: std_logic:= '0';
signal s0: std_logic_vector(6 downto 0);
signal q0: std_logic_vector(6 downto 0);

begin
utt: Module_register port map (L_R=>L_R, Vin=>Vin, clk_in=>clk_in, reset0=>reset0, en=>en, q0=>q0, s0=>s0);

Estimulus_process: process
begin

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;


--------------------------

L_R <= '0';
Vin <= '0';
en <= '1';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '1';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;


------------------------------------------------



L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '0';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '1';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

-------------------

L_R <= '1';
Vin <= '0';
en <= '1';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '1';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '1';
reset0 <= '0';
wait for 20 ns;

L_R <= '1';
Vin <= '0';
en <= '0';
clk_in <= '0';
reset0 <= '0';
wait for 20 ns;
end process;
end Behavioral;
