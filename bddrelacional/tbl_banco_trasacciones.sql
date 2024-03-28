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

create table banco(
	codigo_banco int not null,
	codigo_transaccion int not null,
	detalle varchar(100),
	constraint codigo_banco_pk primary key(codigo_banco)
)

alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES 
    (1, '22001', 500.00, 'C', '2023-08-10', '08:30:00'),
    (2, '22002', 800.00, 'D', '2023-09-05', '09:15:00'),
    (3, '22003', 300.00, 'C', '2023-10-20', '10:45:00'),
    (4, '22004', 600.00, 'C', '2023-11-15', '11:30:00'),
    (5, '22005', 400.00, 'D', '2023-12-03', '12:00:00'),
    (6, '22006', 700.00, 'C', '2023-08-25', '08:15:00'),
    (7, '22007', 200.00, 'D', '2023-09-18', '09:45:00'),
    (8, '22008', 900.00, 'C', '2023-10-10', '10:30:00'),
    (9, '22009', 350.00, 'D', '2023-11-05', '11:00:00'),
    (10, '22010', 450.00, 'C', '2023-12-20', '12:45:00');

-------------------------
INSERT INTO banco (codigo_banco, codigo_transaccion, detalle)
VALUES 
    (1, 1, 'Depósito en efectivo'),
    (2, 2, 'Retiro en cajero automático'),
    (3, 3, 'Transferencia bancaria'),
    (4, 4, 'Depósito en efectivo'),
    (5, 5, 'Pago de factura'),
    (6, 6, 'Depósito en efectivo'),
    (7, 7, 'Retiro en cajero automático'),
    (8, 8, 'Transferencia bancaria'),
    (9, 9, 'Pago de préstamo'),
    (10, 10, 'Depósito en efectivo');
