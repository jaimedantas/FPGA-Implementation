--REGISTRADOR COMPLETO

ENTITY Registrador_Completo IS
GENERIC (N: INTEGER :=3);--N eh igual a 4 bits
PORT (D: IN BIT_VECTOR (N DOWNTO 0);
	ES: IN BIT;
	OS: BUFFER BIT;
	A: IN BIT_VECTOR (1 DOWNTO 0);
	CK: IN BIT;
	Q : BUFFER BIT_VECTOR (N DOWNTO 0));

END ENTITY;


ARCHITECTURE Registrador_Completo OF Registrador_Completo IS

SIGNAL interno : Bit_vector(3 downto 0);

BEGIN 
WITH A SELECT
interno <= OS & Q(3 downto 1) WHEN "11",
	  ES & Q(3 downto 1) WHEN "10",
	  D WHEN "01",
	  Q WHEN OTHERS;
	  
PROCESS(CK)
BEGIN 
IF  (CK'EVENT AND CK = '1') THEN  
	Q <= interno;--CK fucniona como variavel q muda, soh executa quando muda ck E load
END IF;
END PROCESS;
OS <= Q(0);
END ARCHITECTURE;