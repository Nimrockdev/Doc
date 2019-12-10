# Docker #
Las imagenes Docker son plantillas (que incluyen una aplicación, los binarios y las librerias necesarias) que se utilizan para construir contenedores Docker y ejecutarlos (los contenedores ejecutarán una imagen previamente compilada)


##Algunos comandos  
`docker info`
`docker version`

`docker pull hello-world`
`docker run hello-word`

##Inspeccionar una imagen  
`docker inspect <nombre_imagen>`

##Busqueda de imagenes  
`docker search ubuntu`

##Instalación  
`docker pull ubuntu`

##Eliminar imagen  
`docker rmi <nombre_imagen>:<TAG>`

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


###Ejemplo de Dockerfile  
FROM ubuntu:16.04
MAINTAINER Javier Sánchez Gómez 
RUN apt-get update 
RUN apt-get -y install apache2
EXPOSE 81
CMD /usr/sbin/apache2ctl -D FOREGROUND

##Crear Imagen  
`docker build -t miweb /home/javier/miweb/`
##Arrancar Imagen, se cambia el puerto  
`docker run -d -p 85:80 miweb`
##Arrancar Imagen, sin cambiar el puerto  
`docker run miweb`

##Para salir de un contenedor sin cerrarlo  
`ctrl+p+q`