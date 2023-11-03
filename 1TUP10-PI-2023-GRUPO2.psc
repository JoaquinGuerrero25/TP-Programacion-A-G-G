Proceso AlternativaTp2
	Definir rutaBB, rutaBS, rutaRB, rutaMM Como Entero
	Definir opcionSubMenu, decisionRutas como entero
	Definir opcionMenu, nombresPasajeros, pasajeroABuscar, opcionOrdenarYMostrar Como Caracter
	Definir cantPasajeros, cantPasajerosBB, cantPasajerosBS, cantPasajerosRB, cantPasajerosMM  Como Entero
	Definir asientoBB, asientoBS, asientoRB, asientoMM Como Entero
	Definir valorPasaje, costoPasaje Como Real
	Dimension rutaBB[120, 7]
	Dimension rutaBS[120, 7]   // dni, telefono, equipaje en bodega, num pasajero, ruta, asiento y indice pasajero
	Dimension rutaRB[80, 7]
	Dimension rutaMM[80, 7]
	Dimension nombresPasajeros[400]
	Dimension valorPasaje[400]
	cantPasajeros = 0
	cantPasajerosBB = 0
	cantPasajerosBS = 0
	cantPasajerosRB = 0
	cantPasajerosMM = 0
	asientoBB = 1
	asientoBS = 1
	asientoRB = 1
	asientoMM = 1
	Mostrar "Bienvenido a Aerolineas Argentina"
	Mostrar "---------------------------------"
	Repetir
		Menu
		opcionMenu = ValidarOpcionMenu("1","2","3","4","5","SALIR")
		Mostrar "---------------------------------"
		Segun opcionMenu Hacer
			"1":
				Mostrar "Rutas aéreas disponibles"
				Mostrar "---------------------------------"
				SubMenuRutas
				Mostrar "Ingrese una opcion: " 
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu Hacer
					1:
						Si cantPasajerosBB < 120 Entonces
							cargarDatosPasajeros(rutaBB, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosBB, 1, asientoBB)
							costoPasaje = calcularPrecioPasaje(cantPasajerosBB, 150000, 180000, 1.10,20,60,rutaBB)
							valorPasaje[cantPasajeros] = costoPasaje
							mostrarResumenPasajero(nombresPasajeros, rutaBB, cantPasajeros, cantPasajerosBB, valorPasaje)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosBB = cantPasajerosBB + 1
							asientoBB = asientoBB + 1
						SiNo
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						FinSi
					2:
						Si cantPasajerosBS < 120 Entonces
							cargarDatosPasajeros(rutaBS, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosBS, 2, asientoBS)
							costoPasaje = calcularPrecioPasaje(cantPasajerosBS, 120000, 150000, 1.10,20,60,rutaBS)
							valorPasaje[cantPasajeros] = costoPasaje
							mostrarResumenPasajero(nombresPasajeros, rutaBS, cantPasajeros, cantPasajerosBS, valorPasaje)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosBS = cantPasajerosBS + 1
							asientoBS = asientoBS + 1
						SiNo
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						FinSi
					3:
						Si cantPasajerosRB < 80 Entonces
							cargarDatosPasajeros(rutaRB, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosRB, 3, asientoRB)
							costoPasaje = calcularPrecioPasaje(cantPasajerosRB, 70000, 95000, 1.15,10,40,rutaRB)
							valorPasaje[cantPasajeros] = costoPasaje
							mostrarResumenPasajero(nombresPasajeros, rutaRB, cantPasajeros, cantPasajerosRB, valorPasaje)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosRB = cantPasajerosRB + 1
							asientoRB = asientoRB + 1
						SiNo
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						FinSi
					4:
						Si cantPasajerosMM < 80 Entonces
							cargarDatosPasajeros(rutaMM, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosMM, 3, asientoMM)
							costoPasaje = calcularPrecioPasaje(cantPasajerosMM, 95000, 125000, 1.15,10,40,rutaMM)
							valorPasaje[cantPasajeros] = costoPasaje
							mostrarResumenPasajero(nombresPasajeros, rutaMM, cantPasajeros, cantPasajerosMM, valorPasaje)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosMM = cantPasajerosMM + 1
							asientoMM = asientoMM + 1
						SiNo
							Mostrar "Se alcanzo el limite maximo de pasajeros para este vuelo."
						FinSi
				FinSegun
			"2":
				SubMenuRutas
				Mostrar "Ingrese la ruta en la que desea buscar: " 
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaXAsiento(RutaBB,nombresPasajeros, cantPasajerosBB, numAsientoBuscar)
						Mostrar "------------------------------------------"
					2:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaXAsiento(RutaBS,nombresPasajeros, cantPasajerosBS, numAsientoBuscar)
						Mostrar "------------------------------------------"
					3:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaXAsiento(RutaRB,nombresPasajeros, cantPasajerosRB, numAsientoBuscar)
						Mostrar "------------------------------------------"
					4:
						Mostrar "Ingrese el numero de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "------------------------------------------"
						BusquedaXAsiento(RutaMM,nombresPasajeros, cantPasajerosMM, numAsientoBuscar)
						Mostrar "------------------------------------------"
				FinSeguN
			"3":				
				SubMenuRutas 
				Mostrar "Ingrese la ruta en la que desea buscar: " 
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaBB, cantPasajerosBB, nombresPasajeros)
					2:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaBS, cantPasajerosBS, nombresPasajeros)
					3:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaRB, cantPasajerosRB, nombresPasajeros)
					4:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaMM, cantPasajerosMM, nombresPasajeros)
				FinSegun
				
			"4":
				opcionOrdenarYMostrar = ValidarOpcionOrdenar("a","b")
				SubMenuRutas
				Mostrar "Ingrese la ruta que desea ordenar y mostrar"
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						OrdenarYMostrar(rutaBB, nombresPasajeros, cantPasajerosBB, opcionOrdenarYMostrar)
					2:
						OrdenarYMostrar(rutaBS, nombresPasajeros, cantPasajerosBS, opcionOrdenarYMostrar)
					3:
						OrdenarYMostrar(rutaRB, nombresPasajeros, cantPasajerosRB, opcionOrdenarYMostrar)
					4:
						OrdenarYMostrar(rutaMM, nombresPasajeros, cantPasajerosMM, opcionOrdenarYMostrar)
				FinSegun
		FinSegun
	Mientras Que opcionMenu <> "SALIR"
