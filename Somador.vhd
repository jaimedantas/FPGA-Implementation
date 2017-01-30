--SOMADOR DE DOIS NUMEROS DE DOIS BITS CADA. 

ENTITY Somador IS
PORT(
	a, b: IN BIT_VECTOR(1 DOWNTO 0);
	s: OUT BIT_VECTOR(1 DOWNTO 0);
	ts: OUT BIT;
	te: IN BIT 
	);
END ENTITY;

ARCHITECTURE Arquitetura OF Somador IS
--decharacao de sinal interno do transporte
SIGNAL c : BIT_VECTOR(2 DOWNTO 0);

--inicio de processamento sequencial:
BEGIN
c(0)<=te; --valor inicial de C0
PROCESS(a, b, c)
	BEGIN
		s(0) <= a(0) XOR b(0) XOR c(0);
		c(1) <= (a(0) AND b(0)) or (a(0) AND c(0)) or (b(0) AND c(0));  

		s(1) <= a(1) XOR b(1) XOR c(1); --soma final
		c(2) <= (a(1) AND b(1)) or (a(1) AND c(1)) or (b(1) AND c(1)); --resto da ultima soma, transporte

END PROCESS;
ts<=c(2);
END Arquitetura;
