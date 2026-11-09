Algoritmo CalculoEstacionamiento
	
	Definir vehiculo Como Cadena
	Definir tiempoMinutos Como Entero
	Definir poseeFactura Como Cadena
	
	Definir VALOR_HORA_AUTO, VALOR_HORA_MOTO Como Real
	Definir LIMITE_AUTO Como Real
	Definir tiempoHoras Como Entero
	Definir subtotal, totalPagar Como Real
	
	VALOR_HORA_AUTO <- 4000
	VALOR_HORA_MOTO <- 2000
	LIMITE_AUTO <- 30000
	
	Escribir "=== SISTEMA DE COBRO DE PARQUEADERO ==="
	Escribir "Ingrese el tipo de vehículo (Carro / Moto):"
	Leer vehiculo
	vehiculo <- Minusculas(vehiculo)
	
	Escribir "Ingrese el tiempo de permanencia en minutos:"
	Leer tiempoMinutos
	
	Escribir "¿Tiene factura de compra en el centro comercial? (Sí / No):"
	Leer poseeFactura
	poseeFactura <- Minusculas(poseeFactura)
	
	Escribir "----------------------------------------"
	Escribir "RESUMEN DE DATOS:"
	Escribir "Tipo: ", vehiculo
	Escribir "Tiempo: ", tiempoMinutos, " min"
	Escribir "Factura: ", poseeFactura
	Escribir "----------------------------------------"
	
	Si tiempoMinutos < 0 Entonces
		Escribir "RESULTADO: Minutos negativos. Entrada inválida."
	Sino
		Si vehiculo <> "carro" Y vehiculo <> "moto" Entonces
			Escribir "RESULTADO: Tipo no válido."
		Sino
			Si tiempoMinutos <= 15 Entonces
				totalPagar <- 0
				tiempoHoras <- 0
			Sino
				tiempoHoras <- Trunc(tiempoMinutos / 60)
				Si (tiempoMinutos MOD 60) > 0 Entonces
					tiempoHoras <- tiempoHoras + 1
				FinSi
				
				Si vehiculo = "carro" Entonces
					subtotal <- tiempoHoras * VALOR_HORA_AUTO
					Si subtotal > LIMITE_AUTO Entonces
						subtotal <- LIMITE_AUTO
					FinSi
				Sino
					subtotal <- tiempoHoras * VALOR_HORA_MOTO
				FinSi
				
				Si poseeFactura = "si" O poseeFactura = "sí" Entonces
					totalPagar <- subtotal * 0.50
				Sino
					totalPagar <- subtotal
				FinSi
			FinSi
			
			Escribir "Horas calculadas a cobrar: ", tiempoHoras
			Escribir "RESULTADO ESPERADO (Cobro): $", totalPagar
		FinSi
	FinSi
	
FinAlgoritmo