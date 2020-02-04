# Docker #
Las imagenes Docker son plantillas (que incluyen una aplicación, los binarios y las librerias necesarias) que se utilizan para construir contenedores Docker y ejecutarlos (los contenedores ejecutarán una imagen previamente compilada).
Los contenedores son instancias temporales de las imagenes. Para tener datos persistentes hay que indicarlo en el dockerfile al construir la imagen.

##Algunos comandos  
`docker info`
`docker version`

`docker pull hello-world`
`docker run hello-word`

##Inspeccionar una imagen  
`docker inspect <nombre_imagen>`

##Busqueda de imagenes  
`docker search ubuntu`  
`docker search jenkins`

##Instalación  
`docker pull ubuntu`

##Eliminar imagen  
`docker rmi <nombre_imagen>:<TAG>`  

##Eliminar contenedor  
`docker rm -fv apache`  

##Listar imagenes disponibles en local  
`docker images`

##Listar imagenes, buscando por nombre
`docker images | grep mongo`

##Listar imagenes disponibles en local  
`docker images --help`

##Buscar por tag´  
`docker search ubuntu:16.04`  

##Instalar por tag  
`docker pull ubuntu:16.04`

##Container en ejecucion  
`docker ps`

##Container en ejecutados  
`docker ps -a`

##Estructura del contenedor, se pasa el run con el nombre del contenedor más el comando  
`docker run ubuntu ls`

##Arranca el bash de linux  
`docker run -i -t ubuntu bash`

##Arrancar Ubuntu de forma interactiva  
`docker run -it ubuntu`

##Arrancar Ubuntu de forma interactiva con nombre  
`docker run --name jsgvm -it ubuntu`

##Arrancar Ubuntu de forma interactiva, i= interactivo, t= terminal y COMMAND  
`docker run -i -t ubuntu bash`  

##Arrancar Jenkins de forma interactiva, i= interactivo, t= terminal y COMMAND  
`docker exec -ti jenkins-xxx bash`

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
ENV, contenido de dprueba
WORKDIR, cambia el directorio por defecto
EXPOSE, expone un puerto distinto
LABEL, se indica el numero de versión, es una etiqueta
USER, que usuario ejecuta la tarea,
VOLUME, guarda los datos para que sean persistentes
CMD = Comando a ejecutar


`docker run -d -p 80:80 apache-centos:apache` 
`docker run -d -p 80:80 nginx:v1` 
`docker run -d -p 80:80 apache:php`
`docker run -d -p 80:80 apache:boostrap`  
`docker run -d -p 443:443 apache:sslOK`

Creación de certificados

´openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt´


979f519361744cd28a94ea5187ea97ff