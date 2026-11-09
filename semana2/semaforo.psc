Algoritmo ControlSemaforoInventario
	
	Definir cantidadExistente Como Entero
	
	Escribir "Ingrese la cantidad de unidades:"
	Leer cantidadExistente
	
	Si cantidadExistente < 0 Entonces
		Escribir "error"
	Sino
		Si cantidadExistente = 0 Entonces
			Escribir "rojo: agotado"
		Sino
			Si cantidadExistente >= 1 Y cantidadExistente <= 10 Entonces
				Escribir "amarillo: pedir"
			Sino
				Escribir "verde: todo bien"
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
