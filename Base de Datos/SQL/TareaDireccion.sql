-- ejercicio
/*
 * Tabla direcciones
 * id, nombre, numero, ciudad
 * 
 * Agregar a todas las tablas
 * la relacion
 * Dos inserciones en las tablas
 * */

create table generationc2.direcciones (
id int primary key not null auto_increment,
nombre varchar(100) not null,
numero int(100) not null,
ciudadId varchar(100) not null
);

insert into direcciones  (nombre,numero,ciudadId)
values ("Jhin","921538152","Santiago"),("Tingui","935128465","Santiago");

select *
from direcciones;

alter table estudiantess  
add ciudadId varchar;

alter table estudiantess
add foreign key(ciudadId) references ciudad(id);




