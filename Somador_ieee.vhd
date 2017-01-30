--SOMADOR DE DOIS NUMEROS DE 4 BITS CADA COM IEEE. 

--BIBLIOTECA que Permite fazer a soma com o operador +, *, -, /
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;--pra usar o STD logico
--USE ieee.std_logic_arith.ALL;--pra usar o SIGNED aritimetico
USE ieee.std_logic_signed.ALL;--pacote da biblioteca ieee que faz tantooperacoes  logicas como atitimeticas
--c=a+b;
-- SIGNED (7 DOWNTO 0);--pode ser positivo e negativo, tipo um vetor, soh aritimetica, nao pode logica
--UNSINGNED ( 0 TO 3);--sempre tem q ser maior que zero, tipo um vetor
--STD_LOGIC so faz operacoes logicas
ENTITY Somador_ieee IS
PORT(
	a, b: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE Arquitetura OF Somador_ieee IS
--o transporte eh perdido
--inicio de processamento sequencial:
BEGIN
	s <= a + b;
END Arquitetura;
