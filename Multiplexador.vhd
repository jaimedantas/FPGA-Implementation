--multiplexador de 2:1. Logica combinacional
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexador IS
PORT (I0, I1, A: IN STD_LOGIC;
	S: OUT STD_LOGIC);


END ENTITY;

ARCHITECTURE Arquitetura OF Multiplexador IS

BEGIN 
WITH A SELECT--A eh variavel de controle
S <= I0 WHEN '0',
	I1 WHEN OTHERS;--A='1'


END ARCHITECTURE;
