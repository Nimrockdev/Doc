# Crear Tabla

CREATE TABLE IF NOT EXISTS `clientes` (  
`nif` int(11) NOT NULL  COMMENT 'Clave primaria',
  `nombre` varchar(50) NOT NULL COMMENT 'nombre cliente',
  `apellidos` varchar(100) NOT NULL COMMENT 'Apellidos cliente',
  `telefono` int(9) NOT NULL COMMENT 'móvil',
  `codigo_postal` int(5) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `profesion` text NOT NULL,
  PRIMARY KEY (`nif`),
  UNIQUE KEY `telefono` (`telefono`),
  KEY `nombre` (`nombre`),
  FULLTEXT KEY `apellidos` (`apellidos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de clientes';


INSERT INTO clientes (nif, nombre, apellidos, telefono, codigo_postal, edad, sexo, profesion)
values ('55566985', 'cliente 01', 'Apellido01 Apellido02', '996652122', '08808', '99', 'M', 'Developer');  

INSERT INTO clientes (nif, nombre, apellidos, telefono, codigo_postal, edad, sexo, profesion)
values ('55566982', 'cliente 02', 'Apellido01 Apellido02', '996665511', '08808', '25', 'F', 'Administrativo')

`select * from db1.clientes;`

CREATE TABLE INVOICE( 
idInvoice int PRIMARY KEY NOT NULL, 
fecha_date DATE, 
idCliente int
);

  INSERT INTO INVOICE( idInvoice, fecha_date, idCliente) values (1, curdate(), 1 )
