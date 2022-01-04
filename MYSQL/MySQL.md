# MySQL  

## Mostrar Bases de datos
`SHOW databases;`

## Usar BD
`USE mysql;`


## Mostrar todas las tablas de BD
`SHOW FULL tables;`

## Mostrar Tabla
`SELECT * FROM user;`

## Mostrar privilegios para usuario root
`SHOW GRANTS for 'root'@'localhost';`  
`SHOW GRANTS for 'mysql.sys'@'localhost';`

## Crear usuario con contraseña
`CREATE USER user1 IDENTIFIED by 'user1pas';`  

# Eliminar usuario
`DROP USER user1;`  

