----> Transacciones y Banco

-- Obtener la cantidad total de transacciones de tipo
-- C (Credito)

select COUNT(transacciones) as total_transacciones_credito
from transacciones
WHERE tipo = 'C'

-- Obtener el promedio de montos de transacciones para cada
-- numero de cuenta

select numero_cuenta, round(avg(cast(monto as decimal)),2) 
as monto_promedio
from transacciones
group by numero_cuenta
