input_data = File.open 'notas.txt'
output_data = File.open 'output.txt', 'w'

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
output_data.print(nota_maxima)
output_data.print("\n")
output_data.print(i_max + 1)
output_data.close # Es importante cerarr el archivo

