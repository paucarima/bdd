SELECT p.codigo, e.nombre, e.apellido
FROM estudiantes e, profesores p
WHERE e.codigo_profesor = p.codigo
AND e.apellido LIKE '%n%';

----Franciso
SELECT e.*
FROM estudiantes e, profesores p
WHERE e.codigo_profesor = p.codigo
AND p.nombre = 'Francisco';