--demultiplexador de 2:1. Logica combinacional
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Demultiplexador IS
PORT (E, A: IN STD_LOGIC;
	S0, S1: OUT STD_LOGIC);


END ENTITY;

ARCHITECTURE Arquitetura OF Demultiplexador IS

BEGIN 
PROCESS(E,A)--coloca quem as variaveis q muda no process
BEGIN
CASE A IS--A eh variavel de controle
WHEN '0' => S0 <= E; S1 <= '0';
WHEN OTHERS => S1 <= E; S0 <= '0';
END CASE;
END PROCESS;

END ARCHITECTURE;
