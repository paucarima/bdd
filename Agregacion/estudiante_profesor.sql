SELECT p.nombre, COUNT(e.cedula) as cantidad_es
FROM profesores p, estudiantes e
WHERE p.codigo = e.codigo_profesor
GROUP BY p.nombre;

SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
FROM estudiantes;