.global _start
_start:
	MOV R0,#0xFF
	MOV R1,#22
	AND R2,R0,R1 //Hago una operacion AND entre R0 y R1, guardo resultado en R2
    ORR R3,R0,R1 //Aca hago una operacion OR, (si, se escribe como ORR)
	EOR R4,R0,R1 //Y aca un XOR
	MVN	R0,R0	//Move Negative desde la fuente, mueve la negacion de la fuente al destino, es una negacion de todo el registro
	