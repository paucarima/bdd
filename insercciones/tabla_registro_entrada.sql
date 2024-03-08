drop table registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint codigo_registro_pk primary key(codigo_registro)
)
insert into registros_entrada 
values(001,'1724166441','07/03/2024','23:17'),
	  (002,'1724166442','08/03/2024','22:20'),
	  (003,'1724166443','09/03/2024','21:21'),
	  (004,'1724166444','10/03/2024','20:54'),
	  (005,'1724166445','11/03/2024','19:56'),
	  (006,'1724166446','12/03/2024','17:30'),
	  (007,'1724166447','13/03/2024','16:08'),
	  (008,'1724166448','14/03/2024','14:05'),
	  (009,'1724166449','15/03/2024','13:06'),
	  (010,'1724166410','16/03/2024','10:09');
	 
 	  
	  select * from registros_entrada