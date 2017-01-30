--07 de marco de 2013
--comparador de palavras(numeros) de dois bits, caso A>B S retorna 1
--Bit_Vector: eh um tipo de entrada bit com n estradas
--Bit_Vector( 0 to 3): dessa forma o bit mais significativo eh o b0.
--Bit_Vector( 3 downto 0): dessa forma o bit mais significativo eh o b3.
--A <= "1010"; uma palavra de 4 bits eh atribuida ao vetor de bit A, ja valores binarios usa aspas simples.

ENTITY Coincidencia IS
	PORT (A, B : IN BIT_VECTOR(3 DOWNTO 0);
		S : OUT BIT);
END ENTITY;

ARCHITECTURE arquitetura OF Coincidencia IS
	BEGIN
		S <= '1' WHEN A > B ELSE '0'; --laco de compraracao
END arquitetura;


