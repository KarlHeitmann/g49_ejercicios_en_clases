archivo_promedios = File.new "promedio.csv", "w"
archivo_promedios.puts "nombre,promedio"

i = 0
while i < ARGV.length
  nombre = ARGV[i]
  archivo_notas = File.new "#{nombre}.txt"
  lineas = archivo_notas.readlines
  nombre_persona = lineas[0].chomp
  notas = lineas[1..-1]
  promedio = notas.reduce(0.0) {|sum, nota| sum + nota.to_f} / notas.length
  archivo_promedios.puts "#{nombre_persona},#{promedio.round 1}"
  i = i + 1
end