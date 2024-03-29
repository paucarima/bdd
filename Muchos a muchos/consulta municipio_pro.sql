--Relación muchos a muchos entre municipio y proyectos:
--Consulta:
--Debes seleccionar el nombre del municipio y el nombre del proyecto.
--Utiliza las tablas "municipio", "proyecto" y "proyecto_municipio".
--Realiza una unión entre las tablas "municipio" y "proyecto_municipio" utilizando la
--condición "municipio.id = proyecto_municipio.municipio_id".
--Realiza una unión entre las tablas "proyecto" y "proyecto _municipio" utilizando la
--condición "proyecto. id = proyecto_municipio proyecto_id"..

SELECT m.nombre AS nom_municipio, p.proyecto AS nom_proyecto
FROM municipio m, proyecto_municipio pm, proyecto p
WHERE m.id = pm.municipio_id
AND p.id = pm.proyecto_id

SELECT proyecto
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 1)

SELECT m.nombre AS nom_municipio, COUNT(pm.proyecto_id) AS can_proyectos
FROM municipio m, proyecto_municipio pm
WHERE m.id = pm.municipio_id
GROUP BY m.nombre

SELECT m.nombre AS nombre_municipio, p.proyecto
FROM municipio m, proyecto p, proyecto_municipio pm
WHERE m.id = pm.municipio_id
AND p.id = pm.proyecto_id
AND m.nombre LIKE '%GAD%'

--Función de agregación 2:
SELECT m.nombre AS nombre_municipio, MIN(pm.proyecto_id) AS min_proyecto_id
FROM municipio m, proyecto_municipio pm
WHERE m.id = pm.municipio_id
GROUP BY m.nombre
--Consulta 3:
SELECT m.nombre AS nombre_municipio, c.nombre AS nombre_ciudad
FROM municipio m, ciudad c
WHERE m.id = c.id
--Subconsulta 3:
SELECT proyecto
FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio 
			 WHERE municipio_id = 3)
			 
--Función de agregación 3:
SELECT m.nombre AS nombre_municipio, MAX(pm.proyecto_id) AS max_proyecto_id
FROM municipio m, proyecto_municipio pm
WHERE m.id = pm.municipio_id
GROUP BY m.nombre;





