# Transformas las notas rojas en false y las notas azules en true, en un nuevo arreglo llamado promedios_aprobados
# EQUIVALENTE A MAP

promedios = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

i = 0

promedios_aprobados = []
puts "HOLA"

while i < promedios.length
  promedio = promedios[i]
  if promedio >= 4.0
    promedios_aprobados.push(true)
  else
    promedios_aprobados.push(false)
  end
  # puts "Nota #{i}: #{notas[i]}"
  i = i + 1
end

=begin
while i < promedios.length
  promedio = promedios[i]
  promedios_aprobados.push(promedio >= 4.0) # ESTO ES EQUIVALENTE AL BLOQUE ANTERIOR, DE LA LINEA 11 a la 20
  # puts "Nota #{i}: #{notas[i]}"
  i = i + 1
end
=end

puts "Los promedios son:   #{promedios}"
puts "Promedios aprobados: #{promedios_aprobados}"


