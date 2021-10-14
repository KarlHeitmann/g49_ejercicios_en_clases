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

