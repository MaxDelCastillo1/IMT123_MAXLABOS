library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Module_register is
    Port ( L_R : in STD_LOGIC;
           Vin : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset0 : in STD_LOGIC;
           en : in STD_LOGIC;
           s0 : out STD_LOGIC_VECTOR (6 downto 0);
           q0 : inout STD_LOGIC_VECTOR (6 downto 0));
end Module_register;

architecture Behavioral of Module_register is

component AND_GATE_2to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component AND_GATE_2to1;

component flipflop is
    Port ( D : in STD_LOGIC;
           CK, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component flipflop;

component mux is
  Port ( p0 : in STD_LOGIC;
           p1 : in STD_LOGIC;
           sel : in STD_LOGIC;
           ps : out STD_LOGIC);
end component mux;

component not_gate is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component not_gate;

component reloj is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clka : out STD_LOGIC);
end component reloj;

signal temp1: std_logic:='0';
signal temp2: std_logic:='0';
signal temp3: std_logic:='0';
signal temp4: std_logic:='0';
signal temp5: std_logic:='0';
signal temp6: std_logic:='0';
signal temp7: std_logic:='0';
signal temp8: std_logic:='0';

signal temps1: std_logic:='0';
signal temps2: std_logic:='0';
signal temps3: std_logic:='0';
signal temps4: std_logic:='0';
signal temps5: std_logic:='0';
signal temps6: std_logic:='0';
signal temps7: std_logic:='0';

signal clk0: std_logic:='0';
begin
reloj_1: reloj port map (clk=>clk_in,reset=>reset0,clka=>clk0);

utt0: mux port map (p0=>Vin,p1=>q0(5),sel=>L_R,ps=>temp1);
utt1: flipflop port map (D=>temp1,CK=>clk_in,reset=>reset0,Q=>q0(6));

utt2: mux port map (p0=>q0(6),p1=>q0(4),sel=>L_R,ps=>temp2);
utt3: flipflop port map (D=>temp2,CK=>clk_in,reset=>reset0,Q=>q0(5));

utt4: mux port map (p0=>q0(5),p1=>q0(3),sel=>L_R,ps=>temp3);
utt5: flipflop  port map (D=>temp3,CK=>clk_in,reset=>reset0,Q=>q0(4));

utt6: mux port map (p0=>q0(4),p1=>q0(2),sel=>L_R,ps=>temp4);
utt7: flipflop  port map (D=>temp4,CK=>clk_in,reset=>reset0,Q=>q0(3));

utt8: mux port map (p0=>q0(3),p1=>q0(1),sel=>L_R,ps=>temp5);
utt9: flipflop port map (D=>temp5,CK=>clk_in,reset=>reset0,Q=>q0(2));

utt10: mux port map (p0=>q0(2),p1=>q0(0),sel=>L_R,ps=>temp6);
utt11: flipflop port map (D=>temp6,CK=>clk_in,reset=>reset0,Q=>q0(1));

utt12: mux port map (p0=>q0(1),p1=>Vin,sel=>L_R,ps=>temp7);
utt13: flipflop port map (D=>temp7,CK=>clk_in,reset=>reset0,Q=>q0(0));



utt14: AND_GATE_2to1 port map (A=>en,B=>q0(6),C=>temps1);
utt15: flipflop port map (D=>temps1,CK=>clk_in,reset=>reset0,Q=>s0(6));

utt16: AND_GATE_2to1 port map (A=>en,B=>q0(5),C=>temps2);
utt17: flipflop port map (D=>temps2,CK=>clk_in,reset=>reset0,Q=>s0(5));

utt18: AND_GATE_2to1 port map (A=>en,B=>q0(4),C=>temps3);
utt19: flipflop port map (D=>temps3,CK=>clk_in,reset=>reset0,Q=>s0(4));

utt20: AND_GATE_2to1 port map (A=>en,B=>q0(3),C=>temps4);
utt21: flipflop port map (D=>temps4,CK=>clk_in,reset=>reset0,Q=>s0(3));

utt22: AND_GATE_2to1 port map (A=>en,B=>q0(2),C=>temps5);
utt23: flipflop port map (D=>temps5,CK=>clk_in,reset=>reset0,Q=>s0(2));

utt24: AND_GATE_2to1 port map (A=>en,B=>q0(1),C=>temps6);
utt25: flipflop port map (D=>temps6,CK=>clk_in,reset=>reset0,Q=>s0(1));

utt26: AND_GATE_2to1 port map (A=>en,B=>q0(0),C=>temps7);
utt27: flipflop port map (D=>temps7,CK=>clk_in,reset=>reset0,Q=>s0(0));




end Behavioral;

