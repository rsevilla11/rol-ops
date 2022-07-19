#!/bin/bash


#Autor: rsevilla
#####################MENU DEL SCRIPT#######################################
echo “Menu para gestionar Usuarios”
echo ""
echo ""
echo ""
echo "Opciones a elegir:"
echo ""
echo "1) Crear Usuario"
echo "2) Eliminar Usuario"
echo "3) Crear Grupo"
echo "4) Eliminar Grupo"
echo "5) Cambiar Contraseña a Usuario"
echo "6) Ver Datos de un Usuario "
echo "7) Salir "
read opcion

case $opcion in
1) echo "Ingrese el nombre del usuario"
read usuario
useradd $usuario
echo "Escriba nuevamente el nombre del usuario para generar la contraseña"
read pass
passwd $pass
;;

2) echo "Ingrese el Usuario a Eliminar"
read user2
userdel $user2
;;

3) echo "Ingrese el Nombre del Grupo"
read grupo
groupadd $grupo
;;

4) echo "Ingrese el Grupo a Eliminar"
read grupo1
groupdel $grupo1
;;

5) echo "Cambiando Contraseña…"
sleep 3
echo "Ingrese Nombre de Usuario:"
read us
passwd $us
;;

6) echo "Ingrese Nombre de Usuario a Consultar "

	read user
id $user
;;

7) echo "Usted ha deseado salir"
sleep 3
echo "Adiós…"
sleep 2
exit
;;

*) echo "Por Favor, escoja una opción válida"
sleep 4
./Menu_adduser.sh
;;
esac
