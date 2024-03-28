--Relación entre registros_entrada y empleado
--Función de agregación 1: Obtener la cantidad total de registros de entrada
--realizados por cada empleado.
SELECT codigo_empleado, COUNT(*) AS total_registros_entrada
FROM registros_entrada
GROUP BY codigo_empleado;

-- Obtener la fecha mínima y máxima de los registros de
--entrada.
SELECT MIN(fecha) AS fecha_minima, MAX(fecha) AS fecha_maxima
FROM registros_entrada;