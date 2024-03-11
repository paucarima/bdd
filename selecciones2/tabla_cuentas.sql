--Cuentas
--1. Seleccionar el número de cuenta y saldo de todas las cuentas con saldo mayor a 100 y
--menor a 1000
--2. Seleccionar las cuentas entre el día de hoy hasta hace 1 año
--Seleccionar las cuentas con saldo 0 o con una cedula de propietario que termine con 2.
 
	  
	  select numero_cuenta, saldo from cuentas
	  where saldo>'100€' and saldo<'1000€'
	  
	  select * from cuentas
	  where fecha_creacion 
	  between '01/01/2023' and '09/03/2024'
	  
	  select cedula_propietario,saldo from cuentas
	  where saldo='0€' or cedula_propietario like '%2'                