require_relative 'carta'
require_relative 'carta_espanola'
require_relative 'carta_inglesa'
carta_1 = CartaInglesa.new(1, 'picas')
carta_2 = CartaInglesa.new(2, 'diamante')
puts carta_1
puts carta_2
carta_espanola = CartaEspanola.new(2, 'oros')
puts carta_espanola

