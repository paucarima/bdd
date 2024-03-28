--Obtener la suma total de los montos de préstamos para
--cada persona.
SELECT p.cedula, SUM(pre.monto) AS monto_total_prestamos
FROM persona p, prestamo pre
WHERE p.cedula = pre.cedula
GROUP BY p.cedula
--Funcion de agregacion 2: Obtener la cantidad total de personas que tienen mas de
--un hijo.
SELECT COUNT(cedula) AS cantidad_hijo
FROM persona
WHERE numero_hijos > 1;

