------> Videojuegos y Plataformas

-- Obtener la cantidad total de plataformas disponibles
-- para cada videojuego

select codigo_videojuego, count(plataformas)
as total_plataformas
from plataformas
group by codigo_videojuego

-- Obtener la valoracion promedio de todos los videojuegos

select ROUND(AVG(valoracion), 2) 
as valoracion_promedio
from videojuegos
