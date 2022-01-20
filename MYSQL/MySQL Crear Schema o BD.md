# DML  
# Crear esquema, BD  
`CREATE SCHEMA 'schema001' DEFAULT CHARACTER SET utf8;`  
`CREATE DATABASE DB1;`    
`CREATE DATABASE DB2;`

## Eliminar  
`DROP DATABASE DB2`  

## Ver tablas y descripción  
`show full tables;`  
`describe clientes;`  

## Eliminar todos los registros de una tabla  
`truncate clientes`
  
  
## Crear dump 
`mysqldump -u root -p bd > backup.sql;`  
`mysqldump -p --user root bd tabla > backuptabla.sql`  

## Restaurar dump 
`mysql -u root -p  nombre_base_de_datos < backup.sql`
