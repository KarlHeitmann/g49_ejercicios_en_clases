# Instrucciones

## Primera parte

Haga un programa `generador_notas.rb`, que dado un número indeterminado de argumentos
(puede ser 1 argumento, 2, 5, 10, 1000... indeterminado) haga lo siguiente:

- Considere que cada argumento representa el nombre de un alumno.
- Para cada nombre, el programa debe generar una cantidad de notas aleatorias (entre 7 y 10 notas). Las notas van del 1.0 como mínimo, al 7.0 como máximo
- Para cada nombre recibido, creará un archivo llamado "#{nombre}.txt".
- La primera línea del archivo "#{nombre}.txt" debe contener el nombre pasado como argumento
- Cada línea siguiente del archivo, debe contener una de las notas generadas.

Ejemplo:

El programa se corre así:

> ruby generador_notas.rb ada_lovelace alan_turing

El programa debe generar dos archivos, uno que se llame `ada_lovelace.txt` y otro que se llame `alan_turing.txt`

Si a ada_lovelace aleatoriamente le generó 7 notas, el contenido del archivo `ada_lovelace.txt` debe ser el siguiente:
```
ada_lovelace
6.9
7.0
6.7
6.8
6.9
7.0
6.5
```
Y el de `alan_turing.txt` sería:
```
alan_turing
6.7
6.9
...
```

Bien estudiosos salieron ellos dos :)

## Segunda parte

Haga un programa `notas_a_csv.rb` que dado un número indeterminado de argumentos considere lo siguiente:

- Cada argumento pasado lo interpretará como un nombre.
- Dado el programa que hizo en la sección "Primera parte", asumiremos que los archivos que se llamen
  "#{patron}.txt" tendrán un formato donde la primera línea es el nombre de la persona, y las siguientes
  "n" líneas tendrán las notas que se sacó la persona. Con esta suposición, el programa hará lo siguiente:
  - Creará un archivo llamado "promedio.csv", donde guardará en formato CSV (comma separated value) el nombre
    y el promedio de cada uno de los nombres pasados por el ARGV. Para que después el archivo pueda ser abierto
    por un software de hojas de cálculo, tal como el libre office speadsheets, el google docs, o el excel

## Pista

Para los desafíos del día de hoy, revise el método `.split` que tienen los strings de ruby. https://ruby-doc.org/core-2.7.2/String.html#method-i-split