Proceso TPProgramacionI
	Definir rutaBB, rutaBS, rutaRB, rutaMM, opcionSubMenu Como Entero
	Definir nombresPasajeros, pasajeroABuscar, opcionOrdenarYMostrar Como Caracter
	Definir valorPasaje Como Real
	Definir opcionMenu Como Caracter
	Definir cantPasajeros, cantPasajerosBB, cantPasajerosBS, cantPasajerosRB, cantPasajerosMM  Como Entero
	Definir asientoBB, asientoBS, asientoRB, asientoMM Como Entero
	Dimension nombresPasajeros[400]
	Dimension valorPasaje[400]
	Dimension rutaBB[120, 7] // dni, telefono, equipaje en bodega, num pasajero, ruta, asiento y indice pasajero
	Dimension rutaBS[120, 7]   
	Dimension rutaRB[80, 7]
	Dimension rutaMM[80, 7]
	cantPasajeros = 0
	cantPasajerosBB = 0
	cantPasajerosBS = 0
	cantPasajerosRB = 0
	cantPasajerosMM = 0
	asientoBB = 1
	asientoBS = 1
	asientoRB = 1
	asientoMM = 1
	Mostrar "---------Bienvenidos---------"
	Repetir
		Mostrar "-----------------------------"
		Menu
		opcionMenu = ValidarOpcionMenu("1","2","3","4","5","SALIR")
		Segun opcionMenu Hacer
			"1":
				Mostrar "-----------------------------"
				Mostrar "-- Rutas aéreas disponibles --"
				SubMenuRutas
				opcionSubMenu = ValidarOpcion(1,4)
				Segun opcionSubMenu Hacer
					1:
						Si cantPasajerosBB < 120 Entonces
							cargarDatosPasajeros(rutaBB, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosBB, asientoBB, 150000, 180000, 1.10, 20, 60, 1)
							mostrarResumenPasajero(nombresPasajeros, rutaBB, cantPasajeros, cantPasajerosBB, valorPasaje, opcionSubMenu)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosBB = cantPasajerosBB + 1
							asientoBB = asientoBB + 1
						SiNo
							Mostrar "Se alcanzó el límite máximo de pasajeros para este vuelo."
						FinSi
					2:
						Si cantPasajerosBS < 120 Entonces
							cargarDatosPasajeros(rutaBS, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosBS, asientoBS, 120000, 150000, 1.10, 20, 60, 2)
							mostrarResumenPasajero(nombresPasajeros, rutaBS, cantPasajeros, cantPasajerosBS, valorPasaje, opcionSubMenu)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosBS = cantPasajerosBS + 1
							asientoBS = asientoBS + 1
						SiNo
							Mostrar "Se alcanzó el límite máximo de pasajeros para este vuelo"
						FinSi
					3:
						Si cantPasajerosRB < 80 Entonces
							cargarDatosPasajeros(rutaRB, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosRB, asientoRB, 70000, 95000, 1.15, 10, 40, 3)
							mostrarResumenPasajero(nombresPasajeros, rutaRB, cantPasajeros, cantPasajerosRB, valorPasaje, opcionSubMenu)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosRB = cantPasajerosRB + 1
							asientoRB = asientoRB + 1
						SiNo
							Mostrar "Se alcanzó el límite máximo de pasajeros para este vuelo"
						FinSi
					4:
						Si cantPasajerosBB < 80 Entonces
							cargarDatosPasajeros(rutaMM, nombresPasajeros, valorPasaje, cantPasajeros, cantPasajerosMM, asientoMM, 95000, 125000, 1.15, 10, 40, 4)
							mostrarResumenPasajero(nombresPasajeros, rutaMM, cantPasajeros, cantPasajerosMM, valorPasaje, opcionSubMenu)
							cantPasajeros = cantPasajeros + 1
							cantPasajerosMM = cantPasajerosMM + 1
							asientoMM = asientoMM + 1
						SiNo
							Mostrar "Se alcanzó el límite máximo de pasajeros para este vuelo"
						FinSi
				FinSegun
			"2":
				SubMenuRutas
				Mostrar "Ingrese la ruta en la que desea buscar: " 
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						Mostrar "Ingrese el número de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "-----------------------------"
						BusquedaXAsiento(RutaBB,nombresPasajeros, cantPasajerosBB, numAsientoBuscar, opcionSubMenu)
						Mostrar "-----------------------------"
					2:
						Mostrar "Ingrese el número de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "-----------------------------"
						BusquedaXAsiento(RutaBS,nombresPasajeros, cantPasajerosBS, numAsientoBuscar, opcionSubMenu)
						Mostrar "-----------------------------"
					3:
						Mostrar "Ingrese el número de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "-----------------------------"
						BusquedaXAsiento(RutaRB,nombresPasajeros, cantPasajerosRB, numAsientoBuscar, opcionSubMenu)
						Mostrar "-----------------------------"
					4:
						Mostrar "Ingrese el número de asiento a buscar: "
						leer numAsientoBuscar
						Mostrar "-----------------------------"
						BusquedaXAsiento(RutaMM,nombresPasajeros, cantPasajerosMM, numAsientoBuscar, opcionSubMenu)
						Mostrar "-----------------------------"
				FinSegun
			"3":
				SubMenuRutas 
				Mostrar "Ingrese la ruta en la que desea buscar: " 
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaBB, cantPasajerosBB, nombresPasajeros, opcionSubMenu)
					2:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaBS, cantPasajerosBS, nombresPasajeros, opcionSubMenu)
					3:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaRB, cantPasajerosRB, nombresPasajeros, opcionSubMenu)
					4:
						pasajeroABuscar = ValidarNombreABuscar(pasajeroABuscar)
						BuscarXNombre(pasajeroAbuscar, rutaMM, cantPasajerosMM, nombresPasajeros, opcionSubMenu)
				FinSegun
			"4":
				Mostrar "a. Por número de asiento Ascendente"
				Mostrar "b. Por número de asiento Descendente"
				Mostrar "Ingrese una de las opciones: "
				opcionAoB = ValidarOpcionOrdenar("a","b")
				SubMenuRutas
				Mostrar "Ingrese la ruta que desea ordenar y mostrar"
				opcionSubMenu = ValidarOpcion(1, 4)
				Segun opcionSubMenu hacer
					1:
						OrdenarYMostrar(rutaBB, nombresPasajeros, cantPasajerosBB, opcionAoB)
					2:
						OrdenarYMostrar(rutaBS, nombresPasajeros, cantPasajerosBS, opcionAoB)
					3:
						OrdenarYMostrar(rutaRB, nombresPasajeros, cantPasajerosRB, opcionAoB)
					4:
						OrdenarYMostrar(rutaMM, nombresPasajeros, cantPasajerosMM, opcionAoB)
				FinSegun
			"5":
				Mostrar "a. Cantidad de pasajes vendido por ruta aérea"
				Mostrar "b. Porcentaje de ventas por ruta aérea"
				Mostrar "Ingrese una opción: "
				opcionAoB = ValidarOpcionOrdenar("a","b")
				Segun Mayusculas(opcionAoB) Hacer
					"A":
						Mostrar "1 - Buenos Aires - Bariloche --- Pasajes vendidos: ", cantPasajerosBB 
						Mostrar "2 - Buenos Aires - Salta --- Pasajes vendidos: ", cantPasajerosBS 
						Mostrar "3 - Rosario - Buenos Aires --- Pasajes vendidos: ", rcantPasajerosRB 
						Mostrar "4 - Mar Del Plata - Mendoza --- Pasajes vendidos: " , cantPasajerosMM 
					"B":
						Mostrar "1 - Buenos Aires - Bariloche --- Pasajes vendidos: ", cantPasajerosBB / 120 * 100 "%"
						Mostrar "2 - Buenos Aires - Salta --- Pasajes vendidos: ", cantPasajerosBS / 120 * 100 "%"
						Mostrar "3 - Rosario - Buenos Aires --- Pasajes vendidos: ",  cantPasajerosRB / 80 * 100 "%"
						Mostrar "4 - Mar Del Plata - Mendoza --- Pasajes vendidos: ", cantPasajerosMM / 80 * 100 "%"
				FinSegun
			"5":
				Mostrar "a. Cantidad de pasajes vendido por ruta aérea"
				Mostrar "b. Porcentaje de ventas por ruta aérea"
				Mostrar "Ingrese una opcion: "
				leer opcionCinco
				Mientras Mayusculas(opcionCinco) <> "A" y Mayusculas(opcionCinco) <> "B"
					Mostrar "opcion incorrecta. ingrese la opcion nuevamente: "
					leer opcionCinco
				FinMientras
				Si Mayusculas(opcionCinco) == "A" Entonces
					Mostrar "1 - Buenos Aires - Bariloche --- Pasajes vendidos: ", cantPasajerosBB 
					Mostrar "2 - Buenos Aires - Salta --- Pasajes vendidos: ", cantPasajerosBS 
					Mostrar "3 - Rosario - Buenos Aires --- Pasajes vendidos: ", cantPasajerosRB 
					Mostrar "4 - Mar Del Plata - Mendoza --- Pasajes vendidos: " , cantPasajerosMM 
					Mostrar  ""
				FinSi
				Si Mayusculas(opcionCinco) == "B" Entonces
					Mostrar "1 - Buenos Aires - Bariloche --- Pasajes vendidos:", cantPasajerosBB / 400 * 100 "%"
					Mostrar "2 - Buenos Aires - Salta --- Pasajes vendidos:", cantPasajerosBS / 400 * 100 "%"
					Mostrar "3 - Rosario - Buenos Aires --- Pasajes vendidos:",  cantPasajerosRB / 400 * 100 "%"
					Mostrar "4 - Mar Del Plata - Mendoza --- Pasajes vendidos:", cantPasajerosMM / 400 * 100 "%"
					Mostrar ""
				FinSi
		FinSegun
	Mientras Que opcionMenu <> "SALIR"
FinProceso

SubProceso Menu
	Mostrar "1 - Venta de pasaje."
	Mostrar "2 - Buscar pasaje vendido."
	Mostrar "3 - Buscar pasajero. "
	Mostrar "4 - Ordenar y mostrar lista. "
	Mostrar "5 - Listados."
	Mostrar ""
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
	Leer opcionSubMenu
	Mientras opcionSubMenu < min o opcionSubMenu > max
		Mostrar "Opcion fuera de rango. Ingrese una opcion entre ",min," y ", max, ": "
		Leer opcionSubMenu
	FinMientras
FinFuncion

SubProceso cargarDatosPasajeros(datosXRuta, nombrePasajero, valorPasaje, cantPasajerosTotal, cantPasajerosXRuta, asientoXRuta, precioInicial, precioFinal, incremento, primeraTanda, segundaTanda, indiceRuta)
	Definir precioPasaje Como Real
	ingresarYValidarNombre(nombrePasajero, cantPasajerosTotal)
	ingresarYValidarDni(datosXRuta, cantPasajerosXRuta)
	ingresarYValidarTelefono(datosXRuta, cantPasajerosXRuta)
	ingresarYValidarEquipaje(datosXRuta, cantPasajerosXRuta)
	ingresarYValidarNumPasajero(datosXRuta, cantPasajerosXRuta)
	precioPasaje = calcularPrecioPasaje(cantPasajerosXRuta, precioInicial, precioFinal, incremento, primeraTanda,segundaTanda, datosXRuta)
	valorPasaje[cantPasajerosTotal] = precioPasaje
	datosXRuta[cantPasajerosXRuta, 4] = indiceRuta
	datosXRuta[cantPasajerosXRuta, 5] = asientoXRuta
	datosXRuta[cantPasajerosXRuta, 6] = cantPasajerosTotal
