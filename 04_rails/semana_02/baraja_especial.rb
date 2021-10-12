cartas_sacar = ARGV[0].to_i
puts cartas_sacar
class BarajaEspanola
  CARTAS_TOTALES = 40
  PINTAS_POSIBLES = ['oros', 'copas', 'espadas', 'bastos']
  NUMEROS_POSIBLE = [1,2,3,4,5,6,7,10,11,12]
  @@cartas = 0
  def initialize
    raise "Error: ya se han sacado todas las cartas" unless @@cartas < CARTAS_TOTALES
    @@cartas += 1
    @pinta = PINTAS_POSIBLES.sample
    @numero = NUMEROS_POSIBLE.sample
  end

  def to_s
    "#{@numero} #{@pinta}"
  end
end

cartas_sacar.times {|i| puts BarajaEspanola.new }
