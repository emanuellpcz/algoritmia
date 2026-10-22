Algoritmo Propinas
	definir cuenta como entero
	definir porprop como entero
	definir personas Como Entero
	imprimir "ingrese la cuenta"
	leer cuenta
	imprimir "ingrese el porcentaje de la propina"
	leer porprop
	imprimir "ingrese la cantidad de personas"
	leer personas
	propina=(cuenta*porprop)/100
	subtotal=cuenta+propina
	iva=cuenta*0.19
	total=subtotal+iva
	cdno=total/personas
	imprimir "la propina es de: " ,propina
	imprimir "el iva es de: " ,iva
	imprimir "el subtotal es de: " ,subtotal
	imprimir "el total es de: ", total
	imprimir "por lo cual el resultado para cada uno es de: " ,cdno
FinAlgoritmo