FinSubProceso

SubProceso ingresarYValidarNombre(nombre, pasajero)
	Definir encontrado Como Logico
	Definir nombrePasajero Como Caracter
	Mostrar "Ingrese el Nombre y Apellido: "
	Leer nombrePasajero
	encontrado = nombreYaIngresado(nombrePasajero, nombre, pasajero)
	Mientras nombrePasajero == " " o nombrePasajero == "" o  encontrado ==  Verdadero Hacer
		Si encontrado == Verdadero Entonces
			Mostrar "Este nombre ya ha sido ingresado. Por favor, ingresa un nombre diferente: "
		SiNo
			Mostrar "Ingreso una cadena vacia. Por favor, ingresa el nombre y apellido correctamente: "
		FinSi
		Leer nombrePasajero
		encontrado = nombreYaIngresado(nombrePasajero, nombre, pasajero)
	FinMientras
	nombre[pasajero] = nombrePasajero
FinSubProceso

Funcion  encontrado = nombreYaIngresado(nombrePasajero, nombre, pasajero)
	encontrado = Falso
    Para i = 0 Hasta pasajero - 1  Hacer
        Si nombre[i] == nombrePasajero Entonces
			encontrado = Verdadero
        FinSi
    FinPara
FinFuncion

SubProceso ingresarYValidarDni(datosXRuta, cantPasajerosXRuta)
	Mostrar "Ingrese su DNI: "
	Leer datosXRuta[cantPasajerosXRuta, 0]
	Mientras Longitud(ConvertirATexto(datosXRuta[cantPasajerosXRuta,0])) < 7 o Longitud(ConvertirATexto(datosXRuta[cantPasajerosXRuta,0])) > 9 Hacer
		Mostrar "Ingrese el DNI correctamente: " 
		Leer datosXRuta[cantPasajerosXRuta, 0]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarTelefono(datosXRuta, cantPasajerosXRuta)
	Mostrar "Ingrese su numero de telefono(entre 9 y 10 digitos): +54-"
	Leer datosXRuta[cantPasajerosXRuta,1]
	Mientras Longitud(ConvertirATexto(datosXRuta[cantPasajerosXRuta,1])) < 9 o Longitud(ConvertirATexto(datosXRuta[cantPasajerosXRuta,1])) > 10 Hacer
		Mostrar "Numero incorrecto.Por favor, ingrese un numero valido: +54-"
		Leer datosXRuta[cantPasajerosXRuta,1]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarEquipaje(datosXRuta, cantPasajerosXRuta)
	Mostrar "Ingrese 0 si no tiene equipaje en bodega o ingrese 1 si tiene equipaje en bodega: "
	Leer datosXRuta[cantPasajerosXRuta,2]
	Mientras datosXRuta[cantPasajerosXRuta,2] <> 0 y datosXRuta[cantPasajerosXRuta,2] <> 1 Hacer
		Mostrar "Incorrecto. Por favor ingrese 0 o 1 dependiendo su situacion: "
		Leer datosXRuta[cantPasajerosXRuta,2]
	FinMientras
FinSubProceso

SubProceso ingresarYValidarNumPasajero(datos, pasajero)
	Definir numExistente Como Logico
	Definir numPasajeroUnico Como entero
	Mostrar "Ingrese el numero de pasajero (4 digitos): "
	Leer numPasajeroUnico
	numExistente = ValidarNumeroPasajero(numPasajeroUnico, datos, pasajero)
	Mientras Longitud(ConvertirATexto(numPasajeroUnico)) < 4  o  Longitud(ConvertirATexto(numPasajeroUnico)) > 4  o numExistente == Verdadero Hacer
		Si numExistente == Verdadero Entonces
			Mostrar "El numero ingresado fue registrado por otro pasajero. Vuelva a ingresar un numero valido: "
		SiNo
			Mostrar "Numero incorrecto. Ingrese un numero valido: "
		FinSi
		Leer numPasajeroUnico
		numExistente = ValidarNumeroPasajero(numPasajeroUnico, datos, pasajero)
	FinMientras
	datos[pasajero, 3] = numPasajeroUnico
FinSubProceso

Funcion numExistente = ValidarNumeroPasajero(numPasajeroUnico, datos, pasajero)
	numExistente = Falso
	para i = 0 hasta pasajero Hacer
		Si datos[i, 3] == numPasajeroUnico Entonces
			numExistente = Verdadero
		FinSi
	FinPara
FinFuncion

Funcion precioPasaje = calcularPrecioPasaje(cantPasajerosXRuta, precioInicial, precioFinal, incremento, primeraTanda,segundaTanda, datosXRuta)
	Si cantPasajerosXRuta + 1 <= primeraTanda Entonces
		precioPasaje = precioInicial
	SiNo
		Si pasajero + 1 > 20 y pasajero + 1 <= segundaTanda Entonces
			precioPasaje = precioInicial * incremento
		SiNo
			precioPasaje = precioFinal
		FinSi
	FinSi
	Si datosXRuta[cantPasajerosXRuta, 2] == 1 Entonces
		precioPasaje = precioPasaje * 1.05
	FinSi
FinFuncion

SubProceso mostrarRuta(opcionRuta)
	Segun opcionRuta hacer
		1:
			Mostrar "Ruta: Buenos Aires - Bariloche"
		2:
			Mostrar "Ruta: Buenos Aires - Salta"
		3:
			Mostrar "Ruta: Rosario - Buenos Aires"
		4:
			Mostrar "Ruta: Mar Del Plata - Mendoza"
	FinSegun
FinSubProceso

SubProceso mostrarResumenPasajero(nombre, datosXRuta, PasajeroGeneral, pasajeroRuta, precioPasaje, opcionRuta)
	definir aux Como Entero
	aux = datosXRuta[pasajeroRuta,6]
	Mostrar "----------RESUMEN------------"
	Mostrar "-----------------------------"
	Mostrar "Nombre y Apellido: ", nombre[aux]
	Mostrar "DNI: ", datosXRuta[pasajeroRuta, 0]
	Mostrar "Numero de telefono: +54-", datosXRuta[pasajeroRuta,1]
	Si datosXRuta[pasajeroRuta, 2] == 1 Entonces
		Mostrar "Equipaje en bodega: Verdadero"
	SiNo
		Mostrar "Equipaje en bodega: Falso"
	FinSi
	Mostrar "Número pasajero frecuente: ", datosXRuta[pasajeroRuta, 3]
	mostrarRuta(opcionRuta)
	Mostrar "Asiento: ", datosXRuta[pasajeroRuta, 5]
	Mostrar "Precio: ", precioPasaje[aux]
	Mostrar "-----------------------------"
FinSubProceso

SubProceso BusquedaXAsiento(datosXRuta,nombres, cantPasajerosRuta, asientoBuscar, opcionRuta)
	Definir i Como Entero
	Definir encontrado Como Logico
	encontrado = Falso
	Mientras i < cantPasajerosRuta Hacer
		Si datosXRuta[i,5] == asientoBuscar Entonces
			Mostrar "Nombre y Apellido: ", nombres[datosXRuta[i,6]]
			mostrarRuta(opcionRuta)
			Mostrar "DNI: ", datosXRuta[i,0]
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

SubProceso BuscarXNombre(nombreABuscar, datos, cantPasajeros, nombres, opcionRuta)
	definir i Como Entero
	definir encontrado como logico
	encontrado = Falso
	Para i = 0 Hasta cantPasajeros Hacer
		Si Mayusculas(nombres[datos[i,6]]) == Mayusculas(nombreABuscar)
			Mostrar "Nombre y Apellido: ", nombres[datos[i,6]]
			mostrarRuta(opcionRuta)
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
	Leer opcionOrdenarYMostrar
	Mientras Mayusculas(opcionOrdenarYMostrar) <> Mayusculas(a) y Mayusculas(opcionOrdenarYMostrar) <> Mayusculas(b)
		Mostrar "Opcion incorrecta. Ingrese una de las opciones que aparecen en pantalla: "
		leer opcionOrdenarYMostrar
	FinMientras
FinFuncion

SubProceso OrdenarYMostrar(datos, nombres, cantPasajeros, op)
	Definir i , j, menor, aux, x como entero
	Si cantPasajeros > 0 Entonces
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
	SiNo
		Mostrar "No hay pasajeros registrados para este vuelo."
	FinSi
FinSubProceso







