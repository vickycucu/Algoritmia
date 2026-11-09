Algoritmo VerificacionDeEdad
	
	Definir aniosPersona Como Entero
	
	Escribir "Ingrese su edad:"
	Leer aniosPersona
	
	Si aniosPersona < 0 O aniosPersona > 120 Entonces
		Escribir "Error: Ingrese una edad válida."
	Sino
		Si aniosPersona >= 18 Entonces
			Escribir "Acceso concedido. Eres mayor de edad."
		Sino
			Escribir "Acceso denegado. Debes ser mayor de 18 años."
		FinSi
	FinSi
	
FinAlgoritmo