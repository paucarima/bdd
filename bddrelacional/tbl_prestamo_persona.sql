drop table persona
create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_Ahorrada money,
	numero_hijos int not null,
	constraint cedulaPer_pk primary key(cedula)
)

create table prestamo(
	cedula char(10) not null,
	monto money,
	fecha_prestamo date not null,
	hora_prestamo time,
	garante varchar(40) not null,
	constraint cedulaPre_pk primary key(cedula)
)

alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references persona(cedula)

INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_Ahorrada, numero_hijos)
VALUES 
    ('1234567890', 'Juan', 'Martinez', 1.75, '1990-05-15', '08:00:00', 500.00, 2),
    ('2345678901', 'Maria', 'Gonzalez', 1.65, '1992-07-20', '09:30:00', 800.00, 1),
    ('3456789012', 'Pedro', 'Fernandez', 1.80, '1995-10-25', '10:45:00', 300.00, 3),
    ('4567890123', 'Luisa', 'Sanchez', 1.70, '1999-03-30', '11:30:00', 600.00, 0),
    ('5678901234', 'Andrea', 'Lopez', 1.68, '2000-01-10', '12:00:00', 400.00, 2),
    ('6789012345', 'Sean', 'Johnson', 1.85, '1988-09-05', '08:15:00', 700.00, 1),
    ('7890123456', 'Ana', 'Fernandez', 1.75, '1991-12-18', '09:45:00', 200.00, 4),
    ('8901234567', 'Roberto', 'Jimenez', 1.78, '1997-09-22', '10:30:00', 900.00, 2),
    ('9012345678', 'Lucia', 'Nuñez', 1.60, '1998-06-14', '11:00:00', 350.00, 1),
    ('0123456789', 'Elena', 'Rodriguez', 1.72, '1993-04-02', '12:45:00', 450.00, 3);

-------------------------------------------------------------------
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES 
    ('1234567890', 500.00, '2023-08-10', '08:30:00', 'Carlos Perez'),
    ('2345678901', 800.00, '2023-09-05', '09:15:00', 'Laura Gutierrez'),
    ('3456789012', 300.00, '2023-10-20', '10:45:00', 'Roberto Garcia'),
    ('4567890123', 600.00, '2023-11-15', '11:30:00', 'Ana Rodriguez'),
    ('5678901234', 400.00, '2023-12-03', '12:00:00', 'Mario Sanchez'),
    ('6789012345', 700.00, '2023-08-25', '08:15:00', 'Sofia Ramirez'),
    ('7890123456', 200.00, '2023-09-18', '09:45:00', 'Jorge Martinez'),
    ('8901234567', 900.00, '2023-10-10', '10:30:00', 'Laura Perez'),
    ('9012345678', 350.00, '2023-11-05', '11:00:00', 'Andres Hernandez'),
    ('0123456789', 450.00, '2023-12-20', '12:45:00', 'Maria Lopez');
	