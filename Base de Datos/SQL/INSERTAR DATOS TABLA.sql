-- insertar datos en tablas
-- insert into nombre_tabla (nombre_col1, nombre_col2...) values(valor1,valor2...);
insert into directivos (nombre, apellido)
values ("Maggie","Fernandez");

insert into directivos (nombre, apellido)
values ("Rafael","Guerrero");

-- consultar, select + asterisco(*) = TODOS LOS REGISTROS
select *
from directivos -- tabla compoleta
where id = 3; -- Solo trae el registro indicado, en este caso "3"


-- insertar mas de un registro
insert into directivos (nombre, apellido)
values ("Andrea","Montecinos"),("Lau","Soto");

-- Tarea crear tabla mascotas, mínimo 4 columnas, mínimo 4 inserciones, crear por medio de script

-- Modificar la data
drop database generationc2;

-- eliminar la tabla, no se puede recuperar
drop table directivos;

-- eliminar el contenido de una tabla
truncate table directivos;

-- modificar una columna especifica

update nombre_tabla set nombre_columna= el_nuevo_dato where condicion

update directivos set nombre= "Laura" where id = 4;
select * from directivos;

-- mostrar columnas especificas
select nombre, id
from directivos;

-- alias
select d.nombre as gato, d.if as rut
from directivos d;

-- filtrar
insert into directivos ( nombre, apellido)
values ("Andrea","Soto"),("Andrea","Palma");

select d.id,d.nombre,d.apellido
from directivos d
where d.nombre =  "andrea" /*Trajo todos los registros con el nombre, en
este caso "andrea"*/
and d.apellido = "montecinos";

INSERT into directivos ( nombre, apellido) 
values ("Andres","Soto")


-- Filtrar por parte de palabra/número
select d.nombre, d.apellido, d.id
from directivos d 
where d.nombre like 'an%';

-- busca la coincidencia en cualquier en cualquier parte de la palabra
select d.nombre, d.apellido, d.id
from directivos d 
where d.nombre like 'afa%';

-- Agregar el FK a estudiantes

-- 1.- Creacion columna
alter table estudiantess
add cursoId int;

-- 2.-  Relacionen las tablas
alter table estudiantess
add foreign key(cursoId) references curso (id);

-- MUL= multiples valores (esto lo entrega al poner "foreign key")


INSERT into estudianteSS (nombre,apellido,cursoId)
values ("Jhon","Doe",1),("Jane","Doe",2),("Ayun","Doe",2),("Zoe","Doe",3);
select *
from estudiantess;
