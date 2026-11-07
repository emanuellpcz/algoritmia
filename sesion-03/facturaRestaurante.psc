Algoritmo facturaRestaurante
	
 //Leer pedido
	Escribir "cuanto vale su bandeja?"
	Leer bandeja
	Escribir "cuantas bandejas quiere?"
	Leer nbandejas
	
	Escribir "Cuanto vale su ajiaco?"
	Leer ajiaco
	Escribir "Cuantos ajiacos quiere?"
	Leer najiaco
	
	//calcular subtotal
	subtotal = (bandeja*nbandejas)+(ajiaco*najiaco)
	//calcular porcentajes
	impuesto = subtotal*8/100
	propina = subtotal*10/100
	//Imprimir factura
	factura = subtotal + impuesto + propina
	Escribir "Contando con que su plato vale ",plato," y lo pidio para ",personas," personas, su total a pagar seria de: ",factura," contando con el porcentaje de impuestos que son: ",impuesto, " y su propina de ",propina
	
	
FinAlgoritmo
