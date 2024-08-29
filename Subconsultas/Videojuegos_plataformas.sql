--- Videojuegos y Plataformas
-- Obtener el codigo, nombre, descripcion,valoracion,
-- id_plataforma, nombre_plataforma, codigo_videojuego
select * from videojuegos
select * from plataformas
select * from videojuegos as v, plataformas as pl
where (descripcion like '%guerra%' and valoracion > 7) or
(nombre like 'C%' and valoracion > 8) and nombre like '%D'

-- Obtener todos los datos de plataformas donde el codigo del
-- videojuego corresponde al codigo de 'God of war'

select id_plataforma, nombre_plataforma, codigo_videojuego from plataformas as pl, videojuegos as v
where pl.codigo_videojuego = 2 and v.codigo = 2