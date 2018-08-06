library ieee;
use ieee.std_logic_1164.all;

entity wifi_tele_phy is

	port(
	
	
	
		--HMC AD1511 diff pairs
		hmcad1511_fclk : in std_logic;
		hmcad1511_lclk : in std_logic;
	
		hmcad1511_d1a_p : in std_logic;
		hmcad1511_d1a_n : in std_logic;
		
		hmcad1511_d1b_p : in std_logic;
		hmcad1511_d1b_n : in std_logic;
		
		hmcad1511_d2a_p : in std_logic;
		hmcad1511_d2a_n : in std_logic;
		
		hmcad1511_d2b_p : in std_logic;
		hmcad1511_d2b_n : in std_logic;
		
		hmcad1511_d3a : in std_logic;
		hmcad1511_d3b : in std_logic;
		
		hmcad1511_d4a : in std_logic;
		hmcad1511_d4b : in std_logic
	);

	

end entity;


architecture arch of wifi_tele_phy is

	component lvds_glue IS
	PORT
	(
		datain		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		datain_b		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		dataout		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
	END lvds_glue;
	
	
	-- hmcad1511 signals
	
	
	
begin
	
end arch;