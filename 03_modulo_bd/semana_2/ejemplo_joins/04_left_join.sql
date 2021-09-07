-- LEFT JOIN
-- SELECT users.nombre, roles.nombre FROM users LEFT JOIN roles ON users.role_id = roles.id;
SELECT users.nombre, roles.nombre
FROM users
LEFT JOIN roles ON users.role_id = roles.id;


-- LEFT JOIN
-- Hace el left join pero, une las tablas, pero toma solo los usuarios sin rol
-- SELECT users.nombre, roles.nombre FROM users LEFT JOIN roles ON users.role_id = roles.id WHERE users.role_id IS NULL;
SELECT users.nombre, roles.nombre
FROM users
LEFT JOIN roles ON users.role_id = roles.id
WHERE users.role_id IS NULL;


-- Ocupando el left join a la inversa
-- SELECT users.nombre, roles.nombre FROM roles LEFT JOIN users ON users.role_id = roles.id;
SELECT users.nombre, roles.nombre
FROM roles
LEFT JOIN users ON users.role_id = roles.id;

