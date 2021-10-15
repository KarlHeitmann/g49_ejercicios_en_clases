require 'test/unit'
require_relative 'carta_inglesa'

# Documentacion: https://docs.ruby-lang.org/en/2.1.0/MiniTest/Assertions.html

class TestCartaInglesa < Test::Unit::TestCase
    def test_add
      carta = CartaInglesa.new(10, 'corazon')
      assert_equal(carta.to_s, "10 - corazon")
    end
    def test_jugar_numero_mayor
      carta_ganadora = CartaInglesa.new(10, 'diamante')
      carta_perdedora = CartaInglesa.new(3, 'diamante')
      assert_equal(carta_ganadora.poker_g49(carta_perdedora), 'ganador')
    end
    def test_jugar_numero_menor
      carta_perdedora = CartaInglesa.new(2, 'trebol')
      carta_ganadora = CartaInglesa.new(3, 'diamante')
      assert_equal(carta_perdedora.poker_g49(carta_ganadora), 'perdedor')
    end
    def test_jugar_igual_empate
      carta_empate_1 = CartaInglesa.new(5, 'diamante')
      carta_empate_2 = CartaInglesa.new(5, 'diamante')
      assert_equal(carta_empate_1.poker_g49(carta_empate_2), 'empate')
    end
    def test_jugar_igual_ganador
      carta_ganadora = CartaInglesa.new(5, 'trebol')
      carta_perdedora = CartaInglesa.new(5, 'corazon')
      assert_equal(carta_ganadora.poker_g49(carta_perdedora), 'ganador')
    end
    # def test_con_as
    #   carta_ganadora = CartaInglesa.new('as', 'diamante')
    #   carta_perdedora = CartaInglesa.new(10, 'diamante')
    #   assert_equal(carta_ganadora.poker_g49(carta_perdedora), 'ganador')
    # end
end


