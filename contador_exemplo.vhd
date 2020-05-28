LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY contador512 IS
PORT (
	Clock, Resetn, E : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
);
END contador512 ;

ARCHITECTURE comportamento OF contador512 IS
	SIGNAL Count : STD_LOGIC_VECTOR (5 DOWNTO 0);
BEGIN
	PROCESS (Clock, Resetn)
	BEGIN
		IF Resetn = '1' THEN
			Count <= "000000";
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			IF E = '1' THEN
				Count <= Count + 1;
			ELSE
				Count <= Count;
			END IF;
		END IF;
		If Count = "000011" or Count = "000101" then -- 3 -> 000011 - 5 -> 000101
			Q <= 1;
		ELSE
			Q <= 0;
		END IF
	END PROCESS;
END comportamento;