.global _start
.equ endlist, 0xaaaaaaaa	//esta es una constante, voy a guardar que en mi memoria, parece que guarda los espacios vacios como aaaaaaaa, asi que voy a iterar hasta ese valor
_start:
	MOV R2, #0
	LDR R0,=list
	LDR R3,=endlist	//en realidad, no usamos esto de la memoria ya que puede tener cualquier cosa, pero para practicar sirve (?
	LDR R1,[R0]
	ADD R2,R2,R1
	
	
loop:
	LDR R1,[R0,#4]!
	CMP R1,R3
	BEQ exit	//si llego a la memoria toda de a, entonces sali
	ADD R2,R2,R1	//si no, sumame a r2 lo que hay en r1
	BAL loop	//y volve a hacer lo mismo

exit:	


.data
list:
	.word 1,2,3,4,5,6,7,8,9,10	//para no tener el problema de la memoria inicializada, podriamos poner un caracter especial al final de la lista, como en C que tenemos el \0