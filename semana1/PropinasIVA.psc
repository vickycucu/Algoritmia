Algoritmo Propinas
	
	Definir Personas Como Entero
	Definir  Total, PorcPropina, Propina, Subtotal, CadaUno, IVA, TotalTotal Como Real
	
	Escribir '¿Cuál fue el total de la cuenta?'
	Leer Total
	Escribir '¿Cuánto es el porcentaje de propina (%)?'
	Leer PorcPropina
	Escribir '¿Cuántas personas son?'
	Leer Personas
	
	Subtotal = Total/1.19
	IVA = Subtotal*(19/100)
	Propina = Subtotal*(PorcPropina/100)
	TotalTotal = Subtotal+Propina+IVA
	CadaUno = TotalTotal/Personas
	
	Escribir "El subtotal es: $", Subtotal
	Escribir "El IVA es: $", IVA
	Escribir 'A cada uno le corresponden: $', CadaUno
	
FinAlgoritmo
