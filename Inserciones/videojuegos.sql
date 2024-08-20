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
    (12345, 'Spiderman game', 'Un juego de acción inspirada en la película de Spiderman', 5),
    (12346, 'The Witcher', 'Un RPG épico basado en la saga de Geralt de Rivia', 5),
    (12347, 'Minecraft', 'Un juego de construcción y aventuras en un mundo de bloques', 4),
    (12348, 'Fortnite', 'Un juego de battle royale con construcción y múltiples modos de juego', 4);
insert into videojuegos(codigo,nombre,valoracion)
values
	(12349, 'Plantas vs Zombies', 3),
    (12350, 'Cyberpunk 2077',3),
    (12351, 'FIFA 24',4);