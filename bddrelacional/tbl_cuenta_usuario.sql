drop table usuario
create table usuario(
	cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint cedula_pk primary key(cedula)
)

drop table cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint numero_cuenta_pk primary key(numero_cuenta)
)

alter table cuentas
add constraint usuario_cuentas_fk
foreign key (cedula_propietario)
references usuario(cedula)


INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('12345', 'Juan', 'Perez', 'Cuenta Corriente', 5000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('54321', 'Maria', 'Gonzalez', 'Cuenta de Ahorros', 3000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('98765', 'Pedro', 'Rodriguez', 'Cuenta Corriente', 7000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('45678', 'Ana', 'Lopez', 'Cuenta de Ahorros', 4000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('13579', 'Luis', 'Martinez', 'Cuenta Corriente', 6000.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('24680', 'Laura', 'Sanchez', 'Cuenta de Ahorros', 3500.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('11223', 'Carlos', 'Ramirez', 'Cuenta Corriente', 5500.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('33445', 'Diana', 'Gomez', 'Cuenta de Ahorros', 4500.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('55667', 'Mario', 'Hernandez', 'Cuenta Corriente', 6500.00);

INSERT INTO usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES ('77889', 'Sofia', 'Alvarez', 'Cuenta de Ahorros', 3200.00);
select*from usuario
---cuenta
INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00001', '12345', '2022-08-21', 100);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00002', '54321', '2022-09-15', 200);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00003', '98765', '2022-10-10', 300);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00004', '45678', '2023-01-05', 400);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00005', '13579', '2023-03-20', 500);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00006', '24680', '2023-04-25', 600);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00007', '11223', '2023-06-15', 700);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00008', '33445', '2023-08-10', 800);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00009', '55667', '2023-09-05', 900);

INSERT INTO cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
VALUES ('00010', '77889', '2023-09-21', 1000);

select *from cuentas
