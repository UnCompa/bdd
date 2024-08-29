-- Para videojuegos
-- Borrar tabla de videojuegos
drop table videojuegos
-- Crear tabla plataformas
create table videojuegos (
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuegos_codigo_pk primary key (codigo)
)

-- Crear tabla plataformas
create table plataformas (
id_plataforma int,
nombre_plataforma varchar(50) not null,
codigo_videojuego int,
constraint id_plataforma_pk primary key (id_plataforma)
)

select * from videojuegos
select * from plataformas
--Agregar restriccion unique
alter table plataformas 
add constraint unique_codigo_videojuego unique (codigo_videojuego)

alter table videojuegos
add constraint videojuego_plataforma_fk
foreign key (codigo)
references plataformas(codigo_videojuego)
-- Insertar 10 registros en plataformas
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
values
	(1,'Playstation', 1),
	(2,'Playstation', 2),
	(3,'Xbox box series x', 3),
	(4,'Nintendo', 4),
	(5,'Playstation', 5),
	(6,'Xbox box series x', 6),
	(7,'Xbox box series x', 7),
	(8,'Xbox box series x', 8),
	(9,'Nintendo', 9),
	(10,'Nintendo', 10),
-- Insertar 10 registros a videojuego
insert into videojuegos (codigo, nombre, descripcion, valoracion)
values
	(1,'Guerra de duendes','Una guerra de duendes con escopetas',7),
	(2,'Cubos y mas cubos','Explora un mundo hecho de cubos',8),
	(3,'Devil Man Cry','Juego de accion',9),
	(4,'God of war','Peleas epicas con dioses',10),
	(5, 'Knights Quest', 'Aventura épica de un caballero en busca de gloria', 9),
	(6, 'Galaxy Raiders', 'Explora y conquista la galaxia en este juego de estrategia', 8),
	(7, 'Mystic Realms', 'Sumérgete en un mundo mágico lleno de criaturas fantásticas', 1),
	(8, 'Racing Thunder', 'Carreras de alta velocidad con vehículos futuristas', 3),
	(9, 'Zombie Apocalypse', 'Sobrevive en un mundo infestado de zombies', 7),
	(10, 'Cyber Ninja', 'Conviértete en un ninja cibernético en un futuro distópico', 9)
	