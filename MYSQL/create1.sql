drop database if exists contactos;

create database contactos;

use contactos;

create table nombre
(
  ID mediumint not null auto_increment primary key,
  Nombre varchar(20),
  Apellido varchar(20)
);

create table direccion
(
  ID mediumint not null auto_increment primary key,
  nombreID mediumint not null,
  dir1 varchar(30),
  dir2 varchar(30),
  ciudad varchar(30),
  estado varchar(10),
  postal_code varchar(10)
);

insert into nombre (nombre, apellido)
values ('John', 'Doe'), ('Mary', 'Smith'), ('Bill', 'Jones'), ('Dave', 'White'),
('Jane', 'Tate'), ('Jane', 'Doe');

insert into direccion (nombreID, dir1, dir2, ciudad, estado, postal_code)
select ID, '123 4th Street', '', 'Anytown', 'OH', '12345' from nombre where nombre='John' and apellido='Doe';

insert into direccion (nombreID, dir1, dir2, ciudad, estado, postal_code)
select ID, '123 4th Street', '', 'Anytown', 'OH', '12345' from nombre where nombre='Jane' and apellido='Doe';

insert into direccion (nombreID, dir1, dir2, ciudad, estado, postal_code)
select ID, '16 7th Avenue', 'Apt. 9', 'Big City', 'AZ', '23456' from nombre where nombre='Mary' and apellido='Smith';

insert into direccion (nombreID, dir1, dir2, ciudad, estado, postal_code)
select ID, '5423 Rose Ct.', 'Number 3', 'Townburg', 'VT', '34567' from nombre where nombre='Bill' and apellido='Jones';

insert into direccion (nombreID, dir1, dir2, ciudad, estado, postal_code)
select ID, '456 7th Street', '', 'Hilltop', 'FL', '98756' from nombre where nombre='Dave' and apellido='White';

insert into direccion (nombreID, dir1, dir2, ciudad, estado, postal_code)
select ID, '98 Long Road', '', 'Noplaceville', 'AK', '74839' from nombre where nombre='Jane' and apellido='Tate';
