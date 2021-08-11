# Transformas las notas rojas en false y las notas azules en true, en un nuevo arreglo llamado promedios_aprobados
# EQUIVALENTE A MAP

# CLEAN CODE

promedios = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

promedios_aprobados = promedios.map {|promedio| promedio >= 4}

puts "Los promedios son:   #{promedios}"
puts "Promedios aprobados: #{promedios_aprobados}"


