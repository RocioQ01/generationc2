-- id,nombre,descripcion nombre de la tabla: productos

create table productos (
	id int primary key not null auto_increment,
	nombre varchar(100) not null,
	descripcion varchar(100) not null,
	valor_unitario int
);

create table pedidos(
	id int primary key not null auto_increment,
	fecha date not null,
	monto int not null,
	cliente_id int
);

-- Tabla intermedia o relacional; pedidos_productos
-- id, fk tabla 1, fk tabla2
-- id,pedido_id producto_id

create table pedidos_productos(
id int primary key not null auto_increment,
pedido_id int not null,
producto_id int not null,
foreign key(producto_id) references productos(id)
foreign (pedido_id) references pedido (id)
);

insert into productos (nombre,descripcion)
values ("Coca-cola","Lata 500ml"),("Papas fritas","Grande 500gr")

insert into pedidos (fecha,monto)
values ('2022-12-25',1000),('2022-10-05',5000)
-- YYYY-MM-DD con comillas simples ''
select *
from productos

select *
from pedidos 

truncate table productos;
truncate table pedidos;

insert into pedidos_productos(pedidos_id, productos_id)
values (1,1),(1,1) -- Le entrga el id con la informacion

alter table pedidos_productos
add cant_productos int, add subtotal int;

alter table productos
add valor_unitario int;

