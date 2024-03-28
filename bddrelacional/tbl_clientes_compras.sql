drop table clientes
create table clientes(
	cedula_cli char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint cedula_cli_pk primary key(cedula_cli)
)

drop table compras
create table compras(
	id_compra int not null,
	cedula_propietario char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2),
	constraint id_compra_pk primary key(id_compra)
)

alter table compras
add constraint clientes_compras_fk
foreign key (cedula_propietario)
references clientes(cedula_cli)

INSERT INTO clientes (cedula_cli, nombre, apellido)
VALUES ('1234567', 'Juan', 'Perez'),
       ('7654321', 'Monica', 'Gomez'),
       ('9876547', 'Luis', 'Martinez'),
       ('7777777', 'Monica', 'Hernandez'),
       ('8888888', 'Pedro', 'Lopez'),
       ('7771234', 'Roberto', 'Sanchez'),
       ('5557777', 'Monica', 'Rodriguez'),
       ('7779999', 'Sofia', 'Alvarez'),
       ('7774447', 'Andres', 'Gonzalez'),
       ('4447777', 'Monica', 'Fernandez');
	   
	   select *from clientes

-- tabla compras
INSERT INTO compras (id_compra, cedula_propietario, fecha_compra, monto)
VALUES (1, '1234567', '2023-01-15', 150.50),
       (2, '7654321', '2023-02-20', 200.75),
       (3, '9876547', '2023-03-25', 75.30),
       (4, '7777777', '2023-04-10', 300.00),
       (5, '8888888', '2023-05-05', 100.00),
       (6, '7771234', '2023-06-12', 50.25),
       (7, '5557777', '2023-07-18', 400.00),
       (8, '7779999', '2023-08-22', 90.80),
       (9, '7774447', '2023-09-30', 180.60),
       (10, '4447777', '2023-10-10', 250.00);
	   
	   	   select *from compras
		   
		   
		   