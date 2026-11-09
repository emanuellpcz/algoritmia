Algoritmo Parqueadero_minutos
	
    Definir vehiculo Como Caracter
	Definir respuesta Como Caracter
    Definir dhoras Como real
    Definir minutos Como entero
    Definir total Como Real
	Definir modulo Como Real
	
    Escribir "Bienvenido a nuestro parqueadero"
    Escribir "vienes en carro o en moto (C/M)?"
    Leer vehiculo
	
si vehiculo <> "m" y vehiculo <> "M" y vehiculo <> "c" y vehiculo <> "C" Entonces
		Escribir "Error"
SiNo
    si    vehiculo = "C" o vehiculo = "c" Entonces
        Escribir "Le recordamos que como es un carro debera pagar $4000 por cada hora"
        Escribir "..."
        Escribir "Hola de nuevo, cuanto tiempo paso? (en minutos)"
        Leer minutos
		
		si minutos <= 15 Entonces
			Escribir "como se tardo menos de 15 minutos su parqueo es gratis"
			total = 0
		SiNo
			dhoras = minutos / 60
			modulo = minutos mod 60
			horas <- trunc(dhoras)
			
			si modulo > 0 Entonces
				horas = horas + 1
			FinSi
			
			total = horas * 4000
		FinSi
		
    FinSi
	
    si vehiculo = "M" o vehiculo = "m" Entonces
        escribir "Le recordamos que como es una moto debera pagar $2000 por cada hora"
        Escribir "..."
        Escribir "Hola de nuevo, cuanto tiempo paso? (en minutos)"
        Leer minutos
		
		si minutos <= 15 Entonces
			Escribir "como se tardo menos de 15 minutos su parqueo es gratis"
			total = 0
		SiNo
			dhoras = minutos / 60
			modulo = minutos mod 60
			horas <- trunc(dhoras)
			
			si modulo > 0 Entonces
				horas = horas + 1
			FinSi
			
			total = horas * 4000
		FinSi
    FinSi
	
    si total > 30000 Entonces
        total = 30000
    FinSi
	
	Escribir "tiene ticket de compra?"
	Leer respuesta
	si respuesta = "s" o respuesta = "S" Entonces
		total = total / 2
	FinSi
	
	
    Escribir "debe pagar un total de $" , total
    Escribir "Gracias por su estadia, vuelva pronto"
	
FinSi
	
	
FinAlgoritmo