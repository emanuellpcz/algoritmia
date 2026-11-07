Algoritmo cajeroParqueadero
	
	Escribir "Ingrese cuanto pago: (ingrese 0 para cerrar la caja)"
	Leer valorr
	
	Mientras valorr <> 0 Hacer
		total = total + valorr
		carros = carros + 1
		Escribir "Ingrese cuanto pago: (ingrese 0 para cerrar la caja)"
		leer valorr
	FinMientras
	
	Escribir "hoy se atendienron: ",carros," carros"
	Escribir "y se recaudaron: ",total,"$"
	
FinAlgoritmo
