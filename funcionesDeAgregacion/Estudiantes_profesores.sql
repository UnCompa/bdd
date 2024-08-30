------> Estudiantes y profesores

-- Obtener la cantindad total de estudiantes asignados 
-- a cada profesor
select * from estudiantes
select * from profesores

select codigo_profesor, count(estudiantes) as total_estudiantes
from estudiantes
group by codigo_profesor

-- Obtener la edad pro0medio de los estudiantes
select 
round(avg(extract(year from current_date)-extract(year from fecha_nacimiento))) 
as edad_promedio
from estudiantes