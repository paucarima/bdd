select * from compras
select * from clientes

select com.cedula_propietario,sum (cast(money(com.monto) as numeric))
from compras com
GROUP by com.cedula_propietario

select com.fecha_compra,count(com.id_compra)
from compras com, clientes c
where com.cedula_propietario=c.cedula_cli
and Date(com.fecha_compra)='2023-01-15'
Group by com.fecha_compra;



