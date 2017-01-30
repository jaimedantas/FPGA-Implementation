--flip-flop-d


ENTITY flip_flop_d IS
PORT (D, CK: IN BIT;
	Q : OUT BIT);

END ENTITY;


ARCHITECTURE Arquitetura OF flip_flop_d IS


BEGIN 
PROCESS(CK)
BEGIN

IF  (CK'EVENT AND CK = '1') THEN 
	Q <= D;--CK fucniona como variavel q muda, soh executa quando muda ck
END IF;
END PROCESS;
END ARCHITECTURE;