create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)

create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char(10) not null,
	constraint proveedores_pk primary key(codigo)
)

create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	precio money not null,
	constraint producto_fk foreign key(pp_codigo_producto) references productos(codigo),
	constraint proveedor_fk foreign key(pp_codigo_proveedor) references proveedores(codigo),
	constraint  productos_por_proveedor_pk primary key(pp_codigo_producto,pp_codigo_proveedor)
	
)


insert into productos(codigo,nombre,stock)
values (100,'Doritos',100),
	   (200,'Kchitos',200),
	   (300,'Papas',300);
	   
	   select * from productos
	   
insert into proveedores(codigo,nombre,telefono)
values (1,'Snacks SA','0984739345'),
	   (2,'Kchitos','0985739345');
	   
	   select * from proveedores
	   
insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)  
values(300,1,0.60),
(300,2,0.49),
(100,1,0.50),
(200,1,0.51);

		
	   select * from productos_por_proveedor
	   
select prod.codigo,prod.nombre,prov.nombre,pp.precio
from productos prod, proveedores prov, productos_por_proveedor pp
where pp.pp_codigo_producto=prod.codigo
and pp.pp_codigo_proveedor=prov.codigo
and prod.codigo=300	   