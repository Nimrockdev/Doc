# MySQL  

## Mostrar Bases de datos
`SHOW databases;`

## Usar BD
`USE mysql;`


## Mostrar todas las tablas de BD
`SHOW FULL tables;`

## Mostrar Tabla
`SELECT * FROM user;`

## Crear usuario con contraseña
`CREATE USER user1 IDENTIFIED by 'user1pas';`  

# Eliminar usuario
`DROP USER user1;`  

## Mostrar privilegios para usuario root
`SHOW GRANTS for 'root'@'localhost';`  
`SHOW GRANTS for 'mysql.sys'@'localhost';`  

## MOSTRAR PRIVILEGIOS USUARIO ACTUA  
`SHOW GRANTS FOR CURRENT_USER;`  
`SHOW GRANTS;`  
`SHOW GRANTS FOR 'root'@'localhost';`

## ROLES

`CREATE ROLE 'ROLE_GSD';`  
`CREATE ROLE 'r1', 'r2';`  
`CREATE ROLE [IF NOT EXISTS] 'role1';`  

