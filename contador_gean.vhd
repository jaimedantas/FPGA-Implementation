LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY contador IS

PORT (cnt, CK : IN STD_LOGIC;
C : OUT STD_LOGIC_VECTOR (3 downto 0);
tc : OUT STD_LOGIC
);

END contador;

ARCHITECTURE behav OF contador IS
	
	SIGNAL valor : STD_LOGIC_VECTOR(3 downto 0);
	
	
	BEGIN
		PROCESS(CK,cnt)
BEGIN
		
		IF (CK'EVENT AND CK = '1' AND cnt = '1') THEN
			
			valor <= valor + 1;
			IF (valor = "1111") THEN
					tc <= '1';
			END IF;
			
				
		END IF;
		
		
		
			


END PROCESS;
C <= valor;
END behav;