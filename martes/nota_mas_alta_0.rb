NOMBRE_ARCHIVO_ENTRADA = 'notas.txt'
input_data = File.open NOMBRE_ARCHIVO_ENTRADA

notas = []

input_data.readlines.each do |line|
  notas.push line.to_f
end

nota_maxima = 0.0
i_max = 0

i = 0
while i < notas.length
  if notas[i] > nota_maxima
    nota_maxima = notas[i]
    i_max = i
  end
  i += 1
end

puts "La nota más alta es: #{nota_maxima}"
puts "Esta se encuentra en la linea #{i_max + 1} del archivo #{NOMBRE_ARCHIVO_ENTRADA}"


