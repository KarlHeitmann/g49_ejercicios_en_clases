# Basicos

## Desde linea de comandos
Crear una BD
>$ createdb mi_db
Más información:
>$ createdb --help

Crear un usuario:
>$ createuser --interactive -P karl
--interactive indica que postgresql vaya preguntando las características del usuario
-P pide colocar una contraseña

Conectarse a mi_db
>$ psql -d mi_db

Para entrar con <nombre_usuario> a la base de datos <nombre_base_de_datos>
>$ psql -U nombre_usuario -d nombre_base_de_datos


## Desde prompt de la base de datos
se conecta a mi_bd
># \c mi_db
lista todas las bases de datos XXX: Mejor ocupar este
># \l

Lista todos los datos de la base de datos:
># SELECT datname FROM pg_database;

Listar todos los usuarios XXX: Mejor ocupar este
># \du

Todos los datos de todos los usuarios:
># SELECT * FROM pg_user;

# Privilegios
Una vez creados los usuarios, se pueden cambiar los permisos con los siguientes
comandos:
●Para dar acceso a todos los privilegios de una base de datos:
># GRANT ALL PRIVILEGES ON DATABASE database_name TO nombre_usuario;
●Para dar permiso de creación de una base de datos se usa:
># ALTER USER nombre_usuario CREATEDB;
●Para el caso de querer transformar al usuario en superuser:
># ALTER USER myuser WITH SUPERUSER;
●Remover el superusuario:
># ALTER USER username WITH NOSUPERUSER;


# Tipos de datos:

timestamp: estampilla de tiempo, contiene la fecha y la hora
date: fecha: solo tiene la fecha: dia, mes, año
time: hora del día: solo tiene hora, minuto, segundo
interval: intervalo de tiempo

smallint: pequeño entero de 2 bytes (16 bits), que cuenta hasta 65535
más detalles: https://www.postgresql.org/docs/current/datatype-numeric.html


# Cargar instrucciones de un fichero:
># \i ubicación\nombre_fichero.sql

# Copiar contenido de un CSV a una tabla:
># \copy nombre_tabla TO 'directorio/archivo.csv' csv header;

Crear un indice para una columna:
># CREATE INDEX nombre_indice on nombre_tabla(nombre_columna);

Preguntar qué columnas tienen índices en una tabla:
># SELECT * FROM pg_indexes WHERE tablename = nombre_tabla

Ver estilo de como introducir la fecha:

># show datestyle;