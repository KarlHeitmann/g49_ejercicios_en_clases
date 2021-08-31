data = [1,2,3,4,5,6,7,8,9,10]

i = 0
sum = 0
while i < data.length
  sum = sum + data[i]
  i += 1
end
puts "While: #{sum} de #{data}"

def sumador n
  if n.empty?
    return 0
  else
    return n.pop + sumador(n)
  end
end

suma_recursiva = sumador data # ¿Que pasa aqui? ver .pop, y la diferencia entre .slice y .slice!
# suma_recursiva = sumador Array.new(data)
puts " ======= Suma recursiva: #{suma_recursiva} de #{data}"

data_2 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

def sumador_2 data, i
  if data[i].nil?
    return 0
  else
    return data[i] + sumador_2(data, i + 1)
  end
end

suma_recursiva_2 = sumador_2 data_2, 0

puts "Suma recursiva2: #{suma_recursiva_2} de #{data_2}"


