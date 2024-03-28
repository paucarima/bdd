drop table videojuegos
create table videojuegos(
	codigov int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint codigov_pk primary key(codigov)
)
drop table plataformas
create table plataformas(
	id_plataforma int not null,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int not null,
	constraint id_plataforma_pk primary key(id_plataforma)
)

alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigov)

------------------------------------
INSERT INTO videojuegos (codigov, nombre, descripcion, valoracion)
VALUES (1, 'Call of Duty: Modern Warfare', 'Juego de guerra en primera persona', 9),
       (2, 'God of War', 'Aventura épica de acción y combate', 10),
       (3, 'Counter-Strike: Global Offensive', 'Juego de disparos multijugador', 8),
       (4, 'Doom Eternal', 'Disfruta del infierno en la tierra', 9),
       (5, 'Civilization VI', 'Construye tu imperio y guía tu civilización hacia la grandeza', 9),
       (6, 'Battlefield V', 'Experimenta la Segunda Guerra Mundial como nunca antes', 8),
       (7, 'Cities: Skylines', 'Construye y gestiona una ciudad desde cero', 9),
       (8, 'Dark Souls III', 'Desafía a los enemigos en un mundo oscuro y lleno de peligros', 9),
       (9, 'FIFA 22', 'El simulador de fútbol más realista hasta la fecha', 8),
       (10, 'Cyberpunk 2077', 'Explora Night City en este RPG de mundo abierto', 7);

-- --------------------------------
INSERT INTO plataformas (id_plataforma, nombre_plataforma, codigo_videojuego)
VALUES (1, 'PlayStation 4', 2),
       (2, 'Xbox One', 1),
       (3, 'PC', 3),
       (4, 'PlayStation 5', 2),
       (5, 'Nintendo Switch', 5),
       (6, 'Xbox Series X', 6),
       (7, 'PC', 8),
       (8, 'PlayStation 4', 9),
       (9, 'Xbox One', 10),
       (10, 'PC', 7);