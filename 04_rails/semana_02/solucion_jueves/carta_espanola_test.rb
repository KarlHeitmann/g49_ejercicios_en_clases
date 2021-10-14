require 'test/unit'
require_relative 'carta_espanola'

# Documentacion: https://docs.ruby-lang.org/en/2.1.0/MiniTest/Assertions.html

class TestCartaEspanola < Test::Unit::TestCase
    def test_method_to_s
      # carta = CartaEspanola.new('espadas', 10)
      carta = CartaEspanola.new(10, 'espadas')
      assert_equal(carta.to_s, "10 - espadas")
    end
end
