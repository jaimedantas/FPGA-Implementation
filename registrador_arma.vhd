--REDISTRADOR DE ARMAZENAMENTO


ENTITY registrador_arma IS
GENERIC (N: INTEGER :=64);--N eh igual a 64 bits
PORT (D: IN BIT_VECTOR (N DOWNTO 0);
	CK: IN BIT;
	Q : OUT BIT_VECTOR (N DOWNTO 0));

END ENTITY;


ARCHITECTURE Arquitetura OF registrador_arma IS
BEGIN 

PROCESS(CK)
BEGIN

IF  (CK'EVENT AND CK = '1') THEN 
FOR i IN 0 TO N LOOP 
	Q(i) <= D(i);--CK fucniona como variavel q muda, soh executa quando muda ck
END LOOP;
END IF;
END PROCESS;
END ARCHITECTURE;