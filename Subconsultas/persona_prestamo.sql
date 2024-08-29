--- Persona y prestamo
-- obtener la cantidad ahorrada, el monto del pretamo y el 
---garante de las personas cuyo prestamo esta entre 100 y 100

select pe.cantidad_ahorrada, pr.monto, pr.garante 
from persona as pe, prestamo as pr
where pr.monto between money(100) and money(1000)

-- Obtener todos los datos de la persona cuyab cedula sea igual 
-- a la cedula de nombre
select * from persona
where nombre = 'Sean'
