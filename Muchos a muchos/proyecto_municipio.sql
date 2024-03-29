CREATE TABLE ciudad (
    id INT,
    nombre VARCHAR(45) NOT NULL,
    CONSTRAINT ciudad_pk PRIMARY KEY(id)
);

CREATE TABLE municipio (
    id INT,
    nombre VARCHAR(45),
    ciudad_id INT,
    CONSTRAINT municipio_pk PRIMARY KEY(id),
    CONSTRAINT ciudad_fk FOREIGN KEY (ciudad_id) REFERENCES ciudad(id)
);

CREATE TABLE proyecto (
    id INT,
    proyecto VARCHAR(50) NOT NULL,
    monto MONEY NOT NULL,
    fecha_inicio DATE,
    fecha_entrega DATE,
    CONSTRAINT proyecto_pk PRIMARY KEY(id)
);
drop table proyecto_municipio
CREATE TABLE proyecto_municipio (
	proyecto_id INT NOT NULL,
    municipio_id INT NOT NULL,
    CONSTRAINT proyecto_municipio_pk PRIMARY KEY(municipio_id, proyecto_id),
    CONSTRAINT municipio_fk FOREIGN KEY (municipio_id) REFERENCES municipio(id),
    CONSTRAINT proyecto_fk FOREIGN KEY (proyecto_id) REFERENCES proyecto(id)
);