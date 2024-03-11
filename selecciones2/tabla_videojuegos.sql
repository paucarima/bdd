--Videojuegos
--1. Listar los registros de videojuegos con un nombre que contengan la letra "C" o una
--valoración de 7.
--2. Seleccionar videojuegos con un código entre 3 y 7 o una valoración de 7
--3. Seleccionar videojuegos de guerra, con una valoración mayor a 7 y que en su nombre
--empiezan con C o los videojuegos con una valoración mayor a 8 y que en su nombre
--empiezen con D

	  select * from videojuegos 
	  where nombre like '%c%' or valoracion=7
	  
	  select * from videojuegos 
	  where codigo
	  between 3 and 7 or valoracion=7
	  
	  select * from videojuegos 
	  where nombre like 'C%' and valoracion>7
	  	or  nombre like 'D%' and valoracion>8