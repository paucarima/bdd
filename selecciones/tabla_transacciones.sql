
--Transacciones
--1. Seleccionar todas las transacciones realizadas con un tipo D
--2. Seleccionar las transacciones con montos entre 200 y 2000
--3. Seleccionar el código, monto, tipo y fecha de las transacciones que tengan un
--fecha diferente de null
	  
	  
	  select * from transacciones 
	  where tipo like '%D%'
	  
	  select * from transacciones 
	  where monto
	  between '200' and '2000'
	  
	  select codigo,monto,tipo,fecha from transacciones 
	  where fecha is not null
	  
	  