--maquinas de estado finito -- CALCULO DE DISTANCIA -- UNIDADE DE CRONTOLE
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY maquina IS
PORT (
	S, B, clk_control : IN STD_LOGIC;
	L, Dreg_clr, Dreg_ld, Dctr_cnt, Dctr_clr  : BUFFER STD_LOGIC;	
	estado: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);


END ENTITY;

ARCHITECTURE Arquitetura OF maquina IS

TYPE TIPO_DE_ESTADO IS (S0, S1, S2, S3, S4);
SIGNAL estado_atual, estado_seguinte: TIPO_DE_ESTADO;
SIGNAL estado_teste: STD_LOGIC_VECTOR (2 DOWNTO 0); 

BEGIN 
	PROCESS(estado_atual, Dreg_clr, Dctr_cnt, Dreg_ld, Dctr_clr, L)--nao tem relogio
	BEGIN 
		CASE estado_atual IS
			WHEN S0 =>--iniciar
			L <= '0';
			Dreg_clr <= '1';
			Dreg_ld <= '0';
			Dctr_cnt <= '0';
			Dctr_clr <= '0';
			estado_seguinte <= S1;
			estado_teste <= "000";
			
			
			WHEN S1 =>--esperar
			L <= '0';
			Dreg_clr <= '0';
			Dreg_ld <= '0';
			Dctr_cnt <= '0';
			Dctr_clr <= '1';
			IF B = '0' THEN	estado_seguinte <= S1;
			ELSIF B = '1' THEN estado_seguinte <=S2;
			END IF;
			estado_teste <= "001";
			
			WHEN S2 =>--leiser
			L <= '1';
			Dreg_clr <= '0';
			Dreg_ld <= '0';
			Dctr_cnt <= '0';
			Dctr_clr <= '0';
			estado_seguinte <= S3;
			estado_teste <= "010";
			
			WHEN S3 =>--contador
			L <= '0';
			Dreg_clr <= '0';
			Dreg_ld <= '0';
			Dctr_cnt <= '1';
			Dctr_clr <= '0';
			IF S = '0' THEN	estado_seguinte <= S3;
			ELSIF S = '1' THEN estado_seguinte <=S4;
			END IF; 
			estado_teste <= "011";
			
			WHEN S4 =>--calculo da distancia
			L <= '0';
			Dreg_clr <= '0';
			Dreg_ld <= '1';
			Dctr_cnt <= '0';
			Dctr_clr <= '0';
			estado_seguinte <= S1;
			estado_teste <= "100";
			
		END CASE;
	END PROCESS;
PROCESS(clk_control)
	BEGIN 
	IF (clk_control'EVENT AND clk_control = '1') THEN 
		estado_atual <= estado_seguinte;
	END IF;
END PROCESS;

estado <= estado_teste;

END ARCHITECTURE;
