require_relative 'carta'

class CartaEspanola < Carta
  def initialize(numero, pinta)
    @pintas_posibles = ['oros', 'copas', 'espadas', 'bastos']
    @numeros_posibles = [1,2,3,4,5,6,7,10,11,12]
    super(numero, pinta)
  end
end


