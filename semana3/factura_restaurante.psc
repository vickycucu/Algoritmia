Algoritmo CuentaRestaurante
	
	Definir montoSubtotal, tasaImpuesto, montoPropina Como Real
	
	montoSubtotal <- CapturarConsumo
	tasaImpuesto <- ObtenerPorcentaje(montoSubtotal, 8)
	montoPropina <- ObtenerPorcentaje(montoSubtotal, 10)
	
	DesplegarFactura(montoSubtotal, tasaImpuesto, montoPropina)
	
FinAlgoritmo


SubProceso totalCuenta <- CapturarConsumo
	Definir costoPlato, cantidadPlatos, totalCuenta Como Real
	
	totalCuenta <- 0
	
	Escribir "Ingrese el precio del plato (0 para terminar):"
	Leer costoPlato
	
	Mientras costoPlato <> 0 Hacer
		Escribir "Ingrese la cantidad:"
		Leer cantidadPlatos
		
		totalCuenta <- totalCuenta + (costoPlato * cantidadPlatos)
		
		Escribir "Ingrese el siguiente precio del plato (0 para terminar):"
		Leer costoPlato
	FinMientras
FinSubProceso


SubProceso calculo <- ObtenerPorcentaje(montoBase, porcentajeTasa)
	Definir calculo Como Real
	calculo <- (montoBase * porcentajeTasa) / 100
FinSubProceso


SubProceso DesplegarFactura(montoSubtotal, tasaImpuesto, montoPropina)
	Definir montoTotalFinal Como Real
	
	montoTotalFinal <- montoSubtotal + tasaImpuesto + montoPropina
	
	Escribir "Subtotal: $", montoSubtotal
	Escribir "Impuesto (8%): $", tasaImpuesto
	Escribir "Propina (10%): $", montoPropina
	Escribir "TOTAL A PAGAR: $", montoTotalFinal
FinSubProceso