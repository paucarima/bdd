CREATE TABLE usuarios (
    id int,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE,
	constraint idu_pk primary key(id)
)

CREATE TABLE grupo (
    id INT,
    nombre VARCHAR(25) NOT NULL,
    descripcion VARCHAR(75),
    fecha_creacion DATE,
    CONSTRAINT idg_pk PRIMARY KEY(id)
)

CREATE TABLE usuario_grupo (
    us_id int not null,
    gr_id int not null,
    CONSTRAINT us_fk FOREIGN KEY (us_id) REFERENCES usuarios(id),
    CONSTRAINT gr_fk FOREIGN KEY (gr_id) REFERENCES grupo(id),
	CONSTRAINT usuario_grupo_pk PRIMARY KEY(us_id, gr_id)
)