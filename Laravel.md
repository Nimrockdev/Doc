#LARAVEL

## Instalar APACHE

##Crear Proyecto, dentro de:  
`C:\wamp64\www\curso-laravel\probando-laravel`  
`composer create-project laravel/laravel probando-laravel  -prefer-dist`  
###Para instalar una versión especifica  
`composer create-project laravel/laravel proyecto "5.2.*"`

##Comprobar que laravel esta instalado  
`http://localhost:8081/curso-laravel/probando-laravel/public/`  

##Averiguar que versión de Laravel instalada  
`php artisan --version`  

#Dominio Virtualizado httpd-vhosts.conf
    <VirtualHost *:80>
    DocumentRoot "c:\wamp64\www\curso-laravel\probando-laravel\public"
    ServerName cursolaravel.com.test
    ServerAlias www.cursolaravel.com.dev 
    <Directory "c:\wamp64\www\curso-laravel\probando-laravel\public">
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all Granted
    </Directory>
    </VirtualHost>  

##Descomentar en httpd.conf
    LoadModule rewrite_module modules/mod_rewrite.so  


##En host  
    127.0.0.1 cursolaravel.com.test

#Routes.php es web.php