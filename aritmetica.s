.global _start
_start:
	MOV R0, #5
	MOV R1, #12
	ADD R2,R0,R1 //Esto es igual a decir R2 = R0 + R1
	SUB R3,R2,R0 //Esto es la resta, R3 = R0 - R2
	MUL R4,R0,R1 //y bueno, esto multiplicacion
	
	MOV R0, #0xFFFFFFFF
	MOV R1, #1
	SUBS R5,R0,R1 //aca tenemos un problema, cuando tengo una resta me da un numero hexadecimal muy grande, y cuando le resto a un numero muy grande algo chico tambien me da el mismo numero 
	//bueno, ese problema se arregla con el registro cpsr y usando una instruccion especifica, como un "flag" aritmetico, por eso ponemos SUBS en vez de SUB, no se hace siempre porque es una instruccion adicional
	//usamos subs en vez de sub cuando sabemos que voy a tener numeros negativos, o no se que valores van a ser restados
	
	//otro problema interesante, cuando sumo 2 numeros muy grandes que no pueden estar en un mismo registro
	MOV R0, #0xFFFFFFFF
	MOV R1, #6
	ADDS R2,R0,R1	//lo arreglamos como el SUBS, con un flag, hace que guarde en el cpsr que hubo un overflow
	ADC R2,R0,R1 //R2 = R0+R1+lo que sobra
	