----> Personas y prestamo
select * from persona
select * from prestamo
-- Obtener la suma total de los montos de prestamos para cada 

select cedula, sum(monto) as monto_total_prestamos 
from prestamo
group by cedula

-- Obtener la cantidad total de personas que tienen mas 
-- de un hijo

select count(persona) as total_personas from persona
where numeros_hijos > 1