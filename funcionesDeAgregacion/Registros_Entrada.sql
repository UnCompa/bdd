-------> Registros_entradas y empleado

--Obtener la cantidad total de registros de entrada
-- realizados por cada empleado

select cedula_empleado,
COUNT(registros_entrada) 
as total_registros_entrada
from registros_entrada
group by cedula_empleado

-- Obtener la fecha minima y maxima de los registros de entrada

select MIN(fecha) as fecha_minima, MAX(fecha) as fecha_maxima
from registros_entrada
