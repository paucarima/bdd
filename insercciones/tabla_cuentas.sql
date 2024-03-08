drop table cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint numero_cuenta_pk primary key(numero_cuenta)
)

insert into cuentas 
values('22391','17241','20/05/2023',2000.16),
	  ('22022','17242','21/07/2023',4000.15),
 	  ('22023','17243','22/09/2023',6000.14),
	  ('22024','17244','23/11/2023',8000.12),
 	  ('22025','17245','24/12/2023',1000.13),
	  ('22026','17246','25/08/2023',5000.10),
 	  ('22027','17247','26/06/2023',6000.90),
	  ('22028','17248','27/04/2023',7000.80),
 	  ('22029','17249','28/01/2023',8000.12),
	  ('22000','17240','19/02/2023',9000);
	  
	  select * from cuentas 