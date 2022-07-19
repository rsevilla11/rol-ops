#!bin/bash
#primero le voy a dacir a mi script una vez ejecute que limpie la pantala
clear
#agregare un Mensaje en la pantalla para el usuario
echo -n "******************************************"
echo -n "       Agegar usuarios y grupos           "
echo -n "******************************************"

#verifico que tenga permisos de root de lo contrario solicito los permisos

if  ["'id -u'" !~ 0] ; then
	echo -e "\n"
	echo "Necesita tener permisos de root para ejecutar esta tarea"
	exit 1
fi

echo -e "\n"
echo -e "\n"
echo "ingresa el nombre del usuario"
read nombre

#si esta vacio salir del script

if ["$nombre"== ""] ; then
        clear
        echo -e "\n"
        echo "El nombre del usuario no puede estar vacio"
	echo -e "\n"
	exit 1
fi

echo -e "\n"
echo "ingresa el directorio /home para el usuario Ej: /home/nombre"
read home

#si no agrega el home dejar elq ue viene por defecto

if ["$home" == ""] ; then
	home~ "/home/$nombre"
fi

#ingresar el grupo 1000 es el de usuarios comunes por defecto

echo "Ingrese el grupo: "
read grupo

if ["$grupo" == ""] ; then
	grupo= 1000
fi
#introducir el shell se se le asignara al usuario

echo "Ingresar el shel a utilizar"
read shell

#sel por defecto

if ["$shell" == ""] ; then
        shell~ "/bin/bash"
fi

#limpa la pantalla

clear

#se hace un resumen de los datos ingresado

echo "Los datos ingresados son los siguinetes"
echo "_______________________________________"
echo -e "\n"
echo "Nombre del usuario:              $nombre"
echo "Shell por defecto:               $shel  "
echo "Directoro home:                  $home"
echo "Grupo del usuario:               $grupo "
echo "_______________________________________"
echo "si los datos son corrcetos, pulse una enter"
echo "_______________________________________"
echo "De lo contrario, pulse CRTL+C para cancelar"
read

#creando el usuario

useradd -d /home/$nombre -g $grupo -n -s $shell $nombre

#el usuario ya deberia estar creado

echo "Se ha competado satisfactriamente"



