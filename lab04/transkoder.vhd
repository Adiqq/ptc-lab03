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
	WITH C SELECT
		Display <=				  
					  "1001000" WHEN "001", --H
					  "1111001" WHEN "010", --I
					  "1000011" WHEN "011", --J
					  "1110001" WHEN "100", --L
					  "0000001" WHEN "101", --O
					  "1111111" WHEN OTHERS;
END strukturalna;