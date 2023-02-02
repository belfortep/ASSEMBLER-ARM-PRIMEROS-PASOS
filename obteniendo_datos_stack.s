.global _start 
_start:	
	LDR R0,=list //Carga informacion del stack en los registros, pero solo la primer posicion, es como cuando recibis el puntero de un malloc (?
	LDR R1, [R0]	//Los corchetes dicen "quiero los valores que estan dentro de esta posicion de memoria", es como en C cuando desreferencias un puntero (?
	LDR R2, [R0,#4]		//aca estoy moviendome 4 espacios, osea es aritmetica de punteros xd, estoy yendo a la posicion de memoria una posicion mas adelante
	//LDR R2, [R0,#4]! //poniendo el signo de ! hace que cambie el valor de R0 en una posicion mas adelante, osea cambia el valor en R0, tambien es equivalente a LDR R2,[R0],#4
.data	//esta parte es para guardar informacion en el stack
list:	//esta seria como una variable (?
	.word 10,-5,1,4,61,1,5,7		//.word, los datos se guardan en 32 bits