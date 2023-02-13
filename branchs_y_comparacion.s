.global _start
_start:
	MOV R0, #1
	MOV R1, #2
	
	CMP R0,R1 //CMP, comparacion, esto va a hacer R0-R1, segun si el resultado es positivo, negativo, o cero, va a cambiar cpsr (ya que por ejemplo, si es negativo le va a poner un flag)
	
	BGT greater //Branch Greater Than, cuando se efectua CMP, si es mayor va a ir a este label
	//BGE		Mayor o igual
	//BLT		Menor que
	//BLE		Menor o igual
	//BEQ		Iguales
	//BNE		No iguales
	BAL default//Branch Always, como assembly despues de ejecutar el CMP, digamos que no es mayor, bueno, este igual sigue ejecutando hasta la proxima instruccion, asi que necesitamos esto para que corte
	
	
	
greater: //label, es similar a los go to
	MOV R2, #1	//mira, aca tenemos el problema con default, como siempre hace las instrucciones de manera secuencial, despues de ejecutar este MOV, va a ir a default xd
	
default:
	MOV R2, #2