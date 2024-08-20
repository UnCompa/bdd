-- script 5
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint codigo_key primary key(codigo)
);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values
    (09384, 'Spiderman', 'Un juego de acción inspirada en la película de Spiderman 2', 9),
    (12346, 'The Witcher', 'Un RPG épico basado en la saga de Geralt de Rivia', 5),
    (12347, 'Minecraft', 'Un juego de construcción y aventuras en un mundo de bloques', 4),
    (12348, 'Fortnite', 'Un juego de battle royale con construcción y múltiples modos de juego', 4);
insert into videojuegos(codigo,nombre,valoracion)
values
	(12349, 'Plantas vs Zombies', 3),
    (12350, 'Cyberpunk 2077',3),
    (12351, 'FIFA 24',4);

-- Que empiencen con C
select 	* from videojuegos
where nombre like 'C%';

-- Que tengan valoracion de 9 y 10
select 	* from videojuegos
where valoracion between 9 and 10;

-- Que tenga una descripcion en null
select 	* from videojuegos
where descripcion is null;

-- Cambiar descripcion donde las valoraciones sean mayor a 9
update videojuegos set descripcion = 'Mejor puntuado'
where valoracion >= 9;

-- Eliminar videojuegos donde la valoracion sea menos de 8
delete from videojuegos
where valoracion < 7

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(2, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(3, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(4, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(5, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(6, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(7, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(8, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(9, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(10, 'Dragon Ball', 'juego de baile', 8);

-- Mas consultas
select * from videojuegos
where nombre like '%C%' or valoracion = 7

select * from videojuegos
where codigo between 3 and 7 or valoracion = 7 

select * from videojuegos
where valoracion > 7 and nombre like 'C%'
or valoracion > 8 and nombre like 'D%'