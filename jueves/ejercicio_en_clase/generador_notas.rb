print ARGV
puts
puts ARGV.class

ARGV.each do |nombre|
  puts nombre
  archivo_notas = File.new "#{nombre}.txt", "w"
  archivo_notas.puts nombre
  cantidad_de_notas = rand(7..10)
  puts "cantidad_de_notas: #{cantidad_de_notas} para #{nombre}"
  cantidad_de_notas.times do |i|
    nota = rand(10..70) / 10.0
    archivo_notas.puts nota
  end
end
