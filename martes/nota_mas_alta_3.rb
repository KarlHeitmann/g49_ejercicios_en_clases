NOMBRE_ARCHIVO_ENTRADA = 'notas.txt'
input_data = File.open NOMBRE_ARCHIVO_ENTRADA

notas = []

input_data.readlines.each do |line|
  notas.push line.to_f
end

nota_maxima = 0.0
i_max = 0

nota_maxima = notas.max

puts "La nota más alta es: #{nota_maxima}"
puts "Esta se encuentra en la linea #{notas.index(nota_maxima) + 1} del archivo #{NOMBRE_ARCHIVO_ENTRADA}"

