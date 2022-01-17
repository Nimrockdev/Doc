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

## MOSTRAR PRIVILEGIOS USUARIO ACTUAL
`SHOW GRANTS FOR CURRENT_USER;`  
`SHOW GRANTS;`  
`SHOW GRANTS FOR 'root'@'localhost';`

## ASIGNAR PERMISOS DE ADMINISTRADOR
`GRANT ALL PRIVILEGES ON *.* TO 'nombre_usuario'@'localhost';`


## ASIGNAR PRIVILEGIOS, SELECT, INSERT...
`GRANT SELECT ON SCHEMA.TABLE TO USER;`

## ELIMINAR PERMISOS  
`REVOKE UPDATE, DELETE ON *.* FROM 'usuario'@'localhost';`

## ELIMINAR TODOS LOS PERMISOS  
`REVOKE ALL PRIVILEGES ON *.* FROM 'usuario'@'localhost';`

## REFRESCAR PRIVILEGIOS
`FLUSH PRIVILEGES;`


## ROLES, MYSQL 8

`CREATE ROLE 'r1', 'r2';`  
`CREATE ROLE [IF NOT EXISTS] 'role1';`  
`GRANT SELECT ON db1.* TO 'r1';`  
`GRANT INSERT, UPDATE, DELETE ON db1.* TO 'r2';`  
`CREATE USER 'u1'@'localhost' IDENTIFIED BY 'u1pass';`  
`GRANT 'r1', 'r2' TO 'u1'@'localhost';`  


