-- INNER JOIN
-- UNIR LAS TABLAS:
-- SELECT users.nombre, roles.nombre FROM users JOIN roles ON users.role_id = roles.id;
-- SELECT users.nombre, roles.nombre AS rol FROM users JOIN roles ON users.role_id = roles.id;
SELECT users.nombre, roles.nombre
FROM users
JOIN roles ON users.role_id = roles.id;

-- Sacar solo los estudiantes
-- SELECT users.nombre, roles.nombre FROM users JOIN roles ON users.role_id = roles.id WHERE roles.nombre = 'Estudiante';
SELECT users.nombre, roles.nombre
FROM users
JOIN roles ON users.role_id = roles.id
WHERE roles.nombre = 'estudiante';
