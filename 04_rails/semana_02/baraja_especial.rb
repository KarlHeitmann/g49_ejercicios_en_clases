cartas_sacar = ARGV[0].to_i
puts cartas_sacar
class BarajaEspanola
  PINTAS_POSIBLES = ['oros', 'copas', 'espadas', 'bastos']
  NUMEROS_POSIBLE = [1,2,3,4,5,6,7,10,11,12]
  @@cartas = []
  def initialize
    @pinta = PINTAS_POSIBLES.sample
    @numero = NUMEROS_POSIBLE.sample
    carta_sacada = {pinta: @pinta, numero: @numero}
    raise "Error: ya se ha sacado esta carta" if @@cartas.include? carta_sacada
    @@cartas << carta_sacada
  end

  def to_s
    "#{@numero} #{@pinta}"
  end
end

cartas_sacar.times {|i| puts BarajaEspanola.new }
