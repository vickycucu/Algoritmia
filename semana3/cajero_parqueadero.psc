Algoritmo ControlCajaEstacionamiento
	
	Definir montoPago, acumuladoRecaudo, cantidadVehiculos Como Entero
	
	acumuladoRecaudo <- 0
	cantidadVehiculos <- 0
	
	Escribir "Ingrese el valor del parqueadero (0 para terminar):"
	Leer montoPago
	
	Mientras montoPago <> 0 Hacer
		acumuladoRecaudo <- acumuladoRecaudo + montoPago
		cantidadVehiculos <- cantidadVehiculos + 1
		
		Escribir "Ingrese el valor del siguiente carro (0 para terminar):"
		Leer montoPago
	FinMientras
	
	Escribir "Total recaudado: $", acumuladoRecaudo
	Escribir "Cantidad de carros: ", cantidadVehiculos
	
FinAlgoritmo