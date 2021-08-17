ARGV.each do |nombre|
  output_data = File.open "#{nombre}.txt", 'w'

  output_data.print("#{nombre}\n")
  # output_data.print(nombre + "\n") # Equivalente a la linea anterior

  cantidad_de_notas = rand(7..10)

  cantidad_de_notas.times do
    output_data.puts(rand(10..70) / 10.0)
  end
end