--Transacciones
--1. Actualiza Tipo de todos registros que tengan una transacción mayor a 100 y menor que
--500, que se hayan llevado a cabo el mes de septiembre con horas entre 14:00 y 20:00,
--por "T"
	  
	  update transacciones set tipo='T'
	  where monto>'100 €' and monto<'500 €'
	  and extract(month from fecha)=9
	  
	  select * from transacciones 
	  
	  
	  