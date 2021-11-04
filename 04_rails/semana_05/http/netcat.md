https://nmap.org/download.html
wireshark -> sniffer
3 x + 1000 = 10000

Para correrlo:
> nc -l 1234

Hacerle una petición HTTP usando cURL:
> curl 127.0.0.1:1234

Respuesta simple en el terminal de netcat:

```
HTTP/1.1 200 OK
Content-Length: 10

123456789
```
(despues del 9 va un <enter>)
Observar en el terminal de cURL

Tambien se puede usar Postman y el firefox

Ejemplo del browser, usemos esto

```
HTTP/1.1 200 OK
Content-Length: 20

<HTML>7890123</HTML>
```

GET = Lectura
POST = Escritura: Insertar/Agregar
PUT = Escritura: Actualización/Editar
PATCH = Escritura: Actualización/Editar
DELETE = Escritura: Borrar
