drop table  productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint codigo_pk primary key(codigo)
)

insert into productos 
values(1,'Cocacola','2 litros',2.5,12),
 	  (2,'Leche','1 litro',1.00,24),
 	  (3,'Chocolate','1000 gramos',1.5,48),
      (4,'Cafe','35 gramos',0.35,96),
      (5,'Pan','pan de ambato',0.2,50);
	  
	  select * from productos
	  
insert into productos(codigo,nombre,precio,stock)
values(6,'Pasta Dental',1.00,24),
 	  (7,'Jabon',1.00,12),
 	  (8,'Wiskas',2.5,10);
	  
	  select * from productos