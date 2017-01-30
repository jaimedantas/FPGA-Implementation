--SOMADOR DE DOIS NUMEROS DE N BITS CADA. 

--BIBLIOTECA que Permite fazer a soma com o operador +, *, -, /
--LIBRARY ieee;
--USE ieee.std_logic_1164.ALL;
--c=a+b;

ENTITY Somador_loop IS
GENERIC (n: INTEGER :=4);--define o numero de bits em n
PORT(
	--a, b: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	--s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	a, b: IN BIT_VECTOR(3 DOWNTO 0);
	s: OUT BIT_VECTOR(3 DOWNTO 0);
	ts: OUT BIT;
	te: IN BIT 
	);
END ENTITY;

ARCHITECTURE Arquitetura OF Somador_loop IS
--declaracao de sinal interno do transporte
SIGNAL c : BIT_VECTOR(4 DOWNTO 0);


--inicio de processamento sequencial:
BEGIN
c(0)<=te; --valor inicial de C0
PROCESS(a, b, c)
	BEGIN
	FOR i IN 0 TO n-1 LOOP--laco for de 0 a 1
		s(i) <= a(i) XOR b(i) XOR c(i);
		c(i+1) <= (a(i) AND b(i)) or (a(i) AND c(i)) or (b(i) AND c(i));  
	END LOOP;
END PROCESS;
ts<=c(n);
END Arquitetura;
