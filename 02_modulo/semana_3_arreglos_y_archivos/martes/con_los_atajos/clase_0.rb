# notas = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]
notas = [
  4.0,
  5.2,
  2.1,
  6.3,
  5.9,
  5.7,
  3.4,
]

# print notas
# puts
# puts notas.length

i = 0
nota_mas_alta = 0
# indice_maximo = 0
i_max = 0


nota_maxima = notas.max

puts "La nota más alta es: #{nota_maxima}"
puts "Esta se encuentra en la linea #{notas.index(nota_maxima) + 1}"


