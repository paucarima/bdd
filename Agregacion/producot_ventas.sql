--Relación entre Productos y Ventas
--Función de agregación 1: Obtener el máximo precio de todos los productos
SELECT MAX(precio) AS maximo_precio
FROM productos;
--Función de agregación 2: Obtener la suma total de la cantidad de productos
--vendidos.

SELECT SUM(cantidad) AS cantidad_total_vendidos
FROM ventas

