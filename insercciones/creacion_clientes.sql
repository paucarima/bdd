drop table clientes

create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	edad int,
	constraint clientes_pk primary key(cedula)
)

insert into clientes(cedula,nombre,apellido)
values ('1756309964','Nathaya','Negra')

insert into clientes(cedula,nombre,apellido,edad)
values ('1756309965','Valer','Mira',12)

insert into clientes(cedula,nombre,apellido,edad)
values ('1756309966','Soila','Vaca',21)

insert into clientes(cedula,nombre,apellido,edad)
values ('1756309968','Rarar','Toca',23)

select cedula,nombre,apellido from clientes

select * from clientes













