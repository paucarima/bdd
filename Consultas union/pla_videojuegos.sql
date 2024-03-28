SELECT v.nombre, v.descripcion, v.valoracion, p.nombre_plataforma,v.codigov
FROM videojuegos v, plataformas p
WHERE (v.descripcion LIKE '%Guerra%' AND v.valoracion > 7)
   OR ((v.nombre LIKE 'C%' OR v.nombre LIKE 'D%') AND v.valoracion > 8)
   AND v.codigov = p.codigo_videojuego;
   
   ---------Goof of war
   
SELECT p.*
FROM plataformas p, videojuegos v
WHERE v.nombre = 'God of War'
AND v.codigov = p.codigo_videojuego;