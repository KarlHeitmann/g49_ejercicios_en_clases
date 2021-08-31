datos = []
10000000.times {|d| datos.push(rand(0..100))}
# 10.times {|d| datos.push(rand(0..10))}
datos = [
  {
    foto_url: 'https....',
    titulo: 'Titulo',
    fecha_de_creacion: DateTime.now
  }
]
# datos = [6,4,3,5,8,7,2,1]
# datos = [6,4,3,5,8,7,2,1,9]
puts datos.count

datos_ordenados = []

datos.each do |d|
  if datos_ordenados.empty?
    datos_ordenados.push(d)
  else
    i = 0
    while i < datos_ordenados.length
      if d < datos_ordenados[i]
        # puts "#{i} - #{datos_ordenados}"
        datos_ordenados.insert(i, d)
        break
      end
      i += 1
    end
  end
  # puts "================="
end

puts ""

# puts datos_ordenados

