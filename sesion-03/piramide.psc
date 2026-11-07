Algoritmo piramide
	
	Definir n,fila,j Como Entero
	Escribir "Ingrese la altura de la piramide"
	Leer n
	
	Para fila <- 1 Hasta n Hacer
		para j <- 1 hasta n - fila con paso 1 Hacer
			Escribir Sin Saltar" "
		FinPara
		para j <- 1 hasta 2*fila-1 Hacer
			Escribir Sin Saltar"*"
		FinPara
		Escribir ""
	FinPara 
	
FinAlgoritmo
