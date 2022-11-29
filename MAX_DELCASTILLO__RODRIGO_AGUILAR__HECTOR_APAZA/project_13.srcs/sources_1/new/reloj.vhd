library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reloj is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end reloj;

architecture Behavioral of reloj is

signal salida: std_logic;
signal cuenta: integer range 0 to 24999999:=0;
begin
divisor_frecuencia : process(clk, reset)
    begin
    if reset='0' then
        salida<='0';
        cuenta<=0;
        elsif rising_edge (clk)then
            
            if cuenta = 24999999 then
            cuenta <= 0;
            salida<= not salida;
                
                else
                cuenta<=cuenta+1;
            end if;
    end if;
    end process;
    clka<=salida;
end Behavioral;