FinProceso

SubProceso Menu
	Mostrar "1 - Venta de pasaje."
	Mostrar "2 - Buscar pasaje vendido."
	Mostrar "3 - Buscar pasajero. "
	Mostrar "4 - Ordenar y mostrar lista. "
	Mostrar "5 - Listados."
	Mostrar "Elija una de las siguientes opciones(Si desea finalizar el programa ingrese salir): "
FinSubProceso

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

SubProceso cargarDatosPasajeros(ruta, nombre, precio, pasajeroGeneral, pasajeroRuta, indiceRuta, asiento)
	ingresarYValidarNombre(nombre, pasajeroGeneral)
	ingresarYValidarDni(ruta, pasajeroRuta)
	ingresarYValidarTelefono(ruta, pasajeroRuta)
	ingresarYValidarEquipaje(ruta, pasajeroRuta)
	ingresarYValidarNumPasajero(ruta, pasajeroRuta)
	ruta[pasajeroRuta, 4] = indiceRuta
	ruta[pasajeroRuta, 5] = asiento
	ruta[pasajeroRuta, 6] = pasajeroGeneral
FinSubProceso

SubProceso ingresarYValidarNombre(nombre, pasajero)
	Mostrar "Ingrese el Nombre y Apellido: "
	Leer nombre[pasajero]
	Mientras nombre[pasajero] == " " o nombre[pasajero] == "" Hacer
		Mostrar "Ingreso una cadena vacia. Por favor ingresa el nombre y apellido correctamente: "
		Leer nombre[pasajero]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarDni(datos, pasajero)
	Mostrar "Ingrese su DNI: "
	Leer datos[pasajero, 0]
	Mientras Longitud(ConvertirATexto(datos[pasajero,0])) < 7 o Longitud(ConvertirATexto(datos[pasajero,0])) > 9 Hacer
		Mostrar "Ingrese el DNI correctamente: " 
		Leer datos[pasajero, 0]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarTelefono(datos, pasajero)
	Mostrar "Ingrese su numero de telefono(entre 9 y 10 digitos): +54-"
	Leer datos[pasajero,1]
	Mientras Longitud(ConvertirATexto(datos[pasajero,1])) < 9 o Longitud(ConvertirATexto(datos[pasajero,1])) > 10 Hacer
		Mostrar "Numero incorrecto.Por favor ingrese un numero valido: +54-"
		Leer datos[pasajero,1]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarEquipaje(datos, pasajero)
	Mostrar "Ingrese 0 si no tiene equipaje en bodega o ingrese 1 si tiene equipaje en bodega: "
	Leer datos[pasajero,2]
	Mientras datos[pasajero,2] <> 0 y datos[pasajero,2] <> 1 Hacer
		Mostrar "Incorrecto. Por favor ingrese 0 o 1 dependiendo su situacion: "
		Leer datos[pasajero,2]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarNumPasajero(datos, pasajero)
	Mostrar "Ingrese el numero de pasajero (4 digitos): "
	Leer datos[pasajero, 3]
	Mientras Longitud(ConvertirATexto(datos[pasajero, 3])) < 4  o  Longitud(ConvertirATexto(datos[pasajero, 3])) > 4  Hacer
		Mostrar "Numero incorrecto. Ingrese un numero valido: "
		Leer datos[pasajero, 3]
	FinMientras
