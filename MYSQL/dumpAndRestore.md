## With schema names 
### Dump
`mysqldump -B -u root -p dbName > dbName.sql;`  

### Restore
`mysql -u root -p < dbName.sql;`


## Without schema names 
### Dump
`mysqldump -p --user root dbName < dbName.sql;`  

### Restore  
`mysql -u root -p dbName < dbName.sql` 



 
## Others
All databases  
`mysqldump [opciones] --all-databases > dbsDump.sql`  

DUMP with functions, procedures and single-transaction  
`mysqldump --single-transaction --routines  -u root -p dbName > dbName.sql;`  
