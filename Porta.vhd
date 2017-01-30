ENTITY Porta IS 
PORT ( A,B : IN BIT ;
		S: OUT BIT 
		);
		END ENTITY ;
		
ARCHITECTURE logica OF Porta is 
	BEGIN 
	S<=A nand B;
	END ARCHITECTURE ;
	