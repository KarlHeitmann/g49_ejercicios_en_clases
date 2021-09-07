-- HACE UN JOIN FULL COMPLETO, TOMANDO TODOS LOS DATOS

-- SELECT users.nombre, roles.nombre FROM users FULL OUTER JOIN roles ON users.role_id = roles.id;

SELECT users.nombre, roles.nombre
FROM users
FULL OUTER JOIN roles ON users.role_id = roles.id;

-- HACE UN JOIN FULL COMPLETO, PERO SOLO TOMA LOS QUE NO ESTAN RELACIONADOS
SELECT users.nombre, roles.nombre
FROM users
FULL OUTER JOIN roles ON users.role_id = roles.id
WHERE users.role_id IS NULL
OR roles.id IS NULL;

