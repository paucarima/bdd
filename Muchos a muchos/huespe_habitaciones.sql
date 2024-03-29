CREATE TABLE habitaciones (
    habitacion_numero INT,
    precio_por_noche DECIMAL NOT NULL,
    piso INT NOT NULL,
    max_personas INT,
    CONSTRAINT habitacion_pk PRIMARY KEY(habitacion_numero)
);
CREATE TABLE huespedes (
    id INT,
    nombres VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    telefono CHAR(10),
    correo VARCHAR(45),
    direccion VARCHAR(45),
    ciudad VARCHAR(45),
    pais VARCHAR(45),
    CONSTRAINT huesped_pk PRIMARY KEY(id)
);
CREATE TABLE reservas (
    inicio_fecha DATE,
    fin_fecha DATE,
    habitacion_numero INT,
    huesped_id INT,
    PRIMARY KEY (habitacion_numero, huesped_id),
    FOREIGN KEY (habitacion_numero) REFERENCES habitaciones(habitacion_numero),
    FOREIGN KEY (huesped_id) REFERENCES huespedes(id)
);