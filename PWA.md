Se recomienda instalar JSHint, aunque no funciona,utilizamos el fichero que proporciona ".jshintrc"

Necesitamos instalar http-server, "-g" significa que ese instala de manera global.  

`npm install http-server -g`

Para arrancar  

`http-server`

    Starting up http-server, serving ./
    Available on:
    http://11.11.11.161:8080
    http://192.168.0.180:8080
    http://192.168.56.1:8080
    http://192.168.99.1:8080
    http://127.0.0.1:8080
    Hit CTRL-C to stop the server

Para iniciar en otro puerto  

`http-server -p 8081`

Abrir en navegador  

`http-server -a localhost -o`

Mediante 

*http-server* no carga el '/index', tenemos que indicarlo a mano.
Si utilizamos **Live Server** parece que funciona.


##TIPS  

- Un error 404 no lo intercepta el catch.
- Un error 404 no dispara un error de cache.
- En nuestro caso hay que añadir `\index` a la url.
- APP SHELL, todo lo que es necesario para que la aplicación funcione 