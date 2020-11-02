# Dockerfile-PHP-Apache-conectado-a-contenedor-MySQL
Creación de Contenedor Docker de Apache con PHP creado desde Dockerfile y conectado a una Base de Datos en MySQL.
# PASO 1.
*Descargar la imagen de docker de Mysql.*
* docker pull mysql:5
# PASO 2.
Crear una carpeta con el nombre DataBase.
Crear una carpeta y guardar los archivos Conexion.php, PresenciaBL.php, PresenciaService.php, Index.php y el archivo Dockerfile que se encuentran en este repositorio.

# PASO 3.
*Ejecutar el contenedor para la Base de Datos.*
# Base de Datos.
* docker run -p 3306:3306 --name [nombre del contenedor] -v [ruta de la carpeta DataBase]:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=[contraseña] -d mysql:5

# PASO 4.
Crear una Base de datos
* docker exec -it [contenedor BD] /bin/bash
* mysql -u root -p
* CREATE DATABASE labsol;
* USE labsol;
* CREATE TABLE presencia (presencia_id INT NOT NULL AUTO_INCREMENT, direccion VARCHAR(45) NOT NULL, tiempoArea INT NOT NULL, last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, PRIMARY KEY  (presencia_id));
* INSERT INTO presencia values (default, "entrada", 20, current_timestamp);
* exit
* exit

# PASO 5.
Ejecutar crear la imagen para el contenedor Apache.
* Abrir la carpeta con los archivos php y el Dockerfile desde Visual Studio Code.
* Hacer clic derecho en el archivo Dockerfile y seleccionar la opción "Build image..."
* ![Alt text](https://drive.google.com/file/d/1zmc3GsQ7_bk9wiBe40t_Icppch52PYpe/view?usp=sharing/1.png) 
