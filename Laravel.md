#LARAVEL

## Instalar APACHE

##Crear Proyecto, dentro de:  
`C:\wamp64\www\curso-laravel\probando-laravel`  
`composer create-project laravel/laravel probando-laravel  --prefer-dist`  
###Para instalar una versión especifica  
`composer create-project laravel/laravel proyecto "5.2.*"`

##Comprobar que laravel esta instalado  
`http://localhost:8081/curso-laravel/probando-laravel/public/`  

##Averiguar que versión de Laravel instalada  
`php artisan --version`  

#Host Virtual, Dominio Virtualizado httpd-vhosts.conf
#VHOST Curso LARAVEL P1
<VirtualHost *:80>
  DocumentRoot "C:/wamp64/www/curso-laravel/probando-laravel/public"
  ServerName cursolaravel1.com.devel
  ServerAlias www.cursolaravel1.com.devel
  <Directory "C:/wamp64/www/curso-laravel/probando-laravel/public">
    Options Indexes FollowSymLinks
    AllowOverride All
    Order Deny,Allow
    Allow from All
  </Directory>
</VirtualHost> 

##Descomentar en httpd.conf
    LoadModule rewrite_module modules/mod_rewrite.so  


##En host  
    127.0.0.1 cursolaravel1.com.devel

#Routes.php es web.php

