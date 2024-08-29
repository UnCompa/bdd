--- Registro entradas y empleado
-- Obtener la cedula del empleado, fecha y el nombre 
-- de los empleados cuyos registros de entrada tienen 
-- fecha entre '2023-08-01' y '2023-08-31' o cuya cedula del
-- empleado contiene '17%' y la hora de entrada este 
-- entre '08:00' y '12:00' o cuya fecha esta '2023-10-06'
-- y '2023-10-20', la cedula del empleado contiene '08%'
-- y la hora de entrada entre '09:00' y '13:00'
select * from registros_entrada
select * from empleado
select r.cedula_empleado, r.fecha, e.nombre 
from empleado as e, registros_entrada as r
where r.fecha between '2023-08-01' and '2023-08-31' 
or r.cedula_empleado like '17%' 
and r.hora between '08:00' and '12:00'
or r.fecha between '2023-10-06' and '2023-10-20'
and r.cedula_empleado like '08%'
and r.hora between '09:00' and '13:00'
and e.codigo_empleado = r.codigo_empleado

-- Obtener todos los datos de empleado donde el codigo 
-- de registro del empleado corresponde al codigo de registro
-- entrada de cudula '2201'
select r.codigo_registro, e.nombre 
from empleado as e, registros_entrada as r
where e.codigo_empleado = 2201 
and r.codigo_empleado = e.codigo_empleado