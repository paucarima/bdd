
--Registros_entradas
--1. Seleccionar todas la cedulas de empleado y fecha y hora de los Registros de
--entrada
--2. Seleccionar los registros de entrada que estén entre 7:00 y 14:00
--3. Seleccionar los registros de entrada que tengan horas superiores a 8:00
	 
 	  
	  select cedula_empleado,fecha,hora from registros_entrada
	  
	  select * from registros_entrada
	  where hora
	  between '7:00' and '14:00'
	  
	  select * from registros_entrada
	  where hora > '8:00'
	 