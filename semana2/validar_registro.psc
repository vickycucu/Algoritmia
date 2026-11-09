Algoritmo ControlDeRegistro
	
	Definir anios Como Entero
	Definir aceptaTerminos Como Caracter
	
	Escribir "¿Cuántos años tienes?"
	Leer anios
	
	Escribir "¿Aceptas los términos? (S/N)"
	Leer aceptaTerminos
	
	aceptaTerminos <- Mayusculas(aceptaTerminos)
	
	Si anios >= 14 Y aceptaTerminos = "S" Entonces
		Escribir "Registro exitoso"
	Sino
		Escribir "No puedes registrarte"
	FinSi
	
FinAlgoritmo
