NOMBRE_ARCHIVO_ENTRADA = 'notas.txt'
input_data = File.open NOMBRE_ARCHIVO_ENTRADA

notas = []

input_data.readlines.each do |line|
  notas.push line.to_f
end

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
puts "Esta se encuentra en la linea #{i_max + 1} del archivo #{NOMBRE_ARCHIVO_ENTRADA}"

