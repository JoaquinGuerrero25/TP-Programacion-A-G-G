Proceso TpProgramacion
	Definir opcionSubMenu, decisionRutas, equipajeAux, numPasajeroAux como entero
	Definir cantPasajeros, cantPasajerosBB, cantPasajerosBS, cantPasajerosRB, cantPasajerosMM  Como Entero
	Definir asientoBB, asientoBS, asientoRB, asientoMM Como Entero
	Definir nombrePasajeros, opcionMenu como caracter
	Definir datosPasajeros, numAsientoBuscar Como Entero
	Definir valorVuelo Como Real
	Definir costoVuelo Como Real
	valorVuelo = 0
	cantPasajeros = 0
	cantPasajerosBB = 1
	cantPasajerosBS = 1
	cantPasajerosRB = 1
	cantPasajerosMM = 1
	asientoBB = 1
	asientoBS = 1
	asientoRB = 1
	asientoMM = 1
	Dimension nombrePasajeros[400] //Guardo el nombre de pasajeros
	Dimension datosPasajeros[400, 6] //Guardo dni, telefono, equipaje en bodega, numero de pasajero, ruta y asiento 
	Dimension costoVuelo[400]
	
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------FALTA VALIDAR LOS NUMEROS DE PASAJERO, NOMBRE(que no compre mas de 1 vuelo por nombre-----------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	Mostrar "Bienvenido a Aerolineas Argentina"
	Mostrar "---------------------------------"
	repetir
		Menu // llamo al subPoceso que muestra el menu
		opcionMenu = ValidarOpcionMenu("1","2","3","4","5","SALIR")
		segun opcionMenu Hacer
			"1":
				Mostrar "Rutas aéreas disponibles"
				Mostrar "------------------------"
				SubMenuRutas
				opcionSubMenu = ValidarOpcion(1, 4)
				segun opcionSubMenu hacer
					1:
						si cantPasajerosBB > 120 Entonces
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						SiNo
							CargarDatosPasajero(nombrePasajeros,datosPasajeros, cantPasajeros,6)
							datosPasajeros[cantPasajeros, 4] = 1
							datosPasajeros[cantPasajeros, 5] = asientoBB
							ValorVuelo = calcularCosto(cantPasajerosBB,150000,180000,1.10,20,60,datosPasajeros,cantPasajeros,6)
							costoVuelo[cantPasajeros] = valorVuelo
							MostrarResumen(nombrePasajeros,cantPasajeros,datosPasajeros,6,costoVuelo)
							cantPasajeros = cantPasajeros +  1
							cantPasajerosBB = cantPasajerosBB + 1
							asientoBB = asientoBB + 1
						FinSi
					2:
						Si cantPasajerosBS > 120 Entonces
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						SiNo
							CargarDatosPasajero(nombrePasajeros,datosPasajeros, cantPasajeros,6)
							datosPasajeros[cantPasajeros, 4] = 2
							datosPasajeros[cantPasajeros, 5] = asientoBS
							ValorVuelo = calcularCosto(cantPasajerosBB,120000,150000,1.10,20,60,datosPasajeros,cantPasajeros,6)
							costoVuelo[cantPasajeros] = valorVuelo
							MostrarResumen(nombrePasajeros,cantPasajeros,datosPasajeros,6,costoVuelo)
							cantPasajeros = cantPasajeros +  1
							cantPasajerosBS = cantPasajerosBS + 1
							asientoBS = asientoBS + 1
						FinSi
					3:
						Si cantPasajerosRB > 80 Entonces
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						SiNo
							CargarDatosPasajero(nombrePasajeros,datosPasajeros, cantPasajeros,6)
							datosPasajeros[cantPasajeros, 4] = 3
							datosPasajeros[cantPasajeros, 5] = asientoRB
							ValorVuelo = calcularCosto(cantPasajerosBB,70000,95000,1.15,10,40,datosPasajeros,cantPasajeros,6)
							costoVuelo[cantPasajeros] = valorVuelo
							MostrarResumen(nombrePasajeros,cantPasajeros,datosPasajeros,6,costoVuelo)
							cantPasajeros = cantPasajeros +  1
							cantPasajerosRB = cantPasajerosRB + 1
							asientoRB = asientoRB + 1
						FinSi
					4:
						Si cantPasajerosMM > 80 Entonces
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						SiNo
							CargarDatosPasajero(nombrePasajeros,datosPasajeros, cantPasajeros,6)
							datosPasajeros[cantPasajeros, 4] = 4
							datosPasajeros[cantPasajeros, 5] = asientoRB
							ValorVuelo = calcularCosto(cantPasajerosBB,95000,125000,1.15,10,40,datosPasajeros,cantPasajeros,6)
							costoVuelo[cantPasajeros] = valorVuelo
							MostrarResumen(nombrePasajeros,cantPasajeros,datosPasajeros,6,costoVuelo)
							cantPasajeros = cantPasajeros +  1
							cantPasajerosMM = cantPasajerosMM + 1
							asientoMM = asientoMM + 1
						FinSi
				FinSegun
			"2":
				SubMenuRutas
				Mostrar "Ingrese la ruta del pasaje que quiere buscar: "
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaBinaria(datosPasajeros, cantPasajerosBB , numAsientoBuscar, nombrePasajeros)
						Mostrar "------------------------------------------"
					2:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaBinaria(datosPasajeros, cantPasajerosBS , numAsientoBuscar, nombrePasajeros)
						Mostrar "------------------------------------------"
					3:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaBinaria(datosPasajeros, cantPasajerosRB , numAsientoBuscar, nombrePasajeros)
						Mostrar "------------------------------------------"
					4:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaBinaria(datosPasajeros, cantPasajerosMM , numAsientoBuscar, nombrePasajeros)
						Mostrar "------------------------------------------"
				FinSegun
		FinSegun
	Mientras Que opcionMenu <> "SALIR"
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
	Mostrar "1 - Buenos Aires - Bariloche"
	Mostrar "2 - Buenos Aires - Salta"
	Mostrar "3 - Rosario - Buenos Aires"
	Mostrar "4 - Mar Del Plata - Mendoza"
FinSubProceso

Funcion opcionMenu = ValidarOpcionMenu(op1,op2,op3,op4,op5,opSalir)
	Leer opcionMenu
	opcionMenu = Mayusculas(opcionMenu)
	Mientras opcionMenu <> op1 y opcionMenu <> op2 y opcionMenu <> op3 y opcionMenu <> op4 y opcionMenu <> op5 y opcionMenu <> opSalir
		Mostrar "La opcion ingresada es incorrecta. Ingrese una de las opicones que aparecen en pantalla: "
		Leer opcionMenu
		opcionMenu = Mayusculas(opcionMenu)
	FinMientras
FinFuncion

Funcion opcionSubMenu = ValidarOpcion(min, max)
	leer opcionSubMenu
	Mientras opcionSubMenu < min o opcionSubMenu > max Hacer
		Mostrar "Opcion fuera de rango. Ingrese una entre ", min, " y ", max, ": "
		leer opcionSubMenu
	FinMientras
fin funcion

SubProceso CargarDatosPasajero(nombre, datos, pasajero, m)
	IngresarYValidarNombre(nombre, pasajero)
	IngresarYValidarDNI(datos, pasajero)
	Mostrar "Ingrese su numero de telefono: +54- "
	leer datos[pasajero, 1]
	IngresarYValidarEquipaje(datos, pasajero)
	IngresarYValidarNumPasajero(datos, pasajero)
FinSubProceso


SubProceso  IngresarYValidarNombre(nombre, pasajero)
	Mostrar "Ingrese su nombre y apellido: "
	Leer nombre[pasajero]
	Mientras nombre[pasajero] == " " o nombre[pasajero] == "" Hacer
		Mostrar "Ingrese el nombre y apellido correctamente: "
		leer nombre[pasajero]
	FinMientras
FinSubProceso

SubProceso IngresarYValidarDNI(datos, pasajero)
	Mostrar "Ingrese su DNI: "
	Leer datos[pasajero, 0]
	Mientras Longitud(ConvertirATexto(datos[pasajero, 0 ])) < 7 o Longitud(ConvertirATexto(datos[pasajero, 0 ])) > 9 Hacer
		Mostrar "Ingrese su DNI correctamente: " 
		Leer datos[pasajero, 0]
	FinMientras
FinSubProceso

SubProceso IngresarYValidarEquipaje(datos, pasajero)
	Mostrar "Ingrese 0 si no tiene equipaje en bodega o ingrese 1 si tiene equipaje en bodega: "
    Leer datos[pasajero, 2]
	Mientras datos[pasajero, 2] <> 0 y datos[pasajero, 2] <> 1 Hacer
		Leer datos[pasajero, 2]
	FinMientras
FinSubProceso

SubProceso IngresarYValidarNumPasajero(datos, pasajero)
	Mostrar "Ingrese el número de pasajero (4 dígitos): "
    Leer datos[pasajero, 3]
	Mientras Longitud(ConvertirATexto(datos[pasajero, 3])) <> 4 
		Mostrar "El numero de pasajero debe ser de 4 digitos. Ingrese un numero correcto: "
		leer datos[pasajero, 3]
	FinMientras
FinSubProceso

Funcion ValorVuelo = calcularCosto(pasajeros,valorInicial,ValorFinal,incremento,primerTanda,segundaTanda,arrayDatos,pasajero,col)
	Si pasajeros <= primerTanda Entonces
		ValorVuelo = valorInicial
	SiNo
		si pasajeros > primerTanda y pasajeros <= segundaTanda Entonces
			ValorVuelo = valorInicial * incremento
		SiNo
			ValorVuelo =  ValorFinal
		FinSi
	FinSi
	Si arrayDatos[pasajero, 2] == 1 entonces 
		ValorVuelo = ValorVuelo * 1.05
	FinSi
FinFuncion

SubProceso MostrarResumen(nombre,pasajero,datos,col,costo)
	Mostrar "------------------------------------------"
	Segun datos[pasajero, 4] hacer
		1:
			Mostrar "Ruta: Buenos Aires - Bariloche"
		2:
			Mostrar "Ruta: Buenos Aires - Salta"
		3:
			Mostrar "Ruta: Rosario - Buenos Aires"
		4:
			Mostrar "Ruta: Mar Del Plata - Mendoza"
	FinSegun
	Mostrar "Nombre y Apellido: ", nombre[pasajero]
	Mostrar "DNI: ", datos[pasajero, 0]
	Mostrar "Teléfono: +54", datos[pasajero, 1]
	Si datos[pasajero, 2] == 0 Entonces
		Mostrar "Equipaje en bodega: Falso"
	SiNo
		Mostrar "Equipaje en bodega: Verdadero"
	FinSi
	Mostrar "Número pasajero frecuente: ", datos[pasajero, 3]
	Mostrar "Asiento: ", datos[pasajero, 5]
	Mostrar "Costo Pasaje: $", costo[pasajero]
	Mostrar "------------------------------------------"
FinSubProceso

SubProceso BusquedaBinaria(datos, pasajeros, buscar, nombre)
	Definir i, centro, inferior, superior Como Entero
	Definir encontrado Como Logico
	inferior = 0
	superior = pasajeros - 1
	encontrado = Falso
	Repetir
		centro = trunc((inferior + superior) / 2)
		Si datos[centro, 5] == buscar Entonces
			Mostrar "Nombre y Apellido: ",nombre[centro]
			Segun datos[centro, 4] hacer
				1:
					Mostrar "Ruta: Buenos Aires - Bariloche"
				2:
					Mostrar "Ruta: Buenos Aires - Salta"
				3:
					Mostrar "Ruta: Rosario - Buenos Aires"
				4:
					Mostrar "Ruta: Mar Del Plata - Mendoza"
			FinSegun
			Mostrar "DNI: ", datos[centro, 0]
			encontrado = Verdadero
		SiNo
			si datos[centro, 4] < buscar
				inferior = centro + 1
			SiNo
				superior = centro - 1
			FinSi
		FinSi
		si inferior > superior
			Mostrar "Pasaje no encontrado" 
		FinSi
	Mientras Que !encontrado y inferior <= superior
FinSubProceso


























