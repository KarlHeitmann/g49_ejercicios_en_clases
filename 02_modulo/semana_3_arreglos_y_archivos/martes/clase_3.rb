# Seleccionar solo las notas rojas
# ESTE ES EL EQUIVALENTE AL USO DE REDUCE o INJECT

notas = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

i = 0

notas_rojas = []
suma = 0.0

while i < notas.length
  nota = notas[i]
  suma += nota
  # puts "Nota #{i}: #{notas[i]}"
  i = i + 1
end

puts "La suma de todas las notas es: #{suma}"
puts "El promedio de las notas es: #{(suma/notas.length).round 1}"


