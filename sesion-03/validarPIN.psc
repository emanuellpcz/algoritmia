Algoritmo validarPIN
	
	Definir pin Como Entero
	Definir acceso Como Logico
	intento = 0
	acceso = falso
	
	Repetir
		
		intento <- intento + 1
		Escribir "ingrese su pin"
		Leer pin
		si pin = 2580 Entonces
			acceso = Verdadero
		FinSi
	Hasta Que acceso o intento = 3
	
	si acceso Entonces
		Escribir "bienvenido"
	SiNo
		Escribir "tarjeta bloqueada"
	FinSi
	
	
FinAlgoritmo
