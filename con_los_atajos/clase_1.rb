# Seleccionar solo las notas rojas
# ESTE ES EL EQUIVALENTE AL USO DE REJECT SELECT

notas = [4.0, 5.2, 2.1, 6.3, 5.9, 5.7, 3.4]

notas_rojas = notas.select {|nota| nota < 4.0 }



puts "Las notas que debe recuperar son: #{notas_rojas}"


