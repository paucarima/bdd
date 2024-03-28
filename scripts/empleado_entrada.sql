drop table registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint codigo_registro_pk primary key(codigo_registro)
)

create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint codigo_empleado_pk primary key(codigo_empleado)
)

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

INSERT INTO registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES 
    (1, '1234567890', '2023-08-10', '08:30:00', 2201),
    (2, '2345678901', '2023-09-05', '09:15:00', 2202),
    (3, '3456789012', '2023-10-20', '10:45:00', 2203),
    (4, '4567890123', '2023-11-15', '11:30:00', 2204),
    (5, '5678901234', '2023-12-03', '12:00:00', 2205),
    (6, '6789012345', '2023-08-25', '08:15:00', 2206),
    (7, '7890123456', '2023-09-18', '09:45:00', 2207),
    (8, '8901234567', '2023-10-10', '10:30:00', 2208),
    (9, '9012345678', '2023-11-05', '11:00:00', 2209),
    (10, '0123456789', '2023-12-20', '12:45:00', 2210);

--------------------------
INSERT INTO empleado (codigo_empleado, nombre, fecha, hora)
VALUES 
    (2201, 'Juan', '1990-01-01', '08:00:00'),
    (2202, 'Maria', '1992-05-10', '08:30:00'),
    (2203, 'Pedro', '1995-11-15', '09:00:00'),
    (2204, 'Luisa', '1993-03-20', '09:30:00'),
    (2205, 'Andres', '1997-07-25', '10:00:00'),
    (2206, 'Ana', '1991-09-30', '10:30:00'),
    (2207, 'Roberto', '1988-12-05', '11:00:00'),
    (2208, 'Lucia', '1994-04-10', '11:30:00'),
    (2209, 'Elena', '1996-08-15', '12:00:00'),
    (2210, 'Francisco', '1998-12-20', '12:30:00');
