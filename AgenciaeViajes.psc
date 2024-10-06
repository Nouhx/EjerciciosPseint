Algoritmo AgenciaeViajes
	Definir destino, dias, continuar Como Caracter
    Definir costoPorDia, costoTotal, descuento Como Real
    
    continuar <- "si"
    
    Mientras continuar = "si" Hacer
        // Mostrar opciones de destino
        Escribir "Seleccione su destino:"
        Escribir "1. Playa ($500.000 por día)"
        Escribir "2. Montaña ($400.000 por día)"
        Escribir "3. Ciudad ($300.000 por día)"
        Leer destino
		
        // Establecer costo por día según el destino seleccionado
        Segun destino Hacer
            Caso "1":
                costoPorDia <- 500000
                Escribir "Ha seleccionado Playa."
            Caso "2":
                costoPorDia <- 400000
                Escribir "Ha seleccionado Montaña."
            Caso "3":
                costoPorDia <- 300000
                Escribir "Ha seleccionado Ciudad."
            De Otro Modo:
                Escribir "Destino no válido."
        FinSegun
		
        // Ingresar cantidad de días de estancia
        Escribir "Ingrese la cantidad de días de estancia:"
        Leer dias
		
        // Calcular costo total sin descuentos
        costoTotal <- costoPorDia * ConvertirANumero(dias)
		
        // Aplicar descuentos según el número de días
        Si ConvertirANumero(dias) >= 7 Entonces
            descuento <- costoTotal * 0.15
        Sino
            Si ConvertirANumero(dias) >= 3 Entonces
                descuento <- costoTotal * 0.10
            Sino
                descuento <- 0
            FinSi
        FinSi
		
        costoTotal <- costoTotal - descuento
		
        // Mostrar el resumen de la reserva
        Escribir "El costo total de su viaje es: $", costoTotal
        Escribir "Descuento aplicado: $", descuento
		
        // Preguntar si desea realizar otra reserva
        Escribir "¿Desea realizar otra reserva? (si/no)"
        Leer continuar
    FinMientras
	
    Escribir "Gracias por usar la Agencia de Viajes."
	
FinAlgoritmo
