class Carta
  def initialize(numero, pinta)
    if @pintas_posibles.nil?
      @pintas_posibles = []
    end
    @numeros_posibles = [] if @numeros_posibles.nil?
    raise "ERROR!!!! numero incorrecto. Escoja uno de los siguientes valores: #{@numeros_posibles}" unless @numeros_posibles.include? numero
    raise "ERROR!!!! pinta incorrecta. Escoja uno de los siguientes valores: #{@pintas_posibles}" unless @pintas_posibles.include? pinta
    @numero = numero
    @pinta = pinta
  end

  def to_s
    "#{@numero} - #{@pinta}"
  end
end

class CartaEspanola < Carta
  def initialize(numero, pinta)
    @pintas_posibles = ['oros', 'copas', 'espadas', 'bastos']
    @numeros_posibles = [1,2,3,4,5,6,7,10,11,12]
    super(numero, pinta)
  end
end

class CartaInglesa < Carta
  def initialize(numero, pinta)
    @pintas_posibles = ['picas', 'trebol', 'corazon', 'diamante']
    @numeros_posibles = [1,2,3,4,5,6,7,8,9,10,11,12]
    super(numero, pinta)
  end
  def to_s
    "CARTA NAIPE INGLES: " + super
  end
end

carta_1 = CartaInglesa.new(1, 'picas')
carta_2 = CartaInglesa.new(2, 'diamante')
puts carta_1
puts carta_2
carta_espanola = CartaEspanola.new(2, 'oros')
puts carta_espanola
