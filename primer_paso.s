.global _start //.global _start es una manera de decirle a quien ejecute mi programa "mira, si queres ejecutar empeza desde este label"
_start:	//label, es como una "funcion" en los lenguajes de programacion de mas alto nivel (?
	MOV R0,#30 //mov, mueve informacion, donde el destino es el primer parametro, y de donde viene el segundo
	
	MOV R7,#1 //la posicion de memoria R7 guarda llamadas al sistema operativo, pasarle el numero 1 significa termina el programa
	SWI 0 //aca le digo al sistema operativo, hace una interrupcion del programa y que siga el sistema operativo
	