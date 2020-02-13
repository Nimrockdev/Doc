# Docker #
Las imagenes Docker son plantillas (que incluyen una aplicación, los binarios y las librerias necesarias) que se utilizan para construir contenedores Docker y ejecutarlos (los contenedores ejecutarán una imagen previamente compilada).
Los contenedores son instancias temporales de las imagenes. Para tener datos persistentes hay que indicarlo en el dockerfile al construir la imagen.

##Algunos comandos  
`docker info`
`docker version`

##Inspeccionar una imagen  
`docker inspect <nombre_imagen>`

##Busqueda de imagenes  
`docker search ubuntu`  
`docker search jenkins`

##Instalación, algunos ejemplos 
`docker pull hello-world`    
`docker pull ubuntu`  
`docker pull mysql`
`docker pull mongo`  
`docker pull postgres`  
`docker pull jenkins`

`docker run hello-word`

##Eliminar imagen  
`docker rmi <nombre_imagen>:<TAG>`  

##Eliminar contenedor  
`docker rm -fv apache`  

##Eliminar todos los contenedores  
`docker rm -fv $(docker ps -aq)`  

##Listar imagenes disponibles en local  
`docker images`

##Listar imagenes, buscando por nombre
`docker images | grep mongo`

##Listar imagenes disponibles en local  
`docker images --help`

##Buscar por tag´  
`docker search ubuntu:16.04`  

##Instalar por tag  
`docker pull ubuntu:16.04`cre

##Container en ejecucion  
`docker ps`

##Container en ejecutados  
`docker ps -a`  

##Container, el ultimo creado  
`docker ps -l`

##Estadísticas  
`docker stats nombreImagen`

##Limitar ram en contenedor, al arrancar
`docker run -d -m "500mb" --name mongo2 mongo`  

##Copiar ficheros  
###Lo creamos  
`echo ":)" > index.html`  
###Lo copiamos  
`docker cp index.html apache:/tmp`

##Estructura del contenedor, se pasa el run con el nombre del contenedor más el comando  
`docker run ubuntu ls`  

##Arrancar contedor indicando que se destruya al salir
`docker run --rm -ti --name centos centos bash` 

##UBUNTU Arranca el bash de linux  
`docker run -i -t ubuntu bash`

###Arrancar Ubuntu de forma interactiva  
`docker run -it ubuntu`

###Arrancar Ubuntu de forma interactiva con nombre  
`docker run --name jsgvm -it ubuntu`

###Arrancar Ubuntu de forma interactiva, i= interactivo, t= terminal y COMMAND  
`docker run -i -t ubuntu bash`  

##JENKINS  
`docker run -d -p 7070:8080 --name jenkins jenkins`  

###Jenkins de forma interactiva, i= interactivo, t= terminal y COMMAND  
`docker exec -ti jenkins-xxx bash`  

##Arrancar MYSQL  
`docker run -d --name my-db1 -e "MYSQL_ROOT_PASSWORD=1234567" mysql`  
`docker run -d -p 3333:3306 --name my-db2 -e "MYSQL_ROOT_PASSWORD=1234567" -e "MYSQL_DATABASE=docker-db" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=7654321" mysql`

###MYSQL, para ver el estado del contenedor  
`docker logs -f my-db1`
Para salir  
`Ctrl+C`

###MYSQL, para ver los datos  
`docker inspect my-db1`  

###MYSQL, conectarse
`mysql -u root -h 172.17.0.2 -p1234567`  
`mysql -u root -p1234567 -h 127.0.0.2 --port 3333`  
`mysql -u docker-user -p7654321 -h 127.0.0.2 --port 3333`

##MONGO
`docker run -d --name my-mongo -p 27017:27017 mongo:latest`  

##POSTGRES  
`docker run -d --name postgres -e "POSTGRES_PASSWORD=1234567" -e "POSTGRES_USER=docker" -e "POSTGRES_DB=docker-db" -p 5432:5432 postgres`  

###POSTGRES, para acceder al bash
`docker exec -ti postgres bash`  

