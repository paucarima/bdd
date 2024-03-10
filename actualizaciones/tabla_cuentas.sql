--Cuentas
---1. Actualizar el saldo a 10 de las cuentas cuya cedula_propietario empiece por 17


	  
	 update cuentas set saldo='10€'
	 where cedula_propietario like '17%'
	
	  
	  select * from cuentas
	 