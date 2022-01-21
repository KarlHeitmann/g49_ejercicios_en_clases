numeros = [1,2,3,4,5,6,7,8,9,10]

# suma = 0
# numeros.each do |n|
#   suma += n
# end

def suma_recursiva(ns)
  if ns.empty?
    return 0
  else
    # ns[0] + suma_recursiva(ns[1..-1]) # Este es el bueno
    ns[0] + suma_recursiva(ns[0..-1])
  end
end

puts suma_recursiva(numeros)