###POSTGRES, para conectarnos a la base de datos con usuario
`psql -d docker-db -U docker`

##Arrancar un contenedor por ID  
`c0955d59b756`

##Conectarse a un contenedor mediante COMMAND  
`docker attach BASH`

###Conectarse a un contenedor mediante COMMAND  
`docker attach ID`  
`docker attach 922`

##Detener un contenedor  
`docker stop ID`  
`docker stop 922...`  
`docker stop NAME`

##Arrancar un contenedor  
`docker start 922`  

##Reiniciar un contenedor, detiene y incia el servicio 
`docker restart 922`

##Arrancar docker con TAG específico  
`docker run -it ubuntu:16.04 /bin/bash`

##Ubuntu, si queremos utilizar algo, antes actualizar las dependencias  
`apt-get update`  

##Ejemplos
`apt-get install nano`  
`apt-get install git`

##Crear Imagen a partir de contenedor  
`docker commit ID jsg_imagen_01`

##Crear Imagen a partir de contenedor con comandos  
`docker commit --change='CMD ["apache2ctl", "-D FOREGROUND"]' -c "EXPOSE 85" 733bdb5f719f apache2`

--change='CMD ["apache2ctl", "-D FOREGROUND"]' -c "EXPOSE 85"

##Crear Imagen  
`docker build -t miweb /home/javier/miweb/`  

##Arrancar Imagen, se cambia el puerto  
`docker run -d -p 85:80 miweb`  
`docker run -d -p 8080:8080 jenkins`  
Cuando se solicte el puerto 85, se redirecciona al 80 que es el del contenedor

##Arrancar Imagen, sin cambiar el puerto  
`docker run miweb`

#Historial de cambios en una imagen
`docker history apache-centos:apache`   

##Para salir de un contenedor sin cerrarlo  
`ctrl+p+q`

##Creamos imagen de apache centos
`docker build --tag apache-centos -f  DockerFile .`
`docker build --tag apache-centos:apache -f  DockerFile .`  
`docker build -t nginx:v1 --file='DockerFile2' .`  
`docker build --tag apache:php -f DockerFile3 .`  

El DockerFile:  
Archivo donde definimos la configuración de la imagen. 

FROM = Especificamos con que SO queremos trabajar.  
RUN =  Instrucciones que podemos ejecutar.  
COPY/ADD = Copiar archivos.
ENV, contenido de dprueba.  
WORKDIR, cambia el directorio por defecto.  
EXPOSE, expone un puerto distinto.  
LABEL, se indica el numero de versión, es una etiqueta.  
USER, que usuario ejecuta la tarea.  
VOLUME, guarda los datos para que sean persistentes.  
CMD = Comando a ejecutar.



##VOLUME  
###HOST, se alamacenan en docker host  
`docker run -d --name my-db1 -e "MYSQL_ROOT_PASSWORD=1234567" -v /home/javier/Documentos/mysql:/var/lib/mysql mysql`
 
###ANONYMOUS, docker genera una carpeta para guardarlos  
`docker run -d --name my-db1 -e "MYSQL_ROOT_PASSWORD=1234567" -v /var/lib/mysql mysql`  

###NAMED VOLUMENES, volumenes creados por usuario, administradas por docker, tienen nombre  

###Para saber donde esta el directorio de volumenes
`docker info | grep -i root`

###Listar Volúmenes
`docker volume ls`  

###Eliminar Volúmenes que no sean utilizados  
`docker volume prune`  

###Crear Volúmenes Nombrados 
docker volume create mysql-data 


`docker run -d -p 80:80 apache-centos:apache`  
`docker run -d -p 80:80 nginx:v1`  
`docker run -d -p 80:80 apache:php`  
`docker run -d -p 80:80 apache:boostrap`  
`docker run -d -p 443:443 apache:sslOK`

Creación de certificados

`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt`


##Recargar Docker
`systemctl daemon-reloaded`  
`systemctl restart docker`
979f519361744cd28a94ea5187ea97ff