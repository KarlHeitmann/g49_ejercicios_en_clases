# Seleccionar solo las notas rojas (menor que 4)
# ESTE ES EL EQUIVALENTE AL USO DE REJECT SELECT

notas = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

i = 0

notas_rojas = []

while i < notas.length
  nota = notas[i]
  if nota < 4.0
    notas_rojas.push(nota)
  end
  # puts "Nota #{i}: #{notas[i]}"
  i = i + 1
end

puts "Las notas que debe recuperar son: #{notas_rojas}"


