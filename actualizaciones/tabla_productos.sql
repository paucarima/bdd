	  ---Productos
---1. Actualizar el stock a 0 en todos los productos donde la descripción sea null.

	  
	  update productos set stock=0  
	  where descripcion is null
	  
	  select * from productos
