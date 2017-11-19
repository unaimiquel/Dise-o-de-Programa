Algoritmo tiendaDeportesa
	Definir nombre Como Cadena
	Definir precioUno,precioDos,precioTres,precioSinDes,conde Como Entero
	Definir precioMenor,precioMedio,montoTotal Como Real
	nombre <- ' '
	precioUno <- 0
	precioDos <- 0
	precioTres <- 0
	precioMenor <- 0
	precioMedio <- 0
	precioSinDes <- 0
	montoTotal <- 0
	conde <- 1
	Escribir 'Este algoritmo solicita el nombre del cliente y le pide el precio de tres artículos de distintos costos para aplicar un descuento del 50% en el artículo de menor precio y de 25% en el artículo que siga con menor precio y calcula el monto total de la compra, otorgando un ticket de compra.'
	Escribir 'Introduzca su nombre:'
	Leer nombre
	Escribir 'Ingrese el valor del artículo ',conde,' mayor a cero:'
	Leer precioUno
	Mientras precioUno<=0 Hacer
		conde <- conde+1
		conde <- conde-1
		Escribir 'Valor no v‡lido. El valor debe ser mayor a cero.'
		Escribir 'Ingrese el valor del artículo ',conde,' mayor a cero:'
		Leer precioUno
	FinMientras
	conde <- conde+1
	Escribir 'Ingrese el valor del artículo ',conde,' mayor a cero:'
	Leer precioDos
	Mientras precioDos<=0 Hacer
		conde <- conde+1
		conde <- conde-1
		Escribir 'Valor no válido. El monto debe ser mayor a cero.'
		Escribir 'Ingrese el valor del artículo ',conde,' mayor a cero:'
		Leer precioDos
	FinMientras
	conde <- conde+1
	Escribir 'Ingrese el valor del artículo ',conde,' mayor a cero:'
	Leer precioTres
	Mientras precioTres<=0 Hacer
		conde <- conde+1
		conde <- conde-1
		Escribir 'Valor no válido. El valor debe ser mayor a cero.'
		Escribir 'Ingrese el valor del artículo ',conde,' mayor a cero:'
		Leer precioTres
	FinMientras
	Si precioUno<precioDos Entonces
		Si precioUno<precioTres Entonces
			precioMenor <- precioUno*0.5
			Si precioDos<precioTres Entonces
				precioMedio <- precioDos*0.75
				precioSinDes <- precioTres
			SiNo
				precioMedio <- precioTres*0.75
				precioSinDes <- precioDos
			FinSi
		SiNo
			precioMenor <- precioTres*0.5
			Si precioUno<precioDos Entonces
				precioMedio <- precioUno*0.75
				precioSinDes <- precioDos
			SiNo
				precioMedio <- precioDos*0.75
				precioSinDes <- precioUno
			FinSi
		FinSi
	SiNo
		Si precioDos<precioTres Entonces
			precioMenor <- precioDos*0.5
			Si precioUno<precioTres Entonces
				precioMedio <- precioUno*0.75
				precioSinDes <- precioTres
			SiNo
				precioMedio <- precioTres*0.75
				precioSinDes <- precioUno
			FinSi
		SiNo
			precioMenor <- precioTres*0.5
			Si precioUno<precioDos Entonces
				precioMedio <- precioUno*0.75
				precioSinDes <- precioDos
			SiNo
				precioMedio <- precioDos*0.75
				precioSinDes <- precioUno
			FinSi
		FinSi
	FinSi
	montoTotal <- precioMenor+precioMedio+precioSinDes
	Escribir '*************************'
	Escribir ' '
	Escribir 'Hola ',nombre,'.'
	Escribir ' '
	Escribir 'Gracias por tu compra.'
	Escribir ' '
	Escribir 'Tu compra fue de $',precioMenor,' con el 50% de descuento aplicado, $',precioMedio,' con el 25% de descuento aplicado y $',precioSinDes,' sin descuento. El monto total a pagar es de: $ ',montoTotal
	Escribir ' '
	Escribir 'Ticket de compra'
	Escribir 'nombre'
	Escribir '$',precioMenor,' con el 50% de descuento aplicado.'
	Escribir '$',precioMedio,' con el 25% de descuento aplicado.'
	Escribir '$',precioSinDes,' sin descuento.'
	Escribir ' '
	Escribir 'TOTAL A PAGAR $',montoTotal
FinAlgoritmo

