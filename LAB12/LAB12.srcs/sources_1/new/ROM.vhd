library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ROM is
    Port ( A1,B1,C1 : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           reset1 : in STD_LOGIC;
           q0 : inout STD_LOGIC_VECTOR (3 downto 0);
           z0 : inout STD_LOGIC_VECTOR (3 downto 0));
end ROM;

architecture Behavioral of ROM is

component flipflop is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component flipflop;

component NOT_GATE_1to1 is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component NOT_GATE_1to1;

component reloj is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component reloj;

component AND_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE_2to1;

component XOR_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component XOR_GATE_2to1;

signal NOTA: std_logic:='0';
signal NOTB: std_logic:='0';
signal NOTC: std_logic:='0';

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';

signal temp5: std_logic:='0';
signal temp6: std_logic:='0';
signal temp7: std_logic:='0';
signal temp8: std_logic:='0';

signal clk0: std_logic:='0';
begin
reloj_1: reloj port map (clk=>clk_in,reset=>reset0,clka=>clk0);

uttN0: NOT_GATE_1to1 port map (A=>A1,B=>NOTA);
uttN1: NOT_GATE_1to1 port map (A=>B1,B=>NOTB);
uttN2: NOT_GATE_1to1 port map (A=>C1,B=>NOTC);

uttAND0: AND_GATE_2to1 port map (A=>NOTA,B=>NOTB,C=>temp1);
uttAND1: AND_GATE_2to1 port map (A=>A1,B=>NOTB,C=>temp2);
uttAND2: AND_GATE_2to1 port map (A=>NOTA,B=>B1,C=>temp3);
uttAND3: AND_GATE_2to1 port map (A=>A1,B=>B1,C=>temp4);

uttXOR0: XOR_GATE_2to1 port map (A=>temp1,B=>NOTC,C=>temp5);
uttXOR1: XOR_GATE_2to1 port map (A=>temp2,B=>NOTC,C=>temp6);
uttXOR2: XOR_GATE_2to1 port map (A=>temp3,B=>NOTC,C=>temp7);
uttXOR3: XOR_GATE_2to1 port map (A=>temp4,B=>NOTC,C=>temp8);

utt1: flipflop port map (D=>temp5,CK=>clk_in,reset=>reset0,Q=>q0(0));
utt2: flipflop port map (D=>temp6,CK=>clk_in,reset=>reset0,Q=>q0(1));
utt3: flipflop  port map (D=>temp7,CK=>clk_in,reset=>reset0,Q=>q0(2));
utt4: flipflop  port map (D=>temp8,CK=>clk_in,reset=>reset0,Q=>q0(3));

utt5: flipflop port map (D=>temp5,CK=>clk_in,reset=>reset1,Q=>z0(0));
utt6: flipflop port map (D=>temp6,CK=>clk_in,reset=>reset1,Q=>z0(1));
utt7: flipflop  port map (D=>temp7,CK=>clk_in,reset=>reset1,Q=>z0(2));
utt8: flipflop  port map (D=>temp8,CK=>clk_in,reset=>reset1,Q=>z0(3));


end Behavioral;
