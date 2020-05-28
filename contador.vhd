LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY contador IS
PORT (
	Clock, Resetn, E : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
);
END contador ;

ARCHITECTURE comportamento OF contador IS
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
		Q <= Count;
	END PROCESS;
END comportamento;