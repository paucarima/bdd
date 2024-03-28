SELECT re.cedula_empleado, re.fecha, e.nombre
FROM empleado e, registros_entrada re
WHERE ((re.fecha BETWEEN '2023-08-01' AND '2023-08-31' AND re.hora BETWEEN '08:00:00' AND '12:00:00')
   OR (re.cedula_empleado LIKE '17%' AND re.hora BETWEEN '08:00:00' AND '12:00:00')
   OR (re.fecha BETWEEN '2023-10-06' AND '2023-10-20' AND re.cedula_empleado LIKE '08%' AND re.hora BETWEEN '09:00:00' AND '13:00:00'))
   AND e.codigo_empleado = re.codigo_empleado
   
   
   select * from empleado
   select * from registros_entrada
   
   ----
SELECT re.codigo_registro, e.nombre
FROM registros_entrada re, empleado e
WHERE re.codigo_empleado = '2201'
AND re.codigo_empleado = e.codigo_empleado
   
   