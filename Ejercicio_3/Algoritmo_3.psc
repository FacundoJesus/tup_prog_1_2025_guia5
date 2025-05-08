Algoritmo AgenciaJuegoInterior
	Definir cantVend, cantTele, cantQuini, cantToto, cantCart, opc, i, prcTele, prcToto, prcQuini Como Entero;
	Definir recTotal, recTotalTele, recTotalQuini, recTotalToto, recRecorrido, recTele, recQuini, recToto, mVentaQuini, mVentaTele, mVentaToto Como Real;
	
	Repetir
		Escribir "Ingrese la cantidad de vendedores(2 o 4):";
		Leer cantVend;
	Hasta Que cantVend == 2 O cantVend == 4
	
	recTotal <- 0;
	recTotalTele <- 0;
	recTotalQuini <- 0;
	recTotalToto <- 0;
	Para i<-1 Hasta cantVend Hacer
		
		recRecorrido <- 0;
		recTele <- 0;
		recQuini <- 0;
		recToto <- 0;
		cantTele <- 0;
		cantQuini <- 0;
		cantToto <- 0;
		Escribir i,"º VENDEDOR";
		Escribir "Ingrese el tipo de cartón: 1-Tele Bingo / 2-Quini seis / 3-Toto Bingo: (0 p/Salir)";
		Leer opc;
		Mientras opc <> 0 Hacer
			Segun opc Hacer
				1:
					Escribir "Ingrese la cantidad de cartones:";
					Leer cantCart;
					mVentaTele <- cantCart * 400;
					cantTele <- cantTele + cantCart;
					recTele <- recTele + mVentaTele;
					Escribir "Monto de la venta:", mVentaTele;
					Escribir "Tipo de cartón: Tele Bingo";
					Escribir "Cantidad de cartones:",cantCart;
					Escribir "---------------------------";
				2:
					Escribir "Ingrese la cantidad de cartones:";
					Leer cantCart;
					mVentaQuini <- cantCart * 800;
					cantQuini <- cantQuini + cantCart;
					recQuini <- recQuini + mVentaQuini;
					Escribir "Monto de la venta:", mVentaQuini;
					Escribir "Tipo de cartón: Quini seis";
					Escribir "Cantidad de cartones:",cantCart;
					Escribir "---------------------------";
				3:
					Escribir "Ingrese la cantidad de cartones:";
					Leer cantCart;
					mVentaToto <- cantCart * 750;
					cantToto <- cantToto + cantCart;
					recToto <- recToto + mVentaToto;
					Escribir "Monto de la venta:", mVentaToto;
					Escribir "Tipo de cartón: Toto Bingo";
					Escribir "Cantidad de cartones:",cantCart;
					Escribir "---------------------------";
				De Otro Modo:
					Escribir "Tipo de cartón no válido";
			FinSegun
			Escribir "Ingrese el tipo de cartón: 1-Tele Bingo / 2-Quini seis / 3-Toto Bingo: (0 p/Salir)";
			Leer opc;
		FinMientras
		recRecorrido <- recTele + recQuini + recToto;
		recTotal <- recTotal + recRecorrido;
		recTotalQuini <- recTotalQuini + recQuini;
		recTotalTele <- recTotalTele + recTele;
		recTotalToto <- recTotalToto + recToto;
		Escribir "Recaudación del recorrido: $",recRecorrido;
		Escribir "Cantidad de cartones Tele Bingo:",cantTele;
		Escribir "Cantidad de cartones Toto Bingo:",cantToto;
		Escribir "Cantidad de cartones Quini seis:",cantQuini;
		Escribir "--------------------------------";
	FinPara
	
	Si recTotal > 0 Entonces
		prcTele <- redon((recTotalTele/recTotal)*100);
		prcQuini <- redon((recTotalQuini/recTotal)*100);
		prcToto <- redon((recTotalToto/recTotal)*100);
		Escribir "Recaudación total: $",recTotal;
		Escribir "Recaudación de Tele Bingo: ",prcTele,"%";
		Escribir "Recaudación de Quini Seis ",prcQuini,"%";
		Escribir "Recaudación de Toto Bingo: ",prcToto,"%";
	SiNo
		Escribir "No hubo recaudación";
	FinSi
FinAlgoritmo
