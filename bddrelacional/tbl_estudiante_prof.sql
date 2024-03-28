drop table estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	codigo_profesor int,
	constraint cedulas_pk primary key(cedula)
)
drop table profesores
create table profesores(
	codigo int not null,
	nombre varchar(50) not null,
	constraint codigop_pk primary key(codigo)
)

alter table estudiantes
add constraint profesor_estudiantes_fk
foreign key (codigo_profesor)
references profesores(codigo)

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES 
    ('1234567890', 'Juan', 'Martinez', 'juan@example.com', '2000-05-15', 1),
    ('2345678901', 'Maria', 'Gonzalez', 'maria@example.com', '2001-07-20', 2),
    ('3456789012', 'Pedro', 'Fernandez', 'pedro@example.com', '1999-10-25', 3),
    ('4567890123', 'Luisa', 'Sanchez', 'luisa@example.com', '2002-03-30', 4),
    ('5678901234', 'Andrea', 'Lopez', 'andrea@example.com', '2003-01-10', 5),
    ('6789012345', 'Francisco', 'Martinez', 'francisco@example.com', '2000-08-05', 1),
    ('7890123456', 'Ana', 'Fernandez', 'ana@example.com', '1998-12-18', 2),
    ('8901234567', 'Roberto', 'Jimenez', 'roberto@example.com', '2001-09-22', 3),
    ('9012345678', 'Lucia', 'Nuñez', 'lucia@example.com', '2002-06-14', 4),
    ('0123456789', 'Elena', 'Rodriguez', 'elena@example.com', '1999-04-02', 5);

----------------
INSERT INTO profesores (codigo, nombre)
VALUES 
    (1, 'Francisco'),
    (2, 'Carlos'),
    (3, 'Luisa'),
    (4, 'Sofia'),
    (5, 'Manuel');
