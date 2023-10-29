Proceso TpProgramacion
	Definir decision, decisionRutas, equipajeAux, numPasajeroAux como entero
	Definir cantPasajerosBB, cantPasajerosBS, cantPasajerosRB, cantPasajerosMM Como Entero
	Definir pasajeros como caracter
	Definir datosPasajeros Como Entero
	Definir valorVuelo Como Real
	valorVuelo = 0
	cantPasajeros = 0
	Dimension pasajeros[400] //Guardo el nombre de pasajeros
	Dimension datosPasajeros[400, 6]//Guardo dni, telefono, equipaje en bodega, numero de pasajero y ruta
	
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
					si cantPasajerosBB > 120 Entonces
						Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
					SiNo
						Mostrar "Ingrese su nombre y apellido: "
						leer pasajeros[cantPasajerosBB] 
						Mostrar "Ingrese su DNI: "
						datosPasajeros[cantPasajerosBB, 0] = ValidarOpcion(1000000 , 99999999) 
						Mostrar "Ingrese su numero de telefono: +54- "
						leer datosPasajeros[cantPasajerosBB, 1] 
						Mostrar "Ingrese 0 si no tiene equipaje en bodega o ingrese 1 si tiene equipaje en bodega: " 
						equipajeAux = validarEquipaje(0,1)
						datosPasajeros[cantPasajerosBB,2] = equipajeAux
						Mostrar "Ingrese el numero de pasajero: "
						numPasajeroAux = ValidarNumPasajero(1000,9999)
						datosPasajeros[cantPasajerosBB, 3] = numPasajeroAux
						datosPasajeros[cantPasajerosBB, 4] = 1
						ValorVuelo = calcularCosto(cantPasajerosBB,150000,180000,1.10,20,60)
					FinSi
				FinSi
				cantPasajerosBB = cantPasajerosBB +  1
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

// Funcion Para validar equipaje en bodega
Funcion equipajeAux = validarEquipaje(fals,verdader)
	definir aux Como Entero
	leer aux
	Mientras aux <> fals y aux <> verdader
		Mostrar "Opcion incorrecta. Por favor ingrese 0 o 1 dependiendo su caso: "
		leer aux
	FinMientras
FinFuncion

Funcion numPasajeroAux = ValidarNumPasajero(min,max)
	Definir numAux Como Entero
	leer numAux
	Mientras numAux < min o numAux > max Hacer
		Mostrar "Ingrese un numero de pasajero incorrecto. Ingrese nuevamente su numero de pasajero correcto: " 
		leer numAux
	FinMientras
FinFuncion

Funcion ValorVuelo = calcularCosto(pasajeros,valorInicial,ValorFinal,incremento,primerTanda,segundaTanda)
	definir costo Como Real
	Si pasajeros <= primerTanda Entonces
		costo = valorInicial
	SiNo
		si pasajeros > primerTanda y pasajeros <= segundaTanda Entonces
			costo = valorInicial * incremento
		SiNo
			costo =  ValorFinal
		FinSi
	FinSi
FinFuncion




