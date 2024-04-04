select * from estudiantes
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values('1756309677','Ester','Cham','camklsfa@gmail.com','2000-05-24',1);

ALTER TABLE estudiantes
ADD COLUMN mensual money;

select * from profesores

DELETE FROM estudiantes WHERE cedula=?
select *,cast(mensual as decimal(6,2)) from estudiantes where nombre like '%Valeria%'