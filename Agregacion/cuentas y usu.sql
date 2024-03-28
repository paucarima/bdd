select * from cuentas
select * from usuario 

select avg (cast(money(c.saldo) as numeric))
from cuentas c, usuario u 
where c.cedula_propietario=u.cedula
and c.cedula_propietario='12345'

---------


select u.tipo_cuenta, count(u.tipo_cuenta)
from usuario u 
group by tipo_cuenta
