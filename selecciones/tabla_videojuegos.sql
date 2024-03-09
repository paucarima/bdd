

--Videojuegos
--1. Seleccionar todos los videojuegos con un nombre que comience con "C".
--2. Seleccionar videojuegos con una valoración entre 9 y 10
--3. Seleccionar videojuegos con una descripcion null

	  
	  
	  select * from videojuegos 
	  where nombre like 'C%'
	  
	  select * from videojuegos 
	  where valoracion
	  between 9 and 10
	  
	  select * from videojuegos where descripcion is null