--Estudiantes
--1. Seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen con M o
--si su apellido termina en Z
--2. Crear un select que traiga los nombres de todos los estudiantes que tenga un número
--32 y empiece con 18 en alguna parte de su cedula.
--3. Crear un select que traiga los nombres completos de todos los estudiantes cuya cedula
--termine en 06 o empiece con 17	 

	  select nombre,apellido from estudiantes
	  where nombre like 'M%' or apellido like '%z'
	
	  select nombre,cedula from estudiantes
	  where cedula
	  like '%32%' or cedula like '18%'
	  
	  
	  select nombre,apellido,cedula from estudiantes
	  where cedula
	  like '06%' or cedula like '17%'
	