ARGV.each do |nombre|
  file_notas = File.open "#{nombre}.txt"
  lineas = file_notas.readlines
  print lineas
  puts
  puts lineas[0]

  lineas[1..-1].each do |linea|
    print "> #{linea}"
  end
end

