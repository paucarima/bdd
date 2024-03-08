drop table videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint codigov_pk primary key(codigo)
)

insert into videojuegos 
values(001,'The evil zone','juego canibal',10),
	  (002,'Dota 2','Dire vs Radiant',9),
	  (003,'League of Legends','multijugador arena',8),
	  (004,'Plantas vs Zombis','asesinar zombies con plantas',9),
	  (005,'Naruto Shippuden Ultimate  Ninja','peleas ninjas',8);
	  
	  
	  select * from videojuegos 
	  
insert into videojuegos (codigo,nombre,valoracion) 
values(006,'Alice Madness Returns',10),
	  (007,'Attack on titans',10),
	  (008,'Batman Ackerm',8);

	  
	  
	  select * from videojuegos 