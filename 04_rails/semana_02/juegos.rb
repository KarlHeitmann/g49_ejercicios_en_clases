class Dado
  NUMEROS_POSIBLES = [1,2,3,4,5,6]

  def initialize
    @numero = NUMEROS_POSIBLES.sample
  end
end

class Carta
  @@pintas_posibles = []
  @@numeros_posibles = []

  def initialize
    @pinta = @@pintas_posibles.sample
    @numero = @@numeros_posibles.sample
  end

  def to_s
    return "#{@numero} - #{@pinta}"
  end
end

class CartaEspanola < Carta
  def initialize
    @@pintas_posibles = ['oros', 'copas', 'espadas', 'bastos']
    @@numeros_posibles = [1,2,3,4,5,6,7,10,11,12]
    super
  end
end

mano = []
5.times {|i| mano.push(CartaEspanola.new)}
puts mano