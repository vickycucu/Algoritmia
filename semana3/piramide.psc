Algoritmo DibujarPiramideAsteriscos
	
	Definir altura, fila, espacios, asteriscos Como Entero
	
	Escribir "Ingrese la altura de la pirámide:"
	Leer altura
	
	Para fila <- 1 Hasta altura Con Paso 1 Hacer
		Para espacios <- 1 Hasta altura - fila Con Paso 1 Hacer
			Escribir Sin Saltar " "
		FinPara
		
		Para asteriscos <- 1 Hasta (2 * fila - 1) Con Paso 1 Hacer
			Escribir Sin Saltar "*"
		FinPara
		
		Escribir ""
	FinPara
	
FinAlgoritmo