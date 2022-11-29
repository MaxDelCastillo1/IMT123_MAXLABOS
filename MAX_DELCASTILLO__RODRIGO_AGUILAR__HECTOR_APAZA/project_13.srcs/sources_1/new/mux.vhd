library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           sel : in STD_LOGIC;
           ps : out STD_LOGIC);
end mux;

architecture Behavioral of mux is

component not_gate is
Port(A: in STD_LOGIC;
     B: out STD_LOGIC);
end component not_gate;

component and_gate is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component and_gate;

component or_gate is
Port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end component or_gate;

signal temp0: std_logic:='0';
signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';


begin

utt2: and_gate port map (A=>p1, B=>sel, C=>temp1);
utt3: and_gate port map (A=>p0, B=>temp0, C=>temp2);
utt1: not_gate port map (A=>sel, B=>temp0);
utt4: or_gate port map (A=>temp1, B=>temp2, C=>ps);

end Behavioral;
