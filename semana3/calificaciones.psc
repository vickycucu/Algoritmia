Algoritmo RegistroCalificaciones
	
	Definir indice Como Entero
	Definir calificacion, totalSuma, calificacionMaxima, calificacionMinima Como Real
	Definir cantidadAprobados Como Entero
	Definir existeReprobado Como Logico
	
	totalSuma <- 0
	cantidadAprobados <- 0
	existeReprobado <- Falso
	
	Para indice <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese la nota del estudiante ", indice, " (de 1.0 a 5.0):"
		Leer calificacion
		
		totalSuma <- totalSuma + calificacion
		
		Si calificacion >= 3.0 Entonces
			cantidadAprobados <- cantidadAprobados + 1
		Sino
			existeReprobado <- Verdadero
		FinSi
		
		Si indice = 1 Entonces
			calificacionMaxima <- calificacion
			calificacionMinima <- calificacion
		Sino
			Si calificacion > calificacionMaxima Entonces
				calificacionMaxima <- calificacion
			FinSi
			Si calificacion < calificacionMinima Entonces
				calificacionMinima <- calificacion
			FinSi
		FinSi
	FinPara
	
	Escribir "--------------------------------------------------"
	Escribir "PROMEDIO (Acumulador): ", totalSuma / 5
	Escribir "CANTIDAD QUE APROBARON (Contador): ", cantidadAprobados
	Escribir "NOTA MÁS ALTA (Máximo): ", calificacionMaxima
	Escribir "NOTA MÁS BAJA (Mínimo): ", calificacionMinima
	
	Si existeReprobado Entonces
		Escribir "¿ALGUIEN PERDIÓ? (Bandera): Sí"
	Sino
		Escribir "¿ALGUIEN PERDIÓ? (Bandera): No"
	FinSi
	
FinAlgoritmo