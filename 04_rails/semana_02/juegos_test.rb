require 'test/unit'
require_relative 'juegos'

class TestAdd < Test::Unit::TestCase
    def test_add
      carta = CartaEspanola.new('espadas', 10)
      assert_equal carta.to_s, "10 - espadas"
      carta = CartaInglesa.new('picas', 10)
      assert_equal carta.to_s, "10 - picas"
    end
end