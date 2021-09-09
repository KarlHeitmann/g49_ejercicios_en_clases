BEGIN TRANSACTION;
INSERT INTO roles(nombre) VALUES ('nuevo');
INSERT INTO users(nombre, role_id) VALUES('Nuevo estudiante', (SELECT max(id) FROM roles));
--                                                                 INSERT INTO users(nombre, role_id) VALUES(1/0, (SELECT max(id) FROM roles));
COMMIT;

SELECT * FROM roles;
SELECT * FROM users;