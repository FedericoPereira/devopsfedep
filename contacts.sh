#!/bin/bash

#Funcion para crear un contacto nuevo

crear_contacto() {
	read -p 'Ingrese el nombre: ' nombre
	read -p 'Ingrese el apellido: ' apellido
	read -p 'Ingrese el correo electronico: ' correo
	read -p 'Ingrese el telefono: ' telefono

	echo "$nombre - $apellido - $correo - $telefono" >> contactos.txt
	echo 'Contacto creado'
}

#func para buscar un contacto 

buscar_contacto() {
	read -p 'Ingrese el contacto que busca: ' busqueda
	grep -i "$busqueda" contactos.txt || echo 'Contacto no encontrado' 
}

#Menu principal 
while true; do
	clear
	echo 'Aplicacion de contactos'
	echo '1. Crear contacto'
	echo '2. Buscar contacto'
	echo '3. Ayuda'
	echo '4. Salir'

	read -p 'Ingrese la opcion deseada: ' eleccion

	case $eleccion in
		1)
			crear_contacto
			read -p 'Presione enter para volver al menu'
			;;
		2)
			buscar_contacto
			read -p 'Presione enter para volver al menu'
			;;
		3)
			echo 'Esto es una applicacion de busqueda'
			echo 'y creacion de contactos almacenados en una lista'
			read -p 'Enter para volver al menu' 
			;;
		4)
			clear
			exit 0
			;;
		*)
			echo 'Opcion invalida intente otra opcion'
			read -p 'Presione enter continuar'
			;;
	esac
done
