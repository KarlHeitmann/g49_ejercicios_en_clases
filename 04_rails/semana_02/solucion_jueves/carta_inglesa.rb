require_relative 'carta'
require_relative 'jugar'

class CartaInglesa < Carta
  include Jugar
  attr_accessor :pinta, :numero
  def initialize(numero, pinta)
    @pintas_posibles = ['picas', 'trebol', 'corazon', 'diamante']
    @numeros_posibles = ['as',2,3,4,5,6,7,8,9,10,11,12]
    super(numero, pinta)
  end

  def poker_g49(oponente)
    if oponente.numero < @numero
      return 'ganador'
    elsif oponente.numero > @numero
      return 'perdedor'
    else
      if @pinta == 'picas'
        if oponente.pinta == 'picas'
          return 'empate'
        else
          return 'ganador'
        end
      elsif @pinta == 'trebol'
        if oponente.pinta == 'picas'
          return 'perdedor'
        elsif oponente.pinta == 'trebol'
          return 'empate'
        else
          return 'ganador'
        end
      elsif @pinta == 'corazon'
        if oponente.pinta == 'diamante'
          return 'ganador'
        elsif oponente.pinta == 'corazon'
          return 'empate'
        else
          return 'perdedor'
        end
      elsif @pinta == 'diamante'
        if oponente.pinta == 'diamante'
          return 'empate'
        else
          return 'perdedor'
        end
      end
    end
  end
end

