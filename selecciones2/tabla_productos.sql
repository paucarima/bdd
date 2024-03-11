--Productos
--1. Seleccionar todos los productos con stock igual a 10 y precio menor a 10
--2. Seleccionar los nombre y stocks de todos los productos que tengan un m en su nombre
--o tenga un espacio en blanco en su descripción
--3. Seleccionar el nombre de todos los productos que tenga null el campo de descripción o
--tengan un stock de 0

	  select * from productos where stock=10 and precio <'10,00 €'
	  
	  select nombre, stock from productos where nombre like '%m%' or descripcion like '% %' 
	  
	  select nombre from productos where descripcion is null or stock=0
	
	  