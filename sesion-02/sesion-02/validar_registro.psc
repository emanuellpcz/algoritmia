Algoritmo validar_registro
	
	Definir edad Como Entero
	Definir respuesta Como Caracter
	Escribir "Cuantos años tienes?"
	Leer edad
	Escribir "Acepta los terminos?  (S/N)"
	Leer respuesta
	//respuesta <- Mayusculas(respuesta)
	si edad >= 14 y (respuesta = "S" o respuesta = "s") Entonces
		Escribir "Registro exitoso"
	SiNo
		Escribir "no puedes registrarte"
	FinSi
	
FinAlgoritmo
