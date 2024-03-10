
--Registros_entradas
--1. Actualiza todas las cédulas de registro_entrada por "082345679" para todos los
--registros del mes de agosto.
	  
	  update registros_entrada set cedula_empleado='082345679'
	  where extract(month from fecha)=8; 
	  
	  select * from registros_entrada
	  
	 
	 