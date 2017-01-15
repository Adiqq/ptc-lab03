-- IMPLEMENTACJA TRANSKODERA
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY char7seg IS
	PORT ( 
		C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		Display : OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END char7seg;

ARCHITECTURE strukturalna OF char7seg IS
BEGIN
	--WITH C SELECT
	--	Display <=				  
	--				  "1001000" WHEN "001", --H
	--				  "1111001" WHEN "011", --I
	--				  "1000011" WHEN "010", --J
	--				  "1110001" WHEN "110", --L
	--				  "0000001" WHEN "111", --O
	--				  "1111111" WHEN OTHERS;
	Display(0) <= (NOT C(2) OR NOT c(0));
   Display(1) <= (C(0) AND C(1) AND NOT C(2)) OR (NOT C(0) AND NOT C(1)) OR (NOT C(0) AND C(2));
   Display(2) <= (C(0) AND C(1) AND NOT C(2)) OR (NOT C(0) AND NOT C(1)) OR (NOT C(0) AND C(2));
   Display(3) <= (C(0) AND (NOT C(2))) OR (NOT C(1));
   Display(4) <= ((NOT C(0)) AND (NOT C(1)));
   Display(5) <= ((NOT C(0) AND (NOT C(2))));
   Display(6) <= ((NOT C(0)) OR C(1));
END strukturalna;