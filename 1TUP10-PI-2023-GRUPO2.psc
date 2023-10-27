Proceso TpProgramacion
	Definir decision, decisionRutas, cantPasajeros como entero
	Definir pasajeros como caracter
	Definir datosPasajeros Como Entero
	cantPasajeros = 0
	Dimension pasajeros[400] //Guardo el nombre de pasajeros
	Dimension datosPasajeros[400, 5]//Guardo dni, telefono, equipaje en bodega, numero de pasajero y ruta
	
	Mostrar "Bienvenido a Aerolineas Argentina"
	Mostrar ""
	
	repetir
		Menu // llamo al subPoceso que muestra el menu
		decision = ValidarOpcion(1,6)
		
		segun decision Hacer
			1:
				SubMenuRutas
				decisionRutas = ValidarOpcion(1,4)
				si decisionRutas == 1 Entonces
					si cantPasajeros > 120 Entonces
						Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
					SiNo
						Mostrar "Ingrese su nombre y apellido: "
						leer pasajeros[cantPasajeros]
						//---------------------------------------CargarDatosPasajeros(datosPasajeros[400,5], cantPasajeros)-----------------------Despues busco como completar esto
					FinSi
				FinSi
				cantPasajeros = cantPasajeros +  1
		FinSegun
		
	Mientras Que decision <> 6
FinProceso

// SubProceso que muestra el Menu
SubProceso Menu
	Mostrar "1 - Venta de pasaje."
	Mostrar "2 - Buscar pasaje vendido."
	Mostrar "3 - Buscar pasajero. "
	Mostrar "4 - Ordenar y mostrar lista. "
	Mostrar "5 - Listados."
	Mostrar "6 - Salir."
	Mostrar "Elija una de las siguientes opciones: "
FinSubProceso

// Menu que muestra las rutas
SubProceso SubMenuRutas
	Mostrar "Rutas aéreas disponibles"
	Mostrar "------------------------"
	Mostrar "1 - Buenos Aires - Bariloche"
	Mostrar "2 - Buenos Aires - Salta"
	Mostrar "3 - Rosario - Buenos Aires"
	Mostrar "4 - Mar Del Plata - Mendoza"
FinSubProceso

// Esta funcion valida que el usuario ingrese un valor de 1 a 6
Funcion decision = ValidarOpcion(min, max)
	leer decision
	Mientras decision < min o decision > max Hacer
		Mostrar "Opcion no valida. Ingrese una de las opciones que aparecen por pantalla: "
		leer decision
	FinMientras
fin funcion

//Funcion CargarDatosPasajeros(arreglo[400 , 5] , indice)
//	Mostrar ""
//FinFuncion


