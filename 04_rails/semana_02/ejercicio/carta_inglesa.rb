require_relative 'carta'
require_relative 'jugar'

class CartaInglesa < Carta
  include Jugar
  attr_accessor :numero, :pinta
  def initialize(numero, pinta)
    @pintas_posibles = ['picas', 'trebol', 'corazon', 'diamante']
    @numeros_posibles = [1,2,3,4,5,6,7,8,9,10,11,12]
    super(numero, pinta)
  end

  def calcular_puntaje
    puntaje_pinta = 0
    if @pinta == 'picas'
      puntaje_pinta = 4
    elsif @pinta == 'trebol'
      puntaje_pinta = 3
    elsif @pinta == 'corazon'
      puntaje_pinta = 2
    else
      puntaje_pinta = 1
    end
    return puntaje_pinta
  end

  def poker_g49(oponente)

    if @numero > oponente.numero
      return "ganador"
    elsif @numero < oponente.numero
      return "perdedor"
    else
      if calcular_puntaje > oponente.calcular_puntaje
        return "ganador"
      elsif calcular_puntaje < oponente.calcular_puntaje
        return "perdedor"
      else
        return "empate"
      end
    end
  end
end

carta_ganadora = CartaInglesa.new(10, 'diamante')
carta_perdedora = CartaInglesa.new(3, 'diamante')
resultado_del_juego = carta_ganadora.poker_g49(carta_perdedora)
puts resultado_del_juego
