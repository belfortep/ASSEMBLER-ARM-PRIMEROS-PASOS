.global _start
_start:

	MOV R0, #27
	LSL	R0, #2	//Logical Shift Left, mueve todos los bits la cantidad de veces asignada a la izquierda, es como multiplicar por 2
	LSR R0, #3  //Logical Shift Right, lo mismo pero a la derecha, divide por 2
	MOV R1, R0, LSL #1 //Pongo en R1 la rotacion de R0
	ROR R0, #1 //Rotacion, mueve los elementos uno a la derecha, pero el de mas a la derecha lo pone al principio de todo, como que hace un circulo digamos