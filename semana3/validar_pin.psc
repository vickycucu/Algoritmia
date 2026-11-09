Algoritmo VerificacionDeClave
	
	Definir claveSecreta, claveCapturada, contadorIntentos Como Entero
	Definir permisoConcedido Como Logico
	
	claveSecreta <- 1234
	contadorIntentos <- 0
	permisoConcedido <- Falso
	
	Mientras contadorIntentos < 3 Y permisoConcedido = Falso Hacer
		Escribir "Ingrese su PIN (Intento ", contadorIntentos + 1, " de 3):"
		Leer claveCapturada
		
		Si claveCapturada = claveSecreta Entonces
			permisoConcedido <- Verdadero
			Escribir "¡PIN correcto! Acceso concedido."
		Sino
			contadorIntentos <- contadorIntentos + 1
			Si contadorIntentos < 3 Entonces
				Escribir "PIN incorrecto. Intente nuevamente."
			FinSi
		FinSi
	FinMientras
	
	Si permisoConcedido = Falso Entonces
		Escribir "Ha superado los 3 intentos. Sistema bloqueado."
	FinSi
	
FinAlgoritmo