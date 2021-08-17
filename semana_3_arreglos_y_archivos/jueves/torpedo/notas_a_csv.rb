output_promedio_csv = File.open "promedio.csv", "w"
output_promedio_csv.puts "nombre,promedio"

ARGV.each do |nombre|
  file_notas = File.open "#{nombre}.txt"
  lineas = file_notas.readlines
  nombre = lineas[0].chomp #IMPORTANTE es el .chomp, borrelo y mire como queda el "promedio.csv". El .chomp se come el caracter de fin de linea
  notas = lineas[1..-1]

  promedio = notas.reduce(0.0) {|acc, nota| acc + nota.to_f}

  output_promedio_csv.puts "#{nombre},#{promedio}"
end

