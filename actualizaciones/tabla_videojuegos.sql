--Videojuegos
--1. Actualiza todas las descripciones de los videojuegos cuya valoración sea mayor que 9
--por "Mejor puntuado"


	  update videojuegos set descripcion='Mejor puntuado'
	  where valoracion=9
	  
	  select * from videojuegos 
	