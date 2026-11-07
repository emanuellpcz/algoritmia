Algoritmo calificaciones
	
	Definir nota,suma,mayorr,menorr,aprobados Como real
	Definir perdido Como Logico
	perdido = falso
	menorr = 50
	
	Para i = 1 Hasta 5 Hacer
		Escribir "Ingrese su notas nota"
		Leer nota
		suma = suma + nota
		si nota > mayorr Entonces
			mayorr = nota
		FinSi
		si nota < menorr Entonces
			menorr = nota
		FinSi
		
		si nota >= 3 Entonces
			aprobados = aprobados+1
		FinSi
		si nota < 3 Entonces
			perdido = Verdadero
		FinSi
	FinPara
	
	si perdido = Verdadero Entonces
		Escribir "alguien perdio"
	FinSi
	
	Escribir "Hubo ",aprobados," aprobados"
	Escribir "el promedio fue de: ",suma/5
	Escribir "la nota mas alta fue: ",mayorr
	Escribir "la nota mas baja fue: ",menorr
	
FinAlgoritmo
