Algoritmo EstacionamientoComuna
	Definir recTotal, recZona, rec, recMoto, recAuto, recUtilitario, recCamion, phMoto, phAuto, phUtilitario, phCamion Como Real;
	Definir prcRecMoto, prcCantMoto, prcRecAuto, prcCantAuto, prcRecUtilitario, prcCantUtilitario, prcRecCamion ,prcCantCamion Como Entero;
	Definir cantTotal, cantZona, cantMoto, cantAuto, cantUtilitario, cantCamion, tipo, hsMoto, hsAuto, hsUtilitario, hsCamion, prc, f Como Entero;
	Definir bandera Como Logico;
	
	cantMoto <- 0;
	cantAuto <- 0;
	cantUtilitario <- 0;
	cantCamion <- 0;
	cantTotal <- 0;
	recTotal <- 0;
	bandera <- Verdadero;
	Escribir "-----------------------";
	Escribir "SISTEMA DE ESTACIONAMIENTO";
	Mientras bandera Hacer
		Escribir "-------------------";
		Escribir "NUEVA ZONA";
		Escribir "Ingrese el tipo de vehículo: 1-Moto 2-Auto 3-Utilitario 4-Camion o 0 p/Salir:";
		Leer tipo;
		recMoto <- 0;
		recAuto <- 0;
		recUtilitario <- 0;
		recCamion <- 0;
		recZona <- 0;
		Mientras tipo <> 0 Hacer
			Segun tipo Hacer
				1:
					Escribir "Ingrese el precio p/h de la Moto:";
					Leer phMoto;
					Escribir "Ingrese la cantidad de horas ocupadas:";
					Leer hsMoto;
					rec <- phMoto*hsMoto;
					Escribir "El precio del estacionamiento es: $",rec;
					cantMoto <- cantMoto + 1;
					recMoto <- recMoto + rec;
				2:
					Escribir "Ingrese el precio p/h del Auto:";
					Leer phAuto;
					Escribir "Ingrese la cantidad de horas ocupadas:";
					Leer hsAuto;
					rec <- phAuto*hsAuto;
					Escribir "El precio del estacionamiento es: $",rec;
					cantAuto <- cantAuto + 1;
					recAuto <- recAuto + rec;
				3:
					Escribir "Ingrese el precio p/h del Utilitario:";
					Leer phUtilitario;
					Escribir "Ingrese la cantidad de horas ocupadas:";
					Leer hsUtilitario;
					rec <- phUtilitario*hsUtilitario;
					Escribir "El precio del estacionamiento es: $",rec;
					cantUtilitario <- cantUtilitario + 1;
					recUtilitario <- recUtilitario + rec;
				4:
					Escribir "Ingrese el precio p/h del Camión:";
					Leer phCamion;
					Escribir "Ingrese la cantidad de horas ocupadas:";
					Leer hsCamion;
					rec <- phCamion*hsCamion;
					Escribir "El precio del estacionamiento es: $",rec;
					cantCamion <- cantCamion + 1;
					recCamion <- recCamion + rec;
			FinSegun
			cantTotal <- cantTotal + 1;
			recZona <- recZona + rec;
			Escribir "Ingrese el tipo de vehículo: 1-Moto 2-Auto 3-Utilitario 4-Camion o 0 p/Salir:";
			Leer tipo;
		FinMientras
		recTotal <- recTotal + recZona;
		Si recZona > 0 Entonces
			prcRecMoto <- trunc((recMoto / recZona) * 100);
			prcRecAuto <- trunc((recAuto  / recZona)* 100);
			prcRecUtilitario <- trunc((recUtilitario / recZona) * 100);
			prcRecCamion <- trunc((recCamion / recZona ) * 100);
			Escribir "Porcentaje de recaudación de Motos: ",prcRecMoto,"%";
			Escribir "Porcentaje de recaudación de Autos: ",prcRecAuto,"%";
			Escribir "Porcentaje de recaudación de Utilitarios: ",prcRecUtilitario,"%";
			Escribir "Porcentaje de recaudación de Camiones: ",prcRecCamion,"%";
			Escribir "Recaudación de la zona: $",recZona;
			
		SiNo
			Escribir "Ingrese (0) para Finalizar o (Enter) para cargar nueva Zona:";
			Leer f;
			Si f == 0 Entonces
				bandera <- !bandera;
			FinSi
		FinSi
	FinMientras
	
	Si cantTotal > 0 Entonces
		prcCantMoto <- trunc((cantMoto/cantTotal)*100);
		prcCantAuto <- trunc((cantAuto/cantTotal)*100);
		prcCantUtilitario <- trunc((cantUtilitario/cantTotal)*100);
		prcCantCamion <- trunc((cantCamion/cantTotal)*100);
		Escribir "Porcentaje de cantidad de Motos: ",prcCantMoto,"%";
		Escribir "Porcentaje de cantidad de Autos: ",prcCantAuto,"%";
		Escribir "Porcentaje de cantidad de Utilitarios: ",prcCantUtilitario,"%";
		Escribir "Porcentaje de cantidad de Camiones: ",prcCantCamion,"%";
		Escribir "Recaudación total: $",recTotal;
	SiNo
		Escribir "No se han cargado vehículos";
	FinSi
	
FinAlgoritmo
