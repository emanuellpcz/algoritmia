Algoritmo semaforo
	
	Definir unidades Como Entero
	
	Escribir "Cuantas unidades le quedan?"
	leer unidades
	
	si unidades < 0 Entonces
		Escribir "Error, valor no valido"
	FinSi
	
	si	unidades = 0 Entonces
		Escribir "El stock esta agotado, debe comprar mas"
	FinSi
	
	si	unidades >= 1 y unidades <= 10 Entonces
		Escribir "Por ahora hay unidades, pero deberias ir comprando mas"
	FinSi
	
	si	unidades > 10 Entonces
		Escribir "Excelente, tienes buen stock"
	FinSi
	
FinAlgoritmo
