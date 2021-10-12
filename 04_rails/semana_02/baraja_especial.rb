class BarajaEspanola
  CARTAS_TOTALES = 8
  @@cartas = 0
  def initialize
    raise "Error: ya se han sacado todas las cartas" unless @@cartas < CARTAS_TOTALES
    @@cartas += 1
    @pinta = ['oros', 'copas', 'espadas', 'bastos'].sample
    @numero = [1,2].sample
  end

  def to_s
    "#{@numero} #{@pinta}"
  end
end

8.times {|i| puts BarajaEspanola.new }
