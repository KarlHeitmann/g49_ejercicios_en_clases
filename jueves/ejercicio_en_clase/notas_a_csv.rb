print ARGV
puts
puts ARGV.class

recordatorio = gets.chomp
puts "recordatorio: #{recordatorio}"
archivo_promedios = File.new "promedio.csv", "w"
archivo_promedios.puts "nombre,promedio"

i = 0
while i < ARGV.length
  nombre = ARGV[i]
  archivo_notas = File.new "#{nombre}.txt"
  lineas = archivo_notas.readlines
  nombre_persona = lineas[0]
  puts "nombre_persona: #{nombre_persona}"
  print "#{lineas}"
  puts
  notas = lineas[1..-1]
  puts "las notas de las persona fueron: #{notas}"
  promedio = notas.reduce(0.0) {|sum, nota| sum + nota.to_f} / notas.length
  puts "el promedio es: #{promedio}"
  archivo_promedios.puts "#{nombre_persona},#{promedio}"
  i = i + 1
end