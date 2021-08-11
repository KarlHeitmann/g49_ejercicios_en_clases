# Seleccionar solo las notas rojas menor que 4
# ESTE ES EL EQUIVALENTE AL USO DE SELECT

notas = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

notas_rojas = notas.select {|nota| nota < 4.0 }

# NOTA: REJECT lo hace al vesre: devuelve un arreglo donde no se cumple
notas_azules = notas.reject {|nota| nota < 4.0 }

puts "Las notas que debe recuperar son: #{notas_rojas}"
puts "Las notas azules son: #{notas_azules}"


