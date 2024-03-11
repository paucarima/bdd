--Registros_entradas
--1. Seleccione los registros del mes de septiembre, o realizados por las cédulas de
--pichincha (que inicien con 17)
--2.Seleccione los registros del mes de agosto, realizados por las cédulas de pichincha
--(que inicien con 17) y realizados entre las 08:00 a 12:00.
--3.Seleccione los registros del mes de agosto, realizados por las cédulas de pichincha
--(que inicien con 17) y realizados entre las 08:00 a 12:00 o los registros del mes de
--septiembre, realizadas por las cédulas de Esmeraldas (que inicien con 08) y realizadas
--entre las 09:00 a 13:00.

	  select * from registros_entrada
	  where extract(month from fecha)=9 or cedula_empleado like '17%'
	  
	  select * from registros_entrada
	  where extract(month from fecha)=8 and (cedula_empleado like '17%' and hora between '8:00' and '12:00' )
	 
	  select * from registros_entrada
	  where (extract(month from fecha)=8 and (cedula_empleado like '17%' and hora between '8:00' and '12:00' ))
	  	 or (extract(month from fecha)=9 and (cedula_empleado like '08%' and hora between '9:00' and '13:00' ))
	  
	