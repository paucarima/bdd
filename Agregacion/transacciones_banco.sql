--Relación entre Transacciones y Banco
--Obtener la cantidad total de transacciones de tipo 'C
SELECT COUNT(*) AS total_transacciones_credito
FROM transacciones
WHERE tipo = 'C';
--Obtener el promedio de montos de transacciones para
--cada número de cuenta.
SELECT numero_cuenta, ROUND(AVG(CAST(monto AS decimal)), 2) AS monto_promedio
FROM transacciones
GROUP BY numero_cuenta