--- Cuentas y Usuarios
-- Consulta para ambas tablas

select * from usuario
select * from cuentas
-- Promedio cuentas
select cast(avg(cast(saldo as numeric)) as money)
as saldo_promedio 
from cuentas 
where cedula_propietario = '11112'

-- Cantidad de tipos de cuentas
select tipo_cuenta,  count(tipo_cuenta) as total_cuentas
from usuario
group by tipo_cuenta