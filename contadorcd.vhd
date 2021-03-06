LIBRARY Ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.ALL;

ENTITY contadorcd IS

		PORT ( cnt,di, ck,cl:IN STD_LOGIC;
		tc : OUT STD_LOGIC;
		C : OUT STD_LOGIC_vector(3 downto 0));
		

END ENTITY;

ARCHITECTURE arquitetura OF contadorcd IS

SIGNAL reg, som,sub : STD_LOGIC_VECTOR(3 downto 0);



BEGIN

som <= reg + 1;
sub<= reg-1;

PROCESS(ck)

BEGIN
--ck'EVENT serve para verificar o momento em que 
IF( cl='0') THEN reg<="0000";

ELSIF ( (ck'EVENT) and (ck='1') and cnt = '1'and di='0' )	THEN reg <= som;
ELSIF ( (ck'EVENT) and (ck='1') and cnt = '1'and di='1' )	THEN reg <= sub;
end IF;

END PROCESS;




PROCESS(reg,cl)
BEGIN

--ck'EVENT serve para verificar o momento em que 
IF (reg="1111" and di='0') THEN tc <='1';
ELSE tc<='0';
END IF;
IF (reg="0000" and di='1') THEN tc<='1';
ELSE tc<='0';


END IF;

END PROCESS;

C <= reg;


END ARCHITECTURE;