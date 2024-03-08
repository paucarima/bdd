drop table transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo  char(1) not null,
	fecha date not null,
	hora time not null,
	constraint codigot_pk primary key(codigo)
)

insert into transacciones 
values(001,'22035',10.50,'C','07/03/2024','23:39'),
	  (002,'22036',9.50,'D','14/01/2024','10:39'),
	  (003,'22037',12.00,'C','15/02/2024','11:00'),
	  (004,'22038',20.50,'C','16/04/2024','14:49'),
	  (005,'22039',60.00,'D','05/05/2024','15:19'),
	  (006,'22040',80.20,'D','08/06/2024','15:20'),
	  (007,'22041',40.20,'D','09/07/2024','16:52'),
	  (008,'22042',50.54,'C','10/08/2024','20:40'),
	  (009,'22043',70.00,'C','23/09/2024','21:40'),
	  (010,'22044',100.00,'D','12/11/2024','20:00');

	  
	  
	  select * from transacciones 