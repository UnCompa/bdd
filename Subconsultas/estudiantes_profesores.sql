--- EStudiantes y profesores
-- Obtener el codigo de profesor con todos los nombres 
-- y apellidos de los estudiantes cuyo apellido contiene 
-- la letra 'n'

select pr.codigo, e.nombre, e.apellido from estudiantes as e, profesores as pr
where e.apellido like '%n%'

-- Obtener todos los estudiantes cuyo codigo de profesor 
-- corresponde al nombre de 'Francisco'

select e.cedula, e.nombre, e.apellido, e.email, e.fecha_nacimiento, e.codigo_profesor 
from estudiantes as e, profesores as pr
where e.codigo_profesor = 1
