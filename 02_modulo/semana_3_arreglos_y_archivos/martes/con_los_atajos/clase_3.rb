# Seleccionar solo las notas rojas
# ESTE ES EL EQUIVALENTE AL USO DE REDUCE o INJECT

notas = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

# suma = notas.reduce(0.0) {|sum, nota| sum + nota }
suma = notas.inject() {|sum, nota| sum + nota } # Equivalente a la anterior

puts "La suma de todas las notas es: #{suma}"
puts "El promedio de las notas es: #{(suma/notas.length).round 1}"


