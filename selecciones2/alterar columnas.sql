select * from estudiantes

delete from estudiantes

alter table estudiantes
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)
alter table estudiantes
add constraint estudiantes_estado_civil_fk
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into estudiantes (cedula, nombre, apellido, email,fecha_nacimiento,estado_civil_codigo)
values ('1756304422','Pao2','Nat2','arroba@gmail.com','20/11/2000','S')
select * from estudiantes
select * from estado_civil
insert into estado_civil (codigo,descripcion)
values ('U','Union libre'),
	   ('S','Soltero'),
	   ('C','Casado')
