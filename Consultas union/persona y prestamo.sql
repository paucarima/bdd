SELECT p.cantidad_Ahorrada, pr.monto, pr.garante
FROM persona p, prestamo pr
WHERE p.cedula = pr.cedula
AND pr.monto BETWEEN money(100) AND money(1000);

--Sean
SELECT * FROM persona
WHERE nombre='Sean' 

