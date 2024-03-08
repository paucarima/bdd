drop table estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint cedula_pk primary key(cedula)
)

insert into estudiantes
values('1756309961','Camila','Cabello','camilacabello@gmail.com','27/11/1999'),
	  ('1756309962','Rocio','Torres','torresro@gmail.com','28/10/2000'),
	  ('1756309963','Isabel','Lopez','lopezisa@gmail.com','12/11/2004'),
	  ('1756309964','Narciza','Gonzales','gonzalesnar1@gmail.com','12/12/1998'),
	  ('1756309965','Ramiro','Yuqui','yuirami@gmail.com','30/05/1958'),
	  ('1756309966','Luis','Cajamar','cajamarlu5@gmail.com','30/06/2005'),
	  ('1756309969','Maria','Carrera','carreramar7@gmail.com','12/02/2008'),
	  ('1756309968','Jose','Moreno','josemore6@gmail.com','18/07/2016');
	  
	  select * from estudiantes