SELECT t.*, b.*
FROM transacciones t, banco b
WHERE t.tipo = 'C'
AND t.numero_cuenta BETWEEN '22001' AND '22004';

----codigo 1

SELECT t.*
FROM transacciones t, banco b
WHERE t.codigo = b.codigo_transaccion
AND b.codigo_banco = 1;