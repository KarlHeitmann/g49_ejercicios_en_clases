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



while i < notas.length
  if notas[i] > nota_mas_alta
    nota_mas_alta = notas[i]
    i_max = i
  end
  # puts "Nota #{i}: #{notas[i]}"
  i = i + 1
end

puts "La nota más alta es: #{nota_mas_alta}"
puts "El lugar en el array es: #{i_max}"


