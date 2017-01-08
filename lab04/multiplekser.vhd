-- implementacja multipleksera 8 do 1 (wektor 3 bitowy)
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY mux3bit_8to1 IS
	PORT ( 
		S, U0, U1, U2, U3, U4, U5,U6,U7: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		M : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END mux3bit_8to1;

ARCHITECTURE strukturalna OF mux3bit_8to1 IS
BEGIN
	WITH S SELECT
		M <=  U0 WHEN "000",
				U1 WHEN "001",
				U2 WHEN "010",
				U3 WHEN "011",
				U4 WHEN "100",
				U5 WHEN "101",
				U6 WHEN "110",
				U7 WHEN "111",
				"111" WHEN OTHERS;
END strukturalna;