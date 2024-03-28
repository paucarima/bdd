SELECT nombre, apellido
FROM clientes c, compras co
WHERE c.cedula_cli = co.cedula_propietario
AND c.cedula_cli LIKE '%7%';

----Monica
SELECT *
FROM clientes c
WHERE c.nombre = 'Monica';