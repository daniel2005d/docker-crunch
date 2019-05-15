#!/bin/bash

#min=8
#max=8
#charset="ba%%"
#lines=5
#output='demo3.txt'

function usage(){
	echo -e "Modo de empleo\r\n"
	echo -e "[!] docker run -e min=2 -e max=2 crunch\r"
	echo -e "[!] docker run -e min=2 -e max=2 -e charset=@% crunch\r"
	echo -e "     \e[33m\e[1m@:\e[0m Minisculas\r"
	echo -e "     \e[33m\e[1m,:Mayuscula\r"
	echo -e "     \e[33m\e[1m%:Numeros\r"
	echo -e "     \e[33m\e[1m^:Simbolos\r\n\e[0m"
	echo -e "  docker run -e min=8 -e max=8 -e charset=Prueba%% crunch\r"
	echo -e "[!] docker run -e min=2 -e max=2 -e charset=@% -e lines=10 -e output=10\r\n"
	echo -e "[*] min: Tamaño minimo de la palabra, max: Tamaño maximo de la palabra, charset:caracteres especiales a generar, lines:Cantidad de lineas a generar,"
	echo -e "output: Archivo de salida\r\n"

}


if [ ! -z $charset ]
 then
 	size_charset=${#charset}
 	echo -e "\e[31mEl tamaño del charset debe ser igual al tamaño maximo y minimo.\r\nSe procede a establecer los nuevos parametros a \e[1m$size_charset\e[0m\r\n"
 	min=$size_charset
 	max=$size_charset
 	
	commando+=" -t $charset"
fi

if [ -z $min ]
	then
		echo -e "\r\r\e[31mDebe especificar el parametro min y max\e[0m"
		usage
		exit 
fi

if [ -z $max ]
	then
		echo -e "\e[31mDebe especificar el parametro min y max\e[0m"
		usage
		exit 
fi



commando="crunch $min $max"


if [ ! -z $lines ]
 then
	commando+=" -c $lines"
 fi

if [ ! -z $output ]
  then
	commando+=" -o /tmp/$output"
	
fi

#$command+=" -c 2"
echo -e "Ejecutando... $commando "
bash -c "$commando"

