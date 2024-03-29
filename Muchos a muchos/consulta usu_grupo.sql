
select u.nombre, u.apellido, g.nombre
from usuarios u, grupo g, usuario_grupo ug
where ug.gr_id=g.id
and ug.us_id=u.id

select nombre
from usuarios
where id in 
(SELECT us_id from usuario_grupo where gr_id=1)

--Función de agregación:
-- Debes seleccionar el nombre del grupo y contar la cantidad de "us_id" en la tabla
--"usuario _grupo".
-- Utiliza las tablas "grupo" y "usuario _grupo".
-- Realiza una unión entre las tablas "grupo" y "usuario _grupo" utilizando la condición
--"grupo.id = usuario_grupo.gr_id".
-- Utiliza la función de agregación "COUNT(usuario_grupo.us_id)" para contar la
--cantidad de usuarios en cada grupo.
-- Utiliza la cláusula "GROUP BY grupo.nombre" para agrupar los resultados por el
--nombre del grupo.

SELECT g.nombre AS nombre_grupo, COUNT(ug.us_id) AS cantidad_usu
FROM grupo g, usuario_grupo ug
WHERE g.id = ug.gr_id
GROUP BY g.nombre

--Consulta 2:
--Debes seleccionar los nombres de los usuarios y los nombres de los grupos.
-- Utiliza las tablas "usuarios", "grupo" y "usuario _grupo".
-- Realiza una unión entre las tablas "usuarios" y "usuario _grupo" utilizando la
--condición "usuarios.id = usuario_grupo.us_id".
-- Realiza una unión entre las tablas "grupo" y "usuario _grupo" utilizando la condición
--"grupo.id = usuario_grupo.gr_id".
-- Utiliza la condición "grupo.nombre LIKE '%intensivo%" para filtrar los grupos que
--contengan la palabra "intensivo" en su nombre.

SELECT u.nombre AS nombre_usuario, g.nombre AS nombre_grupo
FROM usuarios u
JOIN usuario_grupo ug ON u.id = ug.us_id
JOIN grupo g ON g.id = ug.gr_id
WHERE g.nombre LIKE '%intensivo%'

select nombre
from usuarios
where id in 
(SELECT us_id from usuario_grupo where gr_id=2)

--Función de agregación 2 :
--Debes seleccionar el nombre del grupo y obtener el máximo valor de "us_id" en la
--tabla "usuario _grupo".
--Utiliza las tablas "grupo" y "usuario _grupo".
--Realiza una unión entre las tablas "grupo" y "usuario _grupo" utilizando la condición
--grupo.id = usuario_grupo.gr_id*.
--Utiliza la función de agregación "MAX(usuario _grupo.us_id)* para obtener el máximo
--valor de usuarios en cada grupo y también realizalo con la función de agregación MIN.
--Utiliza la cláusula "GROUP BY grupo nombre" para agrupar los resultados por el
--nombre del grupo.

SELECT g.nombre AS nombre_grupo, 
       MAX(ug.us_id) AS max_usu, 
       MIN(ug.us_id) AS min_usu
FROM grupo g, usuario_grupo ug
WHERE g.id = ug.gr_id
GROUP BY g.nombre

--Consulta 3:
--Debes seleccionar los nombres de los usuarios y las fechas de creación de los grupos.
--Utiliza las tablas "usuarios", "grupo" y "usuario _grupo".
--Realiza una unión entre las tablas "usuarios" y "usuario _grupo" utilizando la
--condición "usuarios.id = usuario_grupo.us_id".
--Realiza una unión entre las tablas "grupo" y "usuario _grupo" utilizando la condición
--grupo id = usuario _grupo gr_id*.
--Utiliza la condición "grupo fecha_creacion entre 2020-03-08* y *2022-03-08 para
--filtrar los grupos creados entre esas fechas.

SELECT u.nombre AS nom_usu, g.fecha_creacion
FROM usuarios u, usuario_grupo ug, grupo g
WHERE u.id = ug.us_id
AND g.id = ug.gr_id
AND g.fecha_creacion BETWEEN '2020-03-08' AND '2022-03-08'

select nombre
from usuarios
where id in 
(SELECT us_id from usuario_grupo where gr_id=3)

--Función de agregación 3:
--Debes seleccionar la descripción del grupo y contar la cantidad de "us_id" en la tabla
--"usuario_grupo".
--Utiliza las tablas "grupo" y "usuario _grupo".
--Realiza una unión entre las tablas "grupo" y "usuario_grupo" utilizando la condición
--"grupo.id = usuario_grupo.gr_id".
--Utiliza la función de agregación "COUNT(usuario _grupo.us_id)" para contar la
--cantidad de usuarios en cada grupo.
--Utiliza la condición "grupo descripcion LIKE "%matutino%'" para filtrar los grupos que
--contengan la palabra "matutino" en su descripción.
--Utiliza la cláusula "GROUP BY grupo.descripcion" para agrupar los resultados por la
--descripción del grupo.

SELECT g.descripcion AS des_grupo, COUNT(ug.us_id) AS cantidad_usuarios
FROM grupo g, usuario_grupo ug
WHERE g.id = ug.gr_id
AND g.descripcion LIKE '%matutino%'
GROUP BY g.descripcion

