library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NOT_GATE_1to1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end NOT_GATE_1to1;

architecture Behavioral of NOT_GATE_1to1 is

begin
B <= not A;

end Behavioral;
