numeros_general = [1,2,3,4,5,6,7,8,9,10]

def sumar_arreglo(numeros, i)
  if numeros[i].nil?
    return 0
  else
    return numeros[i] + sumar_arreglo(numeros, i + 1)
  end
end

# se = side effect
def sumar_arreglo_se(numeros)
  num = numeros.pop
  if num.nil?
    return 0
  else
    return num + sumar_arreglo_se(numeros)
  end
end

def sumador n
  if n.empty?
    return 0
  else
    return n.pop + sumador(n)
  end
end


puts sumar_arreglo(numeros_general, 0)
puts numeros_general
puts "======================"
puts sumar_arreglo_se(numeros_general)


puts ":::::::::::::..."
NUMEROS = [1,2,3,4,5,6,7,8,9,10]
NUMEROS = [4,3,2,1]
puts sumar_arreglo_se(NUMEROS)
puts NUMEROS
