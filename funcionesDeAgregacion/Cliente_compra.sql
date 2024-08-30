--- Cliente y Compra
-- Consulta para ambas tablas

select * from clientes
select * from compras

-- Obtener el monto totoal de compras realizadas 
-- por cada cliente

select cedula, SUM(monto) as monto_total_compras
from compras
group by cedula

-- Obtener la cantidad total de compras realizadas
-- en una fecha especifica

select fecha_compra, COUNT(compras) as total_compras 
from compras
where fecha_compra = '2024-08-26'
group by fecha_compra

