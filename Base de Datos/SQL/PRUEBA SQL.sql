/*Puntos a considerar:
	Don José vende distintos tipos de productos.
	Tiene distintos proveedores.
	Desea un informe anual sobre ganancias y venta de productos.
  Puntos a evaluar:
	Creación de la base.
	Creación de tablas necesarias.
	Generar distintos tipos de relaciones entre tablas.
	Generar tablas relacionales.
	Poblar la base con al menos 5 productos.
	Poblar la base con al menos 4 tipos de productos.
	Generar una consulta que una a lo menos 2 tablas (JOIN)
	Creación lógica que tenga relación con el caso.*/

create table Tipo_producto(
	idTProducto int primary key not null auto_increment,
	nombre varchar(100) not null
);

create table Producto(
	idProducto int primary key not null auto_increment,
	idTProducto_id int not null,
	nombre varchar(100) not null,
	descripcion varchar(100) not null,
	precioCompra int not null,
	precioVenta int not null,
	
	foreign key (idTProducto_id) references Tipo_producto (idTProducto)
);

create table Proveedor(
	idProveedor int primary key not null auto_increment,
	nombre varchar(100) not null,
	rut varchar(100) not null
);

create table Venta(
	idVenta int primary key not null auto_increment,
	fecha date not null
);

create table Producto_Venta(
	idPVenta int primary key not null auto_increment,
	cantProductos int not null,
	idProducto_id int not null,
	idVenta_id int not null,
	foreign key (idProducto_id) references Producto (idProducto),
	foreign key (idVenta_id) references Venta (idVenta)
);

create table Proveedor_Producto (
	idProveedor_id int not null,
	idProducto_id int not null,
	foreign key (idProveedor_id) references Proveedor (idProveedor),
	foreign key (idProducto_id) references Producto (idProducto)
);

insert into Tipo_Producto(nombre)
values ("Vegetales"),("Limpieza"),("Congelados"),("Juguetes");

insert into Producto (idTProducto_id,nombre,descripcion,precioCompra,precioVenta)
values (1,"Tomate","Malla 1kg",1100,1500),(2,"Cloro","Cloro gel 1 litro",1500,2000),(3,"Empanadas","Docena",2000,2500),(1,"Lechuga","Escarola",1500,1000),(4,"Avion","A pilas",6500,5000);

insert into Proveedor(nombre,rut)
values ("Los Michis","54681235-5"),("Jhin","26484654-4");

insert into Venta(fecha)
values ('2022-10-30');

insert into Producto_Venta(cantProductos,idProducto_id,idVenta_id)
values (3,1,1);

insert into Proveedor_Producto (idProveedor_id,idProducto_id)
values (1,1);

-- Desea un informe anual sobre ganancias y venta de productos

select nombre from producto; -- consulta
-- venta, producto, producto_venta, tipo_producto
select * from venta; -- fecha
select * from producto; -- nombre - precioCompra - precioVenta
select * from producto_venta; -- cantProductos - idPVenta
select * from tipo_producto; -- nombre

select p.nombre, tp.nombre, p.precioCompra, p.precioVenta 
from tipo_producto tp -- Tabla A
inner join producto p -- Tabla B
on p.idTProducto_id = tp.idTProducto;

select p.nombre as "Poductos", tp.nombre as "Categoria producto", p.precioCompra , p.precioVenta, pv.cantProductos, v.fecha, cantProductos * precioVenta as "Total compra", precioVenta - precioCompra as "Ganancias por productos", (precioVenta - precioCompra) * cantProductos as "Ganancia total"
from tipo_producto tp -- Tabla A
inner join producto p -- Tabla B (tabla a)
on p.idTProducto_id = tp.idTProducto
inner join producto_venta pv -- (tabla b)
on pv.idProducto_id = p.idProducto
inner join venta v 
on v.idVenta = pv.idVenta_id
where v.fecha like '%'"2022"'%';
