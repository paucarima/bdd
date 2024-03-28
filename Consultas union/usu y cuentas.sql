----
SELECT c.numero_cuenta, u.nombre
FROM cuentas c,
     usuario u
WHERE c.cedula_propietario = u.cedula and 
c.saldo BETWEEN money(100) AND money(1000)

--Fecha
SELECT c.numero_cuenta,c.fecha_creacion,
		c.saldo, u.cedula
FROM cuentas  c, usuario u
WHERE c.cedula_propietario = u.cedula
AND c.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21'