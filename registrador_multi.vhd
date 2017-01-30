--REDISTRADOR DE MULTIPLEXADOR


ENTITY registrador_multi IS
GENERIC (N: INTEGER :=3);--N eh igual a 64 bits
PORT (D: IN BIT_VECTOR (N DOWNTO 0);
	CLEAR, LOAD, CK: IN BIT;
	Q : OUT BIT_VECTOR (N DOWNTO 0));

END ENTITY;


ARCHITECTURE Arquitetura OF registrador_multi IS
BEGIN 

PROCESS(CK, LOAD, CLEAR)
BEGIN
IF  (CLEAR = '1') THEN--limpa o lixo
	Q <= (OTHERS => '0');--TODOS OS ELEMENTOS D Q são zero  
ELSIF  (CK'EVENT AND CK = '1' AND LOAD = '1') THEN  
	Q <= D;--CK fucniona como variavel q muda, soh executa quando muda ck E load
END IF;
END PROCESS;
END ARCHITECTURE;