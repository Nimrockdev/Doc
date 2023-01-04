## With shema names 
### Dump
`mysqldump --routines -u root -p dbName > dbName.sql;`  

### Restore
`mysql -u root -p < dbName.sql;`


## Without shema names 
### Dump
`mysqldump -p --user root dbName < dbName.sql;`  

### Restore  
`mysql -u root -p dbName < dbName.sql` 



 
## Others
All databases  
`mysqldump [opciones] --all-databases > dbsDump.sql`  

DUMP con funciones y procedures  
`mysqldump --single-transaction --routines  -u root -p dbName > dbName.sql;`  
