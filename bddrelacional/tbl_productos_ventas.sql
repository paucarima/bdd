drop table  productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint codigo_pk primary key(codigo)
)

create table ventas(
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int not null,
	constraint id_venta_pk primary key(id_venta)
)

alter table ventas
add constraint productos_ventas_fk
foreign key (codigo_producto)
references productos(codigo)


INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES (1, 'Manzana', 'Fruta fresca', 1.50, 100),
       (2, 'Mesa', 'Mueble de madera', 50.00, 20),
       (3, 'Martillo', NULL, 10.00, 30),
       (4, 'Plátano', 'Fruta amarilla', 1.00, 80),
       (5, 'Libreta', 'Cuaderno de tapa blanda', 3.50, 50),
       (6, 'Martillo grande', 'Herramienta para carpintería', 15.00, 15),
       (7, 'Computadora', 'Portátil con pantalla de 15"', 800.00, 10),
       (8, 'Mouse', 'Accesorio para computadora', 10.00, 40),
       (9, 'Monitor', 'Pantalla LED de 24"', 200.00, 25),
       (10, 'Memoria USB', 'Almacenamiento portátil', 20.00, 60);

--------------------------------------------
INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad)
VALUES (1, 1, '2023-01-15', 5),
       (2, 2, '2023-02-20', 3),
       (3, 4, '2023-03-25', 2),
       (4, 6, '2023-04-10', 5),
       (5, 7, '2023-05-05', 1),
       (6, 8, '2023-06-12', 4),
       (7, 9, '2023-07-18', 2),
       (8, 10, '2023-08-22', 3),
       (9, 3, '2023-09-30', 1), 
       (10, 5, '2023-10-10', 6);
	   
	   select * from productos 
	   select * from ventas