Algoritmo TiendaDeportes
	Dimension nombreArticulo[3]
	Dimension precio[3]
	Definir nombre Como Cadena
	Definir precioSinDes,conde,op,op1 Como Entero
	Definir precioMenor,precioMedio,montoTotal Como Real
	nombre <- ' '
	nombreArticulo[1] <- ' '
	nombreArticulo[2] <- ' '
	nombreArticulo[3] <- ' '
	precio[1] <- 0
	precio[2] <- 0
	precio[3] <- 0
	precioMenor <- 0
	precioMedio <- 0
	precioSinDes <- 0
	montoTotal <- 0
	
	Escribir 'Este algoritmo solicita el nombre del cliente y el precio de tres artículos (precios diferentes) para aplicar los descuentos correspondientes'
	Escribir 'El artículo de menor valor tendrá un descuento del 50% y el siguiente, uno del 25%'
	Escribir 'Hola, introduzca su nombre: '
	Leer nombre
	Escribir 'Hola ', nombre,' ,estos son los departamentos de deportes que puedes elegir.'
	Escribir ''
	
	Para conde<-1 Hasta 3 Con Paso 1 Hacer
		Escribir ' '
		
		Escribir 'Escoja el artículo ', conde
	Escribir '1. Futbol soccer 	2. Futbol Americano 	3. Basquetbol 	4.Natación  	5. Beisbol'
	leer op
	
	Segun op hacer
		1:
			escribir '1. Futbol soccer'
			escribir 'Elige la opción: 1.balones 	2.guantes de portero 	3.bufandas 	4.Espinilleras 	5.Tennis'
			Leer op1
			Segun op1 hacer
				1:
					nombreArticulo[conde] <- 'Balon de soccer'
				2:
					nombreArticulo[conde] <- 'Guantes de portero'
				3:
					nombreArticulo[conde] <- 'Bufanda'
				4:
					nombreArticulo[conde] <- 'Espinilleras'
				5:
					nombreArticulo[conde] <- 'Tennis'
			FinSegun
			
		2:  
			Escribir '2. Futbol Americano'
			escribir 'Elige la opciòn: 1.balones 	2.hombreras 	3.cascos 	4.Tennis 	5.coderas'
			Leer op1
			Segun op1 hacer
				1:
					nombreArticulo[conde]  <- 'Balon de americano'
				2:
					nombreArticulo[conde]  <- 'Hombreras'
				3:
					nombreArticulo[conde] <- 'Casco'
				4:
					nombreArticulo[conde]  <- 'Tennis'
				5:
					nombreArticulo[conde]  <- 'Coderas'
			FinSegun
		3:  
			Escribir '3.Basquetbol'
			escribir 'Elige la opción: 1. balones 2.tennis 3.Shorts'
			Leer op1
			Segun op1 hacer
				1:
					nombreArticulo[conde] <- 'Balon de basquetbol'
				2:
					nombreArticulo[conde]  <- 'tennis'
				3:
					nombreArticulo[conde]  <- 'Shorts'
			FinSegun
		4:  
			Escribir '4.Nataciòn'
			escribir 'Elige la opción: 1.goggles 2.trajes de baño 3.Gorra Aqua'
			Leer op1
			Segun op1 hacer
				1:
					nombreArticulo[conde]  <- 'Goggles'
				2:
					nombreArticulo[conde] <- 'Traje de baño'
				3:
					nombreArticulo[conde]  <- 'Gorra Aqua'
			FinSegun
		5:
			Escribir '5.Beisbol'
			escribir 'Elige la opción: 1.pelotas 2.bates 3.Manopla 4.gorra'
			Leer op1
			Segun op1 hacer
				1:
					nombreArticulo[conde]  <- 'Pelota'
				2:
					nombreArticulo[conde]  <- 'Bate'
				3:
					nombreArticulo[conde]  <- 'Manopla'
				4:
					nombreArticulo[conde]  <- 'Gorra'
			FinSegun
	fin segun
Fin Para

Para conde<-1 Hasta 3 Con Paso 1 Hacer
	escribir 'ingrese el valor de ',nombreArticulo[conde],': '
	Leer precio[conde]
	Mientras precio[conde]<-0 hacer
		Escribir 'Valor no válido, ingrese de nuevo el precio.'
		Leer precio[conde]
	FinMientras
	si conde>1 Entonces
		Para c<-1 Hasta conde-1 Con Paso 1 Hacer
			Mientras precio[conde]=precio[c] hacer 
				Escribir 'Valor no válido, ingrese de nuevo el precio.'
				Leer precio[conde]
			FinMientras
			FinPara
			
		FinSi
Fin Para

Si precio[1]<precio[2] y precio[1]<precio[3] Entonces
	precioMenor<- precio[1]
	nombreArticulo[1]<-nombreArticulo[1]
SiNo
	si precio[2]<precio[1] y precio[2]<precio[3] Entonces
		precioMenor<- precio[2]
		nombreArticulo[1]<-nombreArticulo[2]
	SiNo
		precioMenor<-precio[3]
		nombreArticulo[1]<-nombreArticulo[3]
	FinSi
Fin Si

Si precioMenor=precio[1] Entonces
	Si precio[2]<precio[3] entonces 
		precioMedio<- precio[2]
		precioSinDes <- precio[3]
		nombreArticulo[2]<-nombreArticulo[2]
		nombreArticulo[3]<-nombreArticulo[3]
	SiNo 
		precioMedio<- precio[3]
		precioSinDes <- precio[2]
		nombreArticulo[2]<-nombreArticulo[3]
		nombreArticulo[3]<-nombreArticulo[2]
	FinSi
	
	SiNo
		Si precioMenor=precio[2] Entonces
			Si precio[1]<precio[3] entonces 
				precioMedio<- precio[1] 
				precioSinDes <- precio[3]
				nombreArticulo[2]<-nombreArticulo[1]
				nombreArticulo[3]<-nombreArticulo[3]
			SiNo 
				precioMedio<- precio[3]
				precioSinDes <- precio[1]
				nombreArticulo[2]<-nombreArticulo[3]
				nombreArticulo[3]<-nombreArticulo[1]
			FinSi
			
			SiNo
				Si precioMenor=precio[3] Entonces
					Si precio[1]<precio[2] entonces 
						precioMedio<- precio[1]
						precioSinDes <- precio[2]
						nombreArticulo[2]<-nombreArticulo[1]
						nombreArticulo[3]<-nombreArticulo[2]
					SiNo
						precioMedio<- precio[2]
						precioSinDes <- precio[1]
						nombreArticulo[2]<-nombreArticulo[2]
						nombreArticulo[3]<-nombreArticulo[1]
					FinSi
				FinSi
		FinSi
	FinSi
	precioMenor<- precioMenor*.5
	precioMedio<- precioMedio*.75
	montoTotal<- precioMedio+precioMenor+precioSinDes
	Escribir '******************************************************************' //En este punto, el equipo de codificación a lenguaje c mandará el nombre y el ticket de compra a un archivo de texto plano.
	Escribir nombre,', gracias por tu compra.'
	Escribir 'Ticket de compra *Descuentos aplicados*'
	Escribir nombreArticulo[1],'...............$',precioMenor
	Escribir nombreArticulo[2],'...............$',precioMedio
	Escribir nombreArticulo[3],'...............$',precioSinDes
	Escribir ' '
	Escribir '            Total a pagar: $',montoTotal
	
FinAlgoritmo
