DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles(
  id SERIAL,
  PRIMARY KEY (id),
  nombre VARCHAR
);

CREATE TABLE users(
  id SERIAL,
  PRIMARY KEY (id),
  nombre VARCHAR,
  role_id INT,
  -- role_id INT NOT NULL,
  FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT INTO roles(nombre) VALUES ('estudiante');
INSERT INTO roles(nombre) VALUES ('ayudante');
INSERT INTO roles(nombre) VALUES ('profesor');
INSERT INTO roles(nombre) VALUES ('administracion');

INSERT INTO users(nombre, role_id) VALUES ('Braulio Oyarzún', 1);
INSERT INTO users(nombre, role_id) VALUES ('Cristian Vera', 1);
INSERT INTO users(nombre, role_id) VALUES ('David Chacon', 1);
INSERT INTO users(nombre, role_id) VALUES ('Eghon Amigo', 1);
INSERT INTO users(nombre, role_id) VALUES ('Fernanda Mora', 1);
INSERT INTO users(nombre, role_id) VALUES ('Lorenzo Verdugo', 1);
INSERT INTO users(nombre, role_id) VALUES ('Marietta Gonzalez', 1);
INSERT INTO users(nombre, role_id) VALUES ('Michel Valenzuela', 1);
INSERT INTO users(nombre, role_id) VALUES ('Nicolás Cárcamo', 1);

INSERT INTO users(nombre, role_id) VALUES ('Ewi', 2);
INSERT INTO users(nombre, role_id) VALUES ('Karl', 3);
INSERT INTO users(nombre, role_id) VALUES ('Maili', 4);
