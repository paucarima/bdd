SELECT h.habitacion_numero, hu.nombres, hu.apellidos
FROM habitaciones h, reservas r, huespedes hu
WHERE h.habitacion_numero = r.habitacion_numero
AND hu.id = r.huesped_id

SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion_numero = 2)

--Función de agregación:
--Debes seleccionar el número de habitación y contar la cantidad de "'huesped id" en
--la tabla "reservas".
--Utiliza las tablas "habitaciones" y "reservas".
--Realiza una unión entre las tablas "habitaciones" y "reservas" utilizando la condición
--"habitaciones habitacion_numero = reservas habitacion".
--Utiliza la función de agregación "COUNT(reservas.huesped_id)" para contar la
--cantidad de huéspedes en cada habitación.
--Utiliza la cláusula "GROUP BY habitaciones habitacion_numero" para agrupar los
--resultados por el número de habitación.

SELECT h.habitacion_numero, COUNT(r.huesped_id) AS cantidad_huespedes
FROM habitaciones h, reservas r
WHERE h.habitacion_numero = r.habitacion_numero
GROUP BY h.habitacion_numero

--Consulta 2:
--Debes seleccionar el número de habitación, el piso, los nombres y apellidos de los
--huéspedes.
--Utiliza las tablas "habitaciones", "huespedes" y "reservas".
--Utiliza la condición "habitaciones piso = 4" para filtrar las habitaciones que estén en
--el piso 4.
--Realiza una unión entre las tablas "habitaciones" y "reservas" utilizando la condición
--habitaciones habitacion numero = reservas habitacion".
--Realiza una unión entre las tablas "'huespedes" y "reservas" utilizando la condición
--"huespedes.id = reservas.huesped_id".

SELECT h.habitacion_numero, h.piso, hu.nombres, hu.apellidos
FROM habitaciones h, reservas r, huespedes hu
WHERE h.piso = 4
AND h.habitacion_numero = r.habitacion_numero
AND hu.id = r.huesped_id

SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion_numero = 3)

--Función de agregación 2:
--Debes seleccionar el número de habitación y obtener el promedio de "huesped_id"
--en la tabla "reservas".
--Utiliza las tablas "habitaciones" y "reservas".
--Realiza una unión entre las tablas "habitaciones" y "reservas" utilizando la condición
--"'habitaciones. habitacion_numero = reservas.habitacion".
--Utiliza la función de agregación "AVG(reservas.huesped_id)" para obtener el
--promedio de huéspedes en cada habitación.
--Utiliza la cláusula "GROUP BY habitaciones habitacion _numero" para agrupar los
--resultados por el número de habitación.

SELECT h.habitacion_numero, AVG(r.huesped_id) AS promedio_huespedes
FROM habitaciones h, reservas r
WHERE h.habitacion_numero = r.habitacion_numero
GROUP BY h.habitacion_numero;
--Consulta 3:
--Debes seleccionar el número de habitación, los nombres y apellidos de los
--huéspedes.
--Utiliza las tablas "habitaciones", "huespedes" y "reservas".
--Realiza una unión entre las tablas "habitaciones" y "reservas" utilizando la condición
--"habitaciones habitacion_numero = reservas.habitacion".
--Realiza una unión entre las tablas "huespedes" y "reservas" utilizando la condición
--"huespedes.id = reservas.huesped_id".

SELECT h.habitacion_numero, hu.nombres, hu.apellidos
FROM habitaciones h, reservas r, huespedes hu
WHERE h.habitacion_numero = r.habitacion_numero
AND hu.id = r.huesped_id;

SELECT nombres, apellidos
FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion_numero = 4)


--Función de agregación 3:
--Debes seleccionar el número de habitación y obtener la suma de "precio _por_noche"|
--en la tabla "habitaciones".
--Utiliza las tablas "habitaciones" y "reservas".
--Realiza una unión entre las tablas "habitaciones" y "reservas" utilizando la condición
--"habitaciones habitacion_numero = reservas.habitacion".
--Utiliza la función de agregación "SUM(habitaciones precio_por_noche)* para obtener
--el total recaudado por habitación.
--Utiliza la cláusula "GROUP BY habitaciones habitacion_numero" para agrupar los
--resultados por el número de habitación.
SELECT h.habitacion_numero, SUM(h.precio_por_noche) AS total_recaudado
FROM habitaciones h, reservas r
WHERE h.habitacion_numero = r.habitacion_numero
GROUP BY h.habitacion_numero

