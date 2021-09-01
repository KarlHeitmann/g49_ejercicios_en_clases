
DROP TABLE IF EXISTS reparto;
DROP TABLE IF EXISTS peliculas;

CREATE TABLE peliculas(
  id SERIAL,
  titulo VARCHAR(60),
  año INT,
  director VARCHAR(30),
  primary key (id)
);

CREATE TABLE reparto(
  id_pelicula int,
  nombre VARCHAR(30),
);
