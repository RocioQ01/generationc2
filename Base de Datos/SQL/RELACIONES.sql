-- relaciones

create table proveedor(
	id int primary key not null auto_increment,
	nombre varchar(100)not null,
	rut varchar(100) not null
);
/*
 * Proveedor
 * id  nombre  rut
 * 1   lulu    01-sept
 */

create table direcciones(
	id int primary key not null auto_increment,
	calle varchar(100) not null,
	numero int not null,
	sector varchar(100) not null,
	ciudad varchar(100) not null,
	region varchar(100) not null,
	codigo_postal int,
	proveedor_id int not null -- Se crea ya la FK
);
select *
from proveedores
/*
 * id	calle	numero	sector_comuna	ciudad	region	codigo_postal	proveedor_id
 * */

-- constraint = 
	alter table direcciones
	add constraint fk_proveedor_id -- Se agrega un nombre a la direcciones
	foreign key (proveedor_id) references proveedor(id)
	-- Se relaciona proveedor_id con la tabla proveedores(id) referenciando.

insert into proveedor (nombre,rut)
values ("Lulu","55548-5"),("Haku","22359-4"),("Jhin","32154-7");

insert into proveedor (nombre,rut)
values ("Galita","4321654-4");

insert into direcciones (calle,numero,sector,ciudad,region,codigo_postal,proveedor_id)
values ("alvear","554","puente alto","santiago","metropolitana","5460000","1"),("dali","223","puente alto","santiago","metropolitana","8150000","2"),("fulgor","777","eyzaguirre","temuco","araucania","9650000","3");

select *
from proveedor;

select *
from direcciones;

truncate table proveedor;

-- SQL JOINs (Query) INNET JOIN
	select *from proveedor p 
	inner join direcciones d  -- 4x4, combina con todos las direcciones(datos), encontrar registros en comun
	on p.id = d.proveedor_id; -- Igualar, traer datos donde la columna id sea igual a en este caso, proveedor.id (on = en comun)
	-- where p.id = 2 -- filtro
	-- join = encontrar dos o mas datos en comun.
	
	select d.id,d.calle,d.numero,p.nombre -- seleccionar las columnas
	from proveedor p -- datos relacionados
	inner join direcciones d -- a traves de esta columna
	on d.id = d.proveedor_id
	where d.id = 1 -- filtro
	
	-- LEFT JOIN
	select * -- d.id,d.calle,d.numero,p.nombre 
	from proveedor p -- Tabla A
	left join direcciones d -- Tabla B
	on d.id = d.proveedor_id

	-- RIGHT JOIN
	select * -- d.id,d.calle,d.numero,p.nombre 
	from proveedor p 
	right join direcciones d 
	on d.id = d.proveedor_id
