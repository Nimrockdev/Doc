#Permisos  
##ALL PRIVILEGES
Permite acceder a todas las bases de datos.
##CREATE
Permite crear tablas o bases de datos.
##DROP
Permite eliminar tablas o bases de datos.
##DELETE
Permite borrar registros de tablas.
##INSERT
Permite insertar registros de tablas.
##SELECT
Permite leer registros de tablas.
##UPDATE
Permite actualziar registros de tablas.
##GRANT OPTION
Permite eliminar privilegios de usuarios.
`CREATE USER 'user1'@'localhost' IDENTIFIED by 'user1pas';`  
`CREATE USER 'user2'@'localhost' IDENTIFIED by 'user2pas';`  
`show grants for 'user1'@'localhost'`  
  
Permiso de solo lectura  
`grant select on sakila.actor to 'user1'@'localhost'`  
  
Permiso de solo lectura  
`grant select on *.* to 'user1'@'localhost';`  
  
Revocar permisos  
`revoke select on sakila.actor from 'user1'@'localhost';`  
`revoke select on *.* from 'user1'@'localhost';`

##Esto lo hemos hecho ya que daba error con root  
`CREATE USER 'foo'@'%' IDENTIFIED WITH mysql_native_password BY 'bar';`  
`grant ALL privileges on *.* to 'foo'@'%';`