
--Estudiantes
--1. Crear un select que traiga el nombre y la cedula de los estudiantes
--2. Crear un select que traiga los nombres de todos los estudiantes cuya cedula empiece con 17
--3.Crear un select que traiga los nombres completos de todos los estudiantes cuyo nombre empiece
--con A.----
	  select nombre,cedula from estudiantes
	
	  select nombre,cedula from estudiantes
	  where cedula
	  like '17%'
	  
	  
	  select nombre,apellido from estudiantes
	  where nombre
	  like 'A%'
	