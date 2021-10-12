# VARIANTE del desafío 2 "Baraja de cartas"
# Esto no es lo que se pide.

class Dado
  NUMEROS_POSIBLES = [1,2,3,4,5,6]

  def initialize
    @numero = NUMEROS_POSIBLES.sample
  end
end

class Carta

  def initialize(pinta=nil, numero=nil)
    @pintas_posibles = [] if @pintas_posibles.nil?
    @numeros_posibles = [] if @numeros_posibles.nil?
    if pinta.nil?
      @pinta = @pintas_posibles.sample
    else
      raise "Error: pinta no incluida. Escoja entre los siguientes valores: #{@pintas_posibles}" unless @pintas_posibles.include? pinta
      @pinta = pinta
    end
    if numero.nil?
      @numero = @numeros_posibles.sample
    else
      raise "Error: numero no incluida. Escoja entre los siguientes valores: #{@numeros_posibles}" unless @numeros_posibles.include? numero
      @numero = numero
    end
  end

  def self.pintas_posibles
    @pintas_posibles
  end

  def self.numeros_posibles
    @numeros_posibles
  end

  def to_s
    return "#{@numero} - #{@pinta}"
  end
end

class CartaEspanola < Carta
  def initialize(pinta=nil, numero=nil)
    @pintas_posibles = ['oros', 'copas', 'espadas', 'bastos']
    @numeros_posibles = [1,2,3,4,5,6,7,10,11,12]
    super(pinta, numero)
  end
end

class CartaInglesa < Carta
  def initialize(pinta=nil, numero=nil)
    @pintas_posibles = ['picas', 'corazones', 'diamantes', 'trebol']
    @numeros_posibles = [1,2,3,4,5,6,7,8,9,10,11,12]
    super(pinta, numero)
  end
end

mano_espanola = []
5.times {|i| mano_espanola.push(CartaEspanola.new)}
puts "Mano española:"
mano_espanola.each {|c| puts c}

mano_inglesa = []
5.times {|i| mano_inglesa.push(CartaInglesa.new)}
puts "Mano inglesa:"
mano_inglesa.each {|c| puts c}
