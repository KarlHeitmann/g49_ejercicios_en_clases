input_data = [
  4.0,
  5.2,
  2.1,
  6.3,
  5.9,
  5.7,
  3.4,
]

notas = input_data.map {|inp| inp.to_f }

nota_maxima = 0.0
i_max = 0

notas.each_with_index do |nota, i|
  # if nota > maximo
  #   i
  if nota > nota_maxima
    nota_maxima = nota
    i_max = i
  end
end

puts "La nota más alta es: #{nota_maxima}"
puts "Esta se encuentra en la linea #{i_max + 1} del arreglo"