FinSubProceso

Funcion costoPasaje = calcularPrecioPasaje(pasajero, precioInicial, precioFinal, incremento, primeraTanda, segundaTanda, datos)
	Si pasajero + 1 <= primeraTanda Entonces
		costoPasaje = precioInicial
	SiNo
		Si pasajero + 1 > 20 y pasajero + 1 <= segundaTanda Entonces
			costoPasaje = precioInicial * incremento
		SiNo
			costoPasaje = precioFinal
		FinSi
	FinSi
	Si datos[pasajero, 2] == 1 Entonces
		costoPasaje = costoPasaje * 1.05
	FinSi
FinFuncion

SubProceso mostrarResumenPasajero(nombre, datosXRuta, PasajeroGeneral, pasajeroRuta, precioPasaje)
	definir aux Como Entero
	aux = datosXRuta[pasajeroRuta,6]
	Mostrar "------------RESUMEN--------------"
	Mostrar "---------------------------------"
	Mostrar "Nombre y Apellido: ", nombre[aux]
	Mostrar "DNI: ", datosXRuta[pasajeroRuta, 0]
	Mostrar "Numero de telefono: +54-", datosXRuta[pasajeroRuta,1]
	Si datosXRuta[pasajeroRuta, 2] == 1 Entonces
		Mostrar "Equipaje en bodega: Verdadero"
	SiNo
		Mostrar "Equipaje en bodega: Falso"
	FinSi
	Mostrar "Número pasajero frecuente: ", datosXRuta[pasajeroRuta, 3]
	Segun datosXRuta[pasajeroRuta, 4] hacer
		1:
			Mostrar "Ruta: Buenos Aires - Bariloche"
		2:
			Mostrar "Ruta: Buenos Aires - Salta"
		3:
			Mostrar "Ruta: Rosario - Buenos Aires"
		4:
			Mostrar "Ruta: Mar Del Plata - Mendoza"
	FinSegun
	Mostrar "Asiento: ", datosXRuta[pasajeroRuta, 5]
	Mostrar "Precio: ", precioPasaje[aux]
	Mostrar "---------------------------------"
FinSubProceso

SubProceso BusquedaXAsiento(datos,nombres, cantPasajerosRuta, asientoBuscar)
	Definir i Como Entero
	Definir encontrado Como Logico
	encontrado = Falso
	Mientras i < cantPasajerosRuta Hacer
		Si datos[i,5] == asientoBuscar Entonces
			Mostrar "Nombre y Apellido: ", nombres[datos[i,6]]
			Segun datos[i, 4] hacer
				1:
					Mostrar "Ruta: Buenos Aires - Bariloche"
				2:
					Mostrar "Ruta: Buenos Aires - Salta"
				3:
					Mostrar "Ruta: Rosario - Buenos Aires"
				4:
					Mostrar "Ruta: Mar Del Plata - Mendoza"
			FinSegun
			Mostrar "DNI: ", datos[i,0]
			i = cantPasajerosRuta
			encontrado = Verdadero
		FinSi
		i = i + 1
	FinMientras
	Si encontrado == Falso Entonces
		Mostrar "No se encontro pasajero en el asiento ingresado."
	FinSi
FinSubProceso

Funcion pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
	Mostrar "Ingrese el nombre y apellido del pasajero a buscar: "
	leer pasajeroABuscar
	Mientras pasajeroABuscar == " " o pasajeroABuscar == "" Hacer
		Mostrar "Ingrese el nombre y apellido correctamente: "
		leer pasajeroABuscar
	FinMientras
FinFuncion

SubProceso BuscarXNombre(nombreABuscar, datos, cantPasajeros, nombres)
	definir i Como Entero
	definir encontrado como logico
	encontrado = Falso
	Para i = 0 Hasta cantPasajeros Hacer
		Si Mayusculas(nombres[datos[i,6]]) == Mayusculas(nombreABuscar)
			Mostrar "Nombre y Apellido: ", nombres[datos[i,6]]
			Segun datos[i, 4] hacer
				1:
					Mostrar "Ruta: Buenos Aires - Bariloche"
				2:
					Mostrar "Ruta: Buenos Aires - Salta"
				3:
					Mostrar "Ruta: Rosario - Buenos Aires"
				4:
					Mostrar "Ruta: Mar Del Plata - Mendoza"
			FinSegun
			Mostrar "DNI: ", datos[i,0]
			i = cantPasajeros
			encontrado = Verdadero
		FinSi
	FinPara
	Si encontrado == Falso Entonces
		Mostrar "No se encontro un pasajero con ese nombre y apellido."
	FinSi
FinSubProceso


Funcion opcionOrdenarYMostrar = ValidarOpcionOrdenar(a, b)
	Mostrar "a. Por número de asiento Ascendente"
	Mostrar "b. Por número de asiento Descendente"
	Mostrar "Ingrese una de las opciones: "
	Leer opcionOrdenarYMostrar
	Mientras Mayusculas(opcionOrdenarYMostrar) <> Mayusculas(a) y Mayusculas(opcionOrdenarYMostrar) <> Mayusculas(b)
		Mostrar "Opcion incorrecta. Ingrese una de las opciones que aparecen en pantalla: "
		leer opcionOrdenarYMostrar
	FinMientras
FinFuncion

SubProceso OrdenarYMostrar(datos, nombres, cantPasajeros, op)
	Definir i , j, menor, aux, x como entero
	Si Mayusculas(op) == "A" Entonces
		para i = 0 hasta cantPasajeros -2 Hacer
			menor = i
			para j = i + 1 hasta cantPasajeros -1 Hacer
				Si datos[j,5] < datos[menor,5] Entonces
					menor = j
					para x = 0 hasta 6 Hacer
						aux = datos[i,x]
						datos[i,x] = datos[menor,x]
						datos[menor,x]  = aux
					FinPara
				FinSi
			FinPara
		FinPara
		Para i = 0 hasta cantPasajeros - 1 Hacer
			Mostrar "Asiento: ", datos[i,5], Mostrar "   Nombre y Apellido: ", nombres[datos[i,6]]
		FinPara
	SiNo
		si Mayusculas(op) == "B" Entonces
			para i = 0 hasta cantPasajeros -2 Hacer
				menor = i
				para j = i + 1 hasta cantPasajeros -1 Hacer
					Si datos[j,5] > datos[menor,5] Entonces
						menor = j
						para x = 0 hasta 6 Hacer
							aux = datos[i,x]
							datos[i,x] = datos[menor,x]
							datos[menor,x]  = aux
						FinPara
					FinSi
				FinPara
			FinPara
			Para i = 0 hasta cantPasajeros - 1 Hacer
				Mostrar "Asiento: ", datos[i,5], Mostrar "   Nombre y Apellido: ", nombres[datos[i,6]]
			FinPara
		FinSi
	FinSi
FinSubProceso